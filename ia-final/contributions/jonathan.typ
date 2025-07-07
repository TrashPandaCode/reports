#pagebreak()
== Contributions of Jonathan Kron

Both I and the other members of the group dedicated significant time and effort to the planning, conceptualization, and documentation phases — this was understood as a shared responsibility. However, I would like to direct the focus specifically on my contributions during the development phase, as the actual workload I undertook — documented in @jonathan_dev_phase — differs substantially from the tasks originally assigned to me.

According to the initial project planning, I was designated the role of `Programmer: Visual Scripting`, meaning I was to focus my development efforts on the node system. Consequently, I was formally assigned responsibility for the `Node Execution` work package.

Additionally, I was listed as a contributing human resource in the following work packages: `Proof of Concept`, `First Prototype`, `Node Types`, `Node Execution`, `Unit Tests`, `User Testing` and `Help Tool`.

As the project progressed, it became necessary for me to independently develop substantial portions of the `Node Types`, `Node Execution`, `Unit Tests` and `Help Tool` work packages. This shift was largely driven by time constraints and the absence of key team members. Accelerating the completion of these components allowed me to redirect my efforts towards `Game Creation` specific tasks, which were falling behind schedule and required additional attention to meet project deadlines.

=== Time Tracking Methodology<jonathan_time_methodology>

To avoid overestimating the actual time I dedicated to the project and its associated tasks, I have intentionally adopted a conservative approach to time estimation. Specifically, I employ pessimistic estimates for all untracked efforts to ensure that my reported contributions do not exceed the time actually spent.

For programming-related work carried out prior to the start of formal time logging, I utilize a proven Git-based time estimation algorithm, as detailed in @jonathan_est_tracked_efforts. To validate the reliability of this method, its output is compared against the formally logged time data recorded from June 2nd onward in @jonathan_dev_phase. This cross-comparison serves as a calibration step to assess the consistency and accuracy of the algorithm.

==== Estimation of Untracked Efforts

To estimate untracked efforts — such as work conducted in Typst, Figma, or via Discord — comparisons between the resulting output of these tasks and similar activities for which the time expenditure is known are drawn in @jonathan_plan_phase and @jonathan_des_phase. This is possible because most tasks completed in the planning and conceptualization phases have equivalents in later stages. Concept drawings can be compared to assets I created and the creation of planning and presentation-related documents to documents written during the documentation phase.

==== Estimation of Tracked Efforts<jonathan_est_tracked_efforts>

The algorithm used to estimate version controlled efforts was first implemented by Kimmo Brunfeldt under the name `git-hours` #footnote([https://github.com/kimmobrunfeldt/git-hours]). As taken from the official repository the algorithm works as follows @githubGitHubKimmobrunfeldtgithours:

+ Go through all commits and compare the difference between them in time.
+ If the difference is smaller or equal then a given threshold, group the commits to a same coding session.
+ If the difference is bigger than a given threshold, the coding session is finished.
+ To compensate the first commit whose work is unknown, we add extra hours to the coding session.
+ Continue until we have determined all coding sessions and sum the hours made by individual authors.

The actual implementation (`jikyuu` #footnote([https://github.com/Nate-Wilkins/jikyuu])) used to analyze the `dumpster` repository was a reimplementation in Rust by Ruin0x11 #footnote([https://github.com/Ruin0x11]) and Nate-Wilkins.

==== Formal Time Logging

As explained in @jonathan_time_methodology my goal was to not overestimate my time spend. My approach to the formal time logging represents this mindset, which emphasizes the recording of periods of focused and productive work on specific tasks. Consequently, for example, during a five-hour meeting, only one to two hours of concentrated effort were documented.

=== Project Planning<jonathan_plan_phase>

=== Concept and Design<jonathan_des_phase>

=== Development<jonathan_dev_phase>

=== Documentation
