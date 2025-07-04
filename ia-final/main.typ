#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": gls, glspl, make-glossary, print-glossary, register-glossary

#show: island.with(
  lang: "en",
  title: "Final Report",
  authors: (
    (name: "Markus Heming", matnr: "11160720"),
    (name: "David Klein", matnr: "11150408"),
    (name: "Jonathan Kron", matnr: "11158145"),
    (name: "Milan Jezovsek", matnr: "11152836"),
    (name: "Philipp Wendt", matnr: "11158135"),
    (name: "Leo Kling", matnr: "11158198"),
  ),
  subheading: "IA - Dumpster-Diving",
  primary: rgb("#4f81bd"),
  semester: "SoSe 2025",
  show-title-page: true,
  img: none,
  show-outline: false,
  bibliography: bibliography("bibliography.bib"),
)

#outline(depth: 3)
#todo_outline
#pagebreak()

#set heading(numbering: "1.1.a") // idk können wir auch noch ändern

#set table(stroke: 0.5pt, inset: 8pt)

#pagebreak()
= Introduction & Motivation
//first sketch. couldnt really figure out what else to put here that wouldt become redundant when we write the rest of the report.
Learning computer animation is not trivial. It requires a solid understanding of mathematical concepts, object relations, and control flow. However, traditional learning methods often fail to engage students effectively, leading to frustration and disengagement. This is where our learning tool, "Dumpster Diving," comes into play.

As students that have gone through the Computer Animation (CA) module at the University of Applied Sciences Cologne, we ourselves have struggled with the complexity of the subject matter in combination with the modules coursework focussing on programming in $"C#"$ using Unity. Both of which are not necessarily beginner friendly. Thinking about ways to teach the core concepts of computer animation in a more engaging and accessible way, we looked into visual scripting and node-based programming. These methods allow learners to construct logic visually, making it easier to grasp complex concepts without getting bogged down in syntax or language-specific details.

// should we add inspirations like scratch or blender node editor here?
// something like this:
// We took inspiration from existing educational tools like Scratch, a block-based visual scripting language designed to teach programming concepts to children through a drag-and-drop interface. Other inspirations include Blender's node editor, which allows users to create complex visual effects and animations through a node-based interface. The node-based approach from Blender is what we decided to use for our tool, as it abstracts the underlying code and syntax more than Scratch's code block-based approach, allowing learners to focus on the logic and structure of their programs.


// Problem Statement
//    Why is there a need for a learning tool?
//    What is the tool supposed to achieve and how?

#pagebreak()
= Background
// CA module
//    Introduction into Computeranimation
//    Explanaiton of the current structure/learning concept of the CA module
// Didactic
//    Constructivist Learning _/ Cognitive Aprenticeship
//    Constructionist Education
//    Situated Learning?
//    Cognitive Load Theory
//    Exploratory Learning Environments
//    Intrinsic Motivation
//    Formative Assessment Paradigm

== Didactic
=== Constructivism
Constructivism is rooted in the theories of Jean Piaget—developed over the course of fifty years until his death in 1980—who believed that individuals build their knowledge through their experiences and their reflections on those experiences @piaget_psychology_1969. However the term constructivism was not coined by Piaget himself, but emerged later on as others expanded on his ideas. Catherine Fosnot defined it as a psychological theory that "construes learning as an interpretive, recursive, nonlinear building process" @fosnot_constructivism_1995.
#pagebreak()
= Project Planning
// Target Audience
//    More broad overview -> Who is supposed to use the product?
// What requirements is the tool supposed to fullfil?
// Project and Time Management
//    Methods and Tools used
//    Milestones
#pagebreak()
= Didactic Concept

#todo("check definition of situated learning, is it applicable to our tool?")

#todo("move bibliography to desired spot")
The didactic concept behind Dumpster Diving is built on the principle of learning through playful problem solving. The project aims to teach fundamental computer animation concepts—such as object relations, loops, and control flow—by embedding them in a visual, interactive environment that uses a narrative-driven puzzle game featuring raccoons and trash cans as central characters.

// This paragraph is new, please check if it fits the context.
The Target Audience for Dumpster Diving include students in the Computer Animation (CA) module at the University of Applied Sciences Cologne, aswell as independet interested learners, who typically have limited prior knowledge of programming and copmputer animation. The tool is designed to be accessible to beginners, while also providing depth for those with some experience in computer animation concepts.

