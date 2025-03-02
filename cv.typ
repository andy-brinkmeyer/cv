#import "utils.typ"

#set page(
  paper: "a4",
  numbering: "1 / 1",
  number-align: center,
  margin: 1.25cm
)

#set text(
  font: "Libertinus Serif",
  size: 10pt,
  hyphenate: false
)

#set list(
  spacing: 6pt
)

#set par(
  leading: 6pt,
  justify: true
)

// Uppercase section headings
#show heading.where(
    level: 2,
): it => block(width: 100%)[
    #v(0pt)
    #set align(left)
    #set text(size: 1em, weight: "bold")
    #upper(it.body)
    #v(-0.75em) #line(length: 100%, stroke: 1pt + black)
]

// Name title/heading
#show heading.where(
    level: 1,
): it => block(width: 100%)[
    #set text(size: 1.5em, weight: "bold")
    #upper(it.body)
    #v(2pt)
]

#align(center)[
  = Andy Brinkmeyer

  #block(width: 100%)[
    *Software Engineer*
    #v(-4pt) 
  ]

  #block(width: 100%)[
    Munich, Germany
    #v(-4pt) 
  ]

  #let mail = box(link("mailto:andy.brinkmeyer@gmail.com"))
  #let phone = box(link("tel:(+49) 162 4152173"))
  #let linkedin = box(text(blue)[#link("https://linkedin.com/in/andy-brinkmeyer")[LinkedIn]])
  #let profiles = (mail, phone, linkedin)
  #pad(x: 0em)[
    #set text(weight: "medium")
    #profiles.join([#sym.space.en #sym.diamond.filled #sym.space.en])
  ]
]

#block[
  == Work Experience

  #block(width: 100%, breakable: true)[
    *#link("https://arculus.de")[arculus GmbH]* #h(1fr) *Munich, Germany*

    #block(width: 100%, breakable: true, above: 0.6em)[
      #let start = utils.strpdate("2023-01-01")
      #let end = "present"
      #text(style: "italic")[Software Engineer] #h(1fr) #utils.daterange(start, end)

      Working on a novel master control system for fleets of autonomous mobile robots, fully written in *#emph("Rust")*. I built the first prototype and developed it with my team into a robust production system in just over a year, that already runs at customers.

      - Developed graph-based algorithms for preventing deadlocks between vehicles in large fleets *#text(style: "italic")[(Rust)]*
      - Designed and implemented our scalable Kubernetes-based simulation system, capable of simulating hundreds of fleets at the same time, used extensively by project engineers to evaluate opportunities and fine-tune layouts for project commissioning *#text(style: "italic")[(Rust)]*
      - Implemented a deterministic re-simulation approach that allows developers to investigate issues reported by customers much quicker than using conventional methods, presented at *#emph(text(blue)[#link("https://youtu.be/ao-CLgci-e8?si=C2SUibtwsYeThRAl")[Oxidize Conf 2024]])*
      - Developed our internal integration test framework that allows setting up and testing complex scenarios using simulated robots using just high-level directives, acting as a cornerstone of our testing and regression strategy *#emph("(Rust)")*
      - Designed and built a platform for collecting diagnostic data from deployed robot fleets, enabling first-level support to identify common issues without requiring support from domain-experts *#text(style: "italic")[(Rust, MongoDB, MinIO)]*
      - Developed an obstacle avoidance module for our mobile robots *#text(style: "italic")[(C++)]*
    ]
  ]

  #v(0.6em)
  #block(width: 100%, breakable: true)[
    *Airbus Defence and Space* #h(1fr) *Manching, Germany*

    #block(width: 100%, breakable: true, above: 0.6em)[
      #let start = utils.strpdate("2021-06-01")
      #let end = utils.strpdate("2022-12-31")
      #text(style: "italic")[Software Engineer] #h(1fr) #utils.daterange(start, end)

      Worked on a mission system for commanding semi-autonomous UAVs using high-level directives from manned fighter jets.

      - Implemented a flightpath-planning algorithm for reconnaissance of enemy air defense utilizing multiple UAVs at the same time to improve speed and accuracy, was successfully flight tested *#emph("(Ada)")*
      - Developed tooling for re-simulation of the mission computer that significantly decreased time for reproducing bugs observed during flight tests and HIL testing *#emph("(C++)")*
      - Built a tool for analyzing recordings of mission computers network traffic *#emph("(Python)")*
    ]
  ]

  #v(0.6em)
  #block(width: 100%, breakable: true)[
    *Airbus* #h(1fr) *Hamburg, Germany*

    #block(width: 100%, breakable: true, above: 0.6em)[
      #let start = utils.strpdate("2020-09-01")
      #let end = utils.strpdate("2021-05-31")
      #text(style: "italic")[Data Analyst] #h(1fr) #utils.daterange(start, end)

      Analyzed manufacturing data to support engineering and manufacturing teams.

      - Built pipelines for analyzing data at the terabyte scale using Apache Spark *#emph("(Python)")*
      - Built interactive dashboards for internal clients to visualize the data
    ]
  ]
]

#block[
  == Conference Talks

  #block(width: 100%, breakable: true)[
    *Oxidize Conference* #h(1fr) *Berlin, Germany* \
    Deterministic fleet management for autonomous mobile robots using Rust #h(1fr) May 2024 \
    *#emph(text(blue)[#link("https://youtu.be/ao-CLgci-e8?si=C2SUibtwsYeThRAl")[YouTube]])*
  ]
]

#block[
  == Education

  #block(width: 100%, breakable: true)[
    #let start = utils.strpdate("2019-09-01")
    #let end = utils.strpdate("2020-09-30")

    *University College London* #h(1fr) *London, United Kingdom* \
    #emph("M.Sc. Computer Science") #h(1fr) #utils.daterange(start, end) \
    - *Final Grade:* Distinction
    - *Masters Project:* Implementation and Simulation-based Evaluation of Visual-Inertial Sensor Fusion for an Optical Motion Capture System
  ]

  #block(width: 100%, breakable: true)[
    #let start = utils.strpdate("2018-09-01")
    #let end = utils.strpdate("2018-12-31")

    *University of Michigan* #h(1fr) *Ann Arbor, Michigan, USA* \
    #emph("Exchange Semester") #h(1fr) #utils.daterange(start, end)
  ]

  #block(width: 100%, breakable: true)[
    #let start = utils.strpdate("2015-09-01")
    #let end = utils.strpdate("2019-08-31")

    *HAW Hamburg* #h(1fr) *Hamburg, Germany* \
    #emph("B.Eng. Aeronautical Engineerng") #h(1fr) #utils.daterange(start, end) \
    - *Final Grade:* 1.13
  ]
]

#pagebreak()
#block[
  == Languages and Skills

  - *Languages:* German (Native Speaker), English (Proficient), French (Basics)
  - *Programming Languages:* 
    - Rust (Love it, working with it on a daily basis)
    - C++ (Worked a lot with it)
    - Python (Use it a lot for scripting)
    - Ada (Worked with it, can read and write with use of documentation)
    - JavaScript/TypeScript (Implemented some small web application with it)
  - *Other Technologies (non-exhaustive)*
    - Kubernetes, Helm, FluxCD (Actively working with it on application level)
    - Docker (Actively using on a daily basis for building and using containerized applications)
    - PotsgreSQL, MongoDB, Redis (Actively working with it)
    - Gitlab CI/CD (Actively using it for building CI/CD workflows)
]
