#import "../lib.typ": *
#import "../utils.typ": *

= Test Plans
#col[
  == Acceptance Report
  === Project Outcome
  The project *Dumpster-Diving* consists of a playable application with a node-based editor that allows users to design in-game mechanics through visual scripting elements.

  The demonstrator outcome includes:
  - *Playable application* with core game mechanics
  - *Node editor* for modifying and expanding the game
  - *User interface (UI/UX)* for intuitive interaction
    - including menu system, options and landing page
  - *Documentation and help system* to support users
  - *Testing system* to ensure functionality

  === Successful Acceptance
  The project is considered successfully accepted if the following criteria are met:

  ==== Playable Application
  - The game starts without errors and runs stably.
  - Core game mechanics function correctly (e.g., character control, collision detection, level transitions).
  - The player can navigate through the game and interact with the environment.
  #colbreak()
  ==== Node Editor
  - Users can modify game mechanics through the node environment.
  - The node structure is correctly validated (no cycles, faulty connections are detected).
  - Changes to the node structure affect the game accordingly.

  ==== User Interface (UI/UX)
  - The interface is intuitively usable.
  - All UI elements function correctly and respond to user input.

  ==== Documentation & Help System
  - Documentation for key features is available.
  - An integrated help function assists users in working with the node editor.

  ==== Testing System
  - Unit tests exist for core functionalities.
  - At least 80% of the defined tests pass successfully.

  === Test Cases
  The acceptance process is based on the following tests:

]


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
  [All required nodes to solve the puzzles are implemented. Changes in nodes affect the game in the intended way.],

  [*Pass*: Yes / *Fail*: No],
  [4],
  [Is there documentation available?],
  [Documentation for all node types is available and understandable. At least 50% of the covered topics is documented.],

  [*Pass*: Yes / *Fail*: No], [5], [Do the automated tests pass?], [At least 80% of unit tests pass.],
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
