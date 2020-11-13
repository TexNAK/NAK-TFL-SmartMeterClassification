---
    header-title: Transfer paper 5
    title: What electricity usage can tell about private households

    author: Til Blechschmidt
    Zenturie: A17a
    Studiengang: Angewandte Informatik
    Matrikelnummer: 8240

    # This can be replaced with any valid bibliography file (.yaml, .json, .bib)
    bibliography: src/bibliography.json

    lang: en

    figPrefix:
      - "figure"
      - "figures"

    secPrefix:
      - "section"
      - "sections"

    lof: true
    linestretch: 1.25
---

# Introduction

In todays modern world, electricity is being used everyday, everywhere, by everyone. Long distance transportation via train, short distance transportation through an elevator, lighting, cooking, and even entertainment all relies on it. Technology and thus electricity is omnipresent. The typical daily routine incorporates at least a dozen different pieces of technology where each and every one uses it.

For this reason, it is not surprising that knowing which appliances a person uses can uncover a surprising amount of information about their lifes. Starting with the daily routine including cooking habits, entertainment usage, sleep-, work-, and eating-schedules. The list goes on with habits like ones diet, shower temperature preferences, or even religious alignment.

With the advent of the internet topics like big data and personal profiling became more prevailing. Social networks are far ahead in collecting personal data, preferences and habits. They are using it to show filtered information feeds and to do targeted advertising. External entities which gained access to this data even used it to perform large scale manipulations of elections [TODO SOURCE CAMBRIDGE ANALYTICA].

Knowing which appliances an individual uses thus poses a significant privacy risk. Since most appliances use electricity, having access to the household power consumption data may allow foreign parties to run an analysis on it to determine which appliances are in use. This could then be monitored to derive personal information like routines, habits and preferences. Having access to this data may allow grid providers to optimize their deliver. On the flip side, it may allow an evil spirited attacker to for example manipulate the target.

However, this requires a method to clearly discern individual appliances by looking at the electricity data. Finding out which appliances can be identified is going to be the goal of this research paper. The primary research question will be: "Which appliances provide a characteristic and isolatable power profile?". To answer it, existing research will be evaluated and based on the information gathered an analysis of the authors private household will be performed using inexpensive off-the-shelve electronics equipment. The latter is known as (+NIALM) in most existing research [@inexpensiveClassification].

\pagebreak
