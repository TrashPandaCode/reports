#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": make-glossary, register-glossary, print-glossary, gls, glspl

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
)

#outline(depth: 3)
#todo_outline
#pagebreak()

#set heading(numbering: "I.1.a") // idk können wir auch noch ändern

#set table(stroke: 0.5pt, inset: 8pt)

= Introduction & Motivation
// Problem Statement
//    Why is there a need for a learning tool?
//    What is the tool supposed to achieve and how?


= Background
// CA module
//    Introduction into Computeranimation
//    Explanaiton of the current structure/learning concept of the CA module
// 
// Didactic 


= Project Planning
// Target Audience
// Project and Time Management
//    Methods and Tools used
//    Milestones

= Didactic Concept
// Learning Goals
// Target Audience
//    What kind of backgrounds/previous knowledge do they have on the topic
// Instructional Design
// Expected Learning Outcome

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
//
//    

= Technical Implementation

= User Testing

= Unit Testing



= Glossary
#todo("fill glossary (if needed)")

= References / Bibliography
#todo("add references (e.g. from user testing, accessibility, teaching concept)")

= Index
