#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/big-todo:0.2.0": *

= Test Plans
#col[
  == System Usability Scale Evaluation
  === Methodology
  / Participants: Nine participants (N=9) were recruited for this evaluation, representing a convenience sample with the following composition:

  *50% (n≈4-5):* Students who had completed the target university computer animation course\
  *25% (n≈2):* Participants with technical understanding but no formal computer animation training\
  *25% (n≈2):* Participants with no prior technical or computer animation experience

  ==== Instrument
  The standard 10-item SUS questionnaire was employed, utilizing a 5-point Likert scale (1 = Strongly Disagree, 5 = Strongly Agree). SUS scores are calculated by converting responses to a 0-4 scale, summing the adjusted scores, and multiplying by 2.5 to yield a final score ranging from 0-100 (Brooke, 1996).
  ==== Data Collection and Analysis
  Participants completed the SUS questionnaire following interaction with the web-based computer animation learning application. Individual SUS scores were calculated according to standard procedures, and descriptive statistics were computed for the sample.
  === Results
  / SUS Score Distribution: Individual participant SUS scores ranged from 60.0 to 82.5, with the following distribution:

  - Mean: 74.2
  - Standard Deviation: 6.8
  - Median: 75.0
  - Range: 22.5

  / Comparative Analysis: The obtained mean score of 74.2 exceeds the established SUS benchmark of 68 (Sauro, 2011) by approximately 0.5 standard deviations, suggesting above-average perceived usability.

  === Statistical Significance and Validity Considerations
  ==== Statistical Power Limitations
  The current study faces substantial limitations regarding statistical power and significance testing. With N=9, the study lacks sufficient power to detect meaningful differences between user groups or to establish statistical significance of the observed scores. For adequate statistical power (0.8) with $alpha$ = 0.05 and medium effect size (Cohen's d = 0.5), approximately 17-20 participants would be required for between-group comparisons (Lewis & Sauro, 2009). The current sample size provides power of approximately 0.3-0.4, substantially below conventional thresholds.

  ==== External Validity Constraints
  Several factors limit the generalizability of these findings:

  / Sample Size Limitations: The small sample (N=9) severely restricts external validity and statistical inference capability. Industry standards recommend minimum sample sizes of 15-20 participants for usability evaluations to achieve meaningful statistical power.

  / Sampling Bias: The convenience sample may not represent the broader population of potential users for computer animation learning applications.

  / User Expertise Distribution: While the 50/25/25 distribution across expertise levels provides some diversity, the small absolute numbers (≈4-5, ≈2, ≈2) prevent meaningful subgroup analyses or comparisons between user categories.
  / Context Specificity: Results are specific to this particular computer animation learning application and may not generalize to other educational technologies or animation software platforms.

  === Methodological Limitations
  The study employs only the SUS instrument, which provides a unidimensional usability measure. As noted by Brooke (1996), this one-dimensional aspect of the SUS is both a benefit and a drawback because the questionnaire is necessarily quite general. Additional measures such as task completion rates, error frequencies, and learning curves would provide more comprehensive usability assessment.

  === Interpretation Guidelines
  The mean SUS score of 74.2 indicates good perceived usability, falling within the "acceptable" range according to established SUS benchmarks. However, given the methodological limitations outlined above, these results should be interpreted as preliminary findings that provide encouraging initial feedback rather than definitive conclusions about the application's usability effectiveness.
  The application shows promise for supporting computer animation education across diverse user expertise levels, but validation through larger, more systematically sampled studies is required before drawing generalizable conclusions.

  === Fit Criterion
  / Minimum Sample Size: Future evaluations shall include at least 15-20 participants to achieve adequate statistical power for usability assessment.

  / SUS Score Target: The application shall maintain a mean SUS score above 70 (above-average usability) across diverse user populations.

  / Subgroup Analysis: Sufficient sample sizes within each expertise category (minimum n=8 per group) shall be maintained to enable meaningful between-group comparisons.

  === Considerations
  This evaluation represents a preliminary assessment using industry-standard methodology. While the results indicate above-average perceived usability, the small sample size necessitates cautious interpretation. Expansion of the evaluation to include larger, more representative samples and supplementary usability measures is recommended for comprehensive validation of the application's usability characteristics @sauroPracticalGuideSystem2011 @brookeSUSQuickDirty1995 @lewisFactorStructureSystem2009.


  == Acceptance Report
  === Project Outcome
  The project *Dumpster-Diving* consists of a playable application with a node-based editor that allows users to design in-game mechanics through visual scripting elements (see DDFR5, DDFR11).

  The demonstrator outcome includes:
  - *Playable application* with core game mechanics (see DDFR5, DDFR6, DDFR7, DDFR8)
  - *Node editor* for modifying and expanding the game (see DDFR11, DDFR12, DDFR13)
  - *User interface (UI/UX)* for intuitive interaction (see DDFR1, DDFR3, DDFR14)
    - including menu system, options and landing page (see DDFR1, DDFR3)
  #colbreak()
  - *Documentation and help system* to support users (see DDFR14, DDFR15, DDFR17)
  - *Testing system* to ensure functionality (see DDFR10)

  === Successful Acceptance
  The project is considered successfully accepted if the following criteria are met:

  ==== Playable Application
  - The game starts without errors and runs stably.
  - Core game mechanics function correctly (e.g., character control, collision detection, level transitions).
  - The player can navigate through the game and interact with the environment.

  ==== Node Editor
  - Users can modify game mechanics through the node environment (see DDFR11, DDFR13)
  - The node structure is correctly validated (no cycles, faulty connections are detected) (see DDFR12)
  - Changes to the node structure affect the game accordingly (see DDFR13)

  ==== User Interface (UI/UX)
  - The interface is intuitively usable (see DDFR1, DDFR3, DDFR14)
  - All UI elements function correctly and respond to user input (see DDFR1, DDFR3)

  ==== Documentation & Help System
  - Documentation for key features is available (see DDFR15)
  - An integrated help function assists users in working with the node editor (see DDFR14)

  ==== Testing System
  - Unit tests exist for core functionalities (see DDFR10)
  - At least 80% of the defined tests pass successfully (see DDFR10)

  === Test Cases
  The acceptance process is based on the following tests:

]
#pagebreak()