The pedagogical design is rooted in constructivist learning theory @papertMindstormsChildrenComputers1993, which holds that learners build new knowledge through active experimentation and interaction with their environment. In Dumpster Diving, players construct logic visually using node-based programming, a method that aligns with cognitive apprenticeship @collinsCognitiveApprenticeshipTeaching1989, as it externalizes thought processes and encourages scaffolding of increasingly complex concepts.

Each level progressively introduces new tools and mechanics, where learners revisit familiar ideas with increasing sophistication. Initial levels are simpler and focus on basic computer animation principles, while later challenges require creative synthesis of learned skills - often without explicit instruction - encouraging learners to test, iterate, and debug their solutions.

The use of narrative and playful interaction fosters an emotional connection between the player and the raccoon character, that supports engagement and learning. Through dialogues, humor, and in-world challenges, the game creates a sense of companionship and narrative continuity, which can enhance intrinsic motivation by making tasks feel personally meaningful and emotionally resonant @deciIntrinsicMotivationSelfDetermination1985.

Crucially, Dumpster Diving is designed to foster low-stakes exploration. Players are encouraged to experiment without penalty, and feedback is immediate and visual. This aligns with research in constructionist education @papertMindstormsChildrenComputers1993, emphasizing that deep understanding comes from designing and building tangible outputs — in this case, animated logic systems that visibly affect the raccoons' behavior.

Assessment is embedded within the gameplay. Rather than quizzes or performance metrics, success is measured by solving puzzles, using tools appropriately, and being able to adapt solutions when conditions change. This approach reflects the formative assessment paradigm @blackAssessmentClassroomLearning1998, which values feedback and process over outcomes.

From a user experience standpoint, Dumpster Diving uses visual metaphors and interaction patterns that are accessible to novice programmers, inspired by prior educational systems like Scratch @resnickScratchProgrammingAll2009 and Blockly @fraserTenThingsWeve2015. The system design also considers cognitive load theory @swellerCognitiveLoadProblem1988, aiming to reduce extraneous complexity while keeping challenges meaningful and engaging.

To deepen understanding and support self-directed learning, Dumpster Diving features in-world documentation and an open-ended Playground mode. The documentation explains core mechanics with interactive examples, while the Playground allows free experimentation beyond level constraints. This aligns with the concept of exploratory learning environments @dejongScientificDiscoveryLearning1998, where open-ended tasks promote reflection, transfer, and creative application of knowledge.

In summary, Dumpster Diving frames computer animation and its key principles as an expressive, solvable puzzle. It combines constructivist, playful learning methods with an intuitive interface, narrative motivation, and progressive challenge. The result is a learning environment that aims not only to teach computer animation but to foster confidence, curiosity, and joy in problem solving.


// Target Audience
//    What kind of backgrounds/previous knowledge do they have on the topic [_/]
//
// Cencepts
//    Constructivist Learning/ Cognitive Aprenticeship [_/]
//        Learning in Context [_/]
//    Creating intrinsic motivation through Games, experimentation and a parasocial bond to the games protagonist [_/]
//    Situated Learning? [_/]
//        (Is this really applicable to our learning tool? Situated learning focuses on social situations surrounding the learning process. Is using our tool a participation in the social world?)
//        (only kind of. We are not really teaching through a conversation of experts, but rather through a game that is supposed to be fun and engaging through the dialog)
//    Reducing cognitive load while learning through intuitive Game and Level design [_/]
// Expected Learning Outcomes [_/]

#pagebreak()
= Tech Stack
// React
//    ReactFlow as core of our application
//      Gives us a good starting point since a lot of features are already part of the API
//      Unrealistic to build a whole Node System on our own during the course of this project
//    -> ReactFlow means React as library
//    -> Typescript as language of choice since ReactFlow is written in it
//
//    Different GameEngines comparison vs developing in Unity
//      Kaplay over three.js
//        three.js not necesarily meant as game engine
//        would need to implement collisions physics etc. manually
//        kaplay is a fully fledged game engine
//        downsides
//          - 2d limits our ability to showcase CA concepts
//      Unity
//        Game needs to be fully developed inside of Unity and then built as WebGL application
//        Would make development tricky as testing communication between Website and Game would require a new Build of the game for each change
//    Zustand
//      Why Zustand over Reacts Context?
//        Context is not made to handle constant state changes, can lead to performance issues
//        Our game needs to constantly be in contact with the Node side
//    MDX
//      Can contain React Typescript Components

