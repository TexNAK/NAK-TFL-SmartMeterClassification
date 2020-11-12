\pagebreak
\pagenumbering{roman}
\setcounter{page}{4}

\section*{Literature}
\addcontentsline{toc}{section}{Literature}

<div id="refs"></div>

\pagebreak
\appendix
\section*{Appendix}
\addcontentsline{toc}{section}{Appendix}
\renewcommand{\thesubsection}{\Alph{subsection}}

## Data samples

### Example data returned by interface {#sec:example-data}

```bash
# HELP power_current_usage_kW Power consumption of the household
# TYPE power_current_usage_kW gauge
power_current_usage_kW 0.18


# HELP power_phase_voltage_volts Power grid voltage per phase
# TYPE power_phase_voltage_volts gauge
power_phase_voltage_volts{phase="L1"} 231.8
power_phase_voltage_volts{phase="L2"} 231.9
power_phase_voltage_volts{phase="L3"} 230.0


# HELP power_phase_load_amps Household load per phase
# TYPE power_phase_load_amps gauge
power_phase_load_amps{phase="L1"} 0.43
power_phase_load_amps{phase="L2"} 0.70
power_phase_load_amps{phase="L3"} 0.63


# HELP power_usage_total_kWh Accumulated power usage
# TYPE power_usage_total_kWh counter
power_usage_total_kWh{tarif="overall"} 678.7
power_usage_total_kWh{tarif="1"} 244.7
power_usage_total_kWh{tarif="2"} 213.8
power_usage_total_kWh{tarif="3"} 74.0
power_usage_total_kWh{tarif="4"} 145.9
```