#table(
  columns: 4,
  table-header("Test Nr.", "Description", "Expected Result", "Pass/Fail Criteria"),
  [1],
  [Does the application run without errors?],
  [Application runs without crashing.],

  [*Pass*: Yes / *Fail*: No],

  [2],
  [Are all required and selected game mechanics implemented?],
  [All required and selected mechanics are implemented and usable.],

  [*Pass*: Yes / *Fail*: No],
  [3],
  [Can nodes be used for game control?],
  [All required nodes to solve the puzzles are implemented. Changes in nodes affect the game in the intended way (see DDFR11, DDFR13).],

  [*Pass*: Yes / *Fail*: No],
  [4],
  [Is there documentation available?],
  [Documentation for all node types is available and understandable. At least 50% of the covered topics is documented (see DDFR15, DDFR17).],

  [*Pass*: Yes / *Fail*: No], [5], [Do the automated tests pass?], [At least 80% of unit tests pass (see DDFR10).],
  [*Pass*: Yes / *Fail*: No],
)

#col[
  === Acceptance Process
  - Initial acceptance is carried out by group members, findings are documented.
  - Final acceptance is carried out by the supervisor after a live demo of the project.
  - If a test fails, there is a 7-day period for corrections.
  - After successful acceptance, grading is based on predefined criteria.
  === Findings
  - 100% of unit tests pass.
  - All node types are documented.
  - All CA topics are documented.
  #colbreak()
  - All required nodes are implemented.
  - No crashes were observed during testing.
  - All required mechanics are implemented.
  === Remarks
  - No game breaking bugs were found.
  === Responsible Parties:
  - *Project Lead:* Milan Jezovsek
  - *Project Team:* Markus Heming, David Klein, Jonathan Kron, Milan Jezovsek, Philipp Wendt, Leo Kling
]
// == Features to be tested / not to be tested
// == Pass/Fail Criteria
// == Approach
// == Suspension and resumption
// == Testing materials ( hardware / software requirements )
// == Test cases
// == Testing schedule