#pagebreak()
= Technical Implementation
// Website Strucutre/Navigation
//  Landing Page also functions as Level select screen
// Node-Editor
//    Overall explanation of ReactFlow
//    How are Nodes implemented
//      Perhaps also some details on more complicated Nodes
//      eg. For-Loops
//    Copy/Paste
//    Undo/Redo
//
// Game
//    Level initialization / switching between Levels
//    GameUtils
//      loading GameObjects
//      loading Backgrounds
//      Character Animations using Spritesheets
//      handling of Level reset
//  building Levels using Kaplay
//    gameLoop
//    Communication between Game and Nodes
//    Handling Win Conditions
// State Management
//    GameStore
//    DataStore
//    Time
// Custom Game Dialog
//    Start Dialog
//    Finish Dialog
// Introduction Dialog

#pagebreak()
= User Testing
// User Testing Concept
//    Thinking out loud
//    Questionnaire Structure/Goals
// Results
// How did we use these results to improve our tool
//    Implementation of the Intro Tutorial
//    Changing what nodes show up on the initialization of the level

#pagebreak()
= Unit Testing
// What Elements were tested?
// How were the different Elements tested?
// What was the outcome?
//    Were any issues found and how were they fixed?

#pagebreak()
= Project Contributions

To structure the following sections detailing contributions to the `Dumpster Diving`, we present four distinct phases of our project:

/ Planning Phase: This encompasses all contributions related to the initial project planning and its documentation.
/ Concept and Design Phase: This includes all work on the preliminary design specifications for both the game and its accompanying website.
/ Development Phase: This refers to all programming-related contributions within the Dumpster Diving code repository.
/ Documentation Phase: This comprises all effots related to the projects final documentation

== Time Tracking

Since time tracking was only started as of June 2nd, it was necessary to retrospectively estimate and quantify contributions made prior to this date using alternative methods.

=== Planning Phase

During the planning phase, time was allocated to online group meetings, in-person presentations, and the creation and iterative refinement of project planning and presentation-related documents.

Since we utilized the online Typst editor #footnote([https://typst.app/home]), whose free version does not support version control, individual contributions to project planning and presentation-related documents were not recorded. Consequently, it is not possible to provide an accurate estimation of the time spent on these tasks, necessitating the use of rough estimates.

Online meetings were conducted via Discord #footnote([https://discord.com/]), which displays call durations in private chats but not within servers. As the majority of meetings took place on Discord servers, only rough estimations — similar to those used for document-related work — can be applied here.

In contrast, in-person meetings can be precisely quantified, as they were scheduled with clearly defined start and end times.

=== Concept and Design Phase

The concept and design phase falls victim to the same issues as the planning phase. Our work was either done in Typst or Figma #footnote([https://www.figma.com/]) which also does not include version control nor does it track time spend on documents and our meetings where held in Discord servers. Meaning, rough estimates will be used to quantify the time spend on our efforts in this phase.

=== Development and Documentation Phase

Development commenced on April 8th, leaving a total of 55 days of programming activity untracked by our formal time-logging system. However, as the project was version-controlled using Git and hosted on GitHub, all commits to the main branch — as well as those merged from feature branches — are recorded and accessible. This allows for a relatively accurate estimation of the time dedicated to programming activities during that period, although it does not account for time spent on asset creation or research.

It is important to note that each contributor may apply different estimation strategies or computational methods when quantifying their efforts, which may introduce some variation in reported contributions.

Beginning on June 2nd, all time dedicated to the project was formally recorded, thereby eliminating the need for estimation. This period encompasses the tailend of the development phase as well as the entire documentation phase. While contributors were encouraged to log their efforts consistently, individual differences in logging strategies may still introduce some variability. These logging methodologies, along with the estimation techniques applied for earlier phases, will be thoroughly described and justified in the following sections.

#include "contributions/jonathan.typ"

#pagebreak()
= Glossary
#todo("fill glossary (if needed)")

#todo("add references (e.g. from user testing, accessibility, teaching concept)")

#pagebreak()
= Index
