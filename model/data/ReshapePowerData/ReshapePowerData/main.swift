//
//  main.swift
//  ReshapePowerData
//
//  Created by Til Blechschmidt on 14.10.20.
//

import Foundation

let referenceDate = Date(timeIntervalSince1970: 1601596800) // 2.10.20
let path = "/Users/themegatb/Projects/Studies/TFL/NAK-TFL-SmartMeterClassification/model/data/raw.txt"
let rawData = try! String(contentsOfFile: path)
let rawSamples = rawData.components(separatedBy: "------")

enum ValueIdentifiers {
    static let currentUsage = "power_current_usage_kW"
    static let voltage = "power_phase_voltage_volts"
    static let load = "power_phase_load_amps"
    static let total = "power_usage_total_kWh"
}

struct PhaseSample {
    let voltage: Double
    let load: Double
}

func parse(sampleValue: String) -> Double? {
    var firstDotEncountered = false
    
    guard sampleValue.allSatisfy({ $0.isNumber || $0 == "." }) else {
        return nil
    }
    
    let cleanedValue = sampleValue.filter {
        let result = $0.isNumber || (!firstDotEncountered && $0 == ".")
        
        if $0 == "." {
            firstDotEncountered = true
        }
        
        return result
    }
    
    return Double(cleanedValue)
}

var x = 0

struct Sample {
    let timestamp: Date
    let powerUsage: Double
    let phases: [PhaseSample]
    
    init?(from raw: String) {
        var lines = raw.components(separatedBy: .newlines)
            .filter {
                !$0.hasPrefix("#") && $0.trimmingCharacters(in: .whitespacesAndNewlines).count > 0
            }
        
        guard lines.count == 13 else {
            print("Sample does not contain expected number of lines")
            return nil
        }
        
        let rawTimestamp = lines.remove(at: 0).components(separatedBy: " ")
        
        let rawValueMap: [String: String] = lines.reduce(into: [:]) { acc, value in
            let components = value.components(separatedBy: " ")
            assert(components.count == 2, "Sample value did not adhere to specification")
            
            let key = components[0]
            let value = components[1]
            
            acc[key] = value
        }
        
        timestamp = Date(timeIntervalSince1970: TimeInterval(rawTimestamp[0])!)
        
        guard let powerUsage = parse(sampleValue: rawValueMap[ValueIdentifiers.currentUsage]!) else {
            print("Sample does not contain valid power usage value")
            return nil
        }
        
        self.powerUsage = powerUsage
        var phases: [PhaseSample] = []
        
        for i in (1...3) {
            let phase = "L\(i)"
            let voltageKey = "\(ValueIdentifiers.voltage){phase=\"\(phase)\"}"
            let loadKey = "\(ValueIdentifiers.load){phase=\"\(phase)\"}"
            
            guard let voltage = parse(sampleValue: rawValueMap[voltageKey]!), let load = parse(sampleValue: rawValueMap[loadKey]!) else {
                print("Sample does not contain valid voltage/load value for phase \(i)")
                return nil
            }
            
            if load > 80 {
                print("Sample contains unreasonably high loads for phase \(i)")
                return nil
            }
            
            phases.append(PhaseSample(voltage: voltage, load: load))
        }
        
        self.phases = phases
    }
}

extension Sample {
    static let csvHeader = "time;time stamp;usage;load L1;voltage L1;load L2;voltage L2;load L3;voltage L3"
    
    var csvRow: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        
        let timestamp = self.timestamp.timeIntervalSince(referenceDate)
        let time = formatter.string(from: self.timestamp)
        let usage = self.powerUsage
        let phases = self.phases.reduce("") {
            $0 + ";\($1.load);\($1.voltage)"
        }
        
        return "\(time);\(timestamp);\(usage)\(phases)"
    }
}

print(rawSamples.count)

let samples = rawSamples.compactMap { Sample(from: $0) }

var sampleGroups: [[Sample]] = []
var currentGroup: [Sample] = []
var previousTimestamp = referenceDate

for sample in samples {
    if Calendar.current.compare(previousTimestamp, to: sample.timestamp, toGranularity: .day) != .orderedSame {
        sampleGroups.append(currentGroup)
        currentGroup = []
    }
    
    currentGroup.append(sample)
    previousTimestamp = sample.timestamp
}

sampleGroups.append(currentGroup)

func write(samples: [Sample], to filename: String) {
    let csv = Sample.csvHeader + "\n" + samples.map({ $0.csvRow }).joined(separator: "\n")
    let out = "/Users/themegatb/Projects/Studies/TFL/NAK-TFL-SmartMeterClassification/model/data/processed/\(filename).csv"

    try! csv.write(toFile: out, atomically: false, encoding: .utf8)
}

for (dayIndex, sampleGroup) in sampleGroups.enumerated() {
    write(samples: sampleGroup, to: "day-\(dayIndex)")
}

write(samples: samples, to: "combined")
