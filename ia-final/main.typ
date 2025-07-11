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

= Introduction & Motivation
//first sketch. couldnt really figure out what else to put here that wouldt become redundant when we write the rest of the report.

// control flow is weird here: computer animation in itself is not really about programming
// mathematical concepts is very broad, maybe just linear algebra or sth similar
// we need to structure this to fit our project more
// also i would like to start with a short introduction to computer animation, what is that?
//
// separate introduction (to ca) and motivation (for this project)
//
// completely agree with this, would keep it lowkey though as it is not the main focus of the document
Learning computer animation is not trivial. It requires a solid understanding of mathematical concepts, object relations, and control flow. However, traditional learning methods often fail to engage students effectively, leading to frustration and disengagement. This is where our learning tool, "Dumpster Diving," comes into play.

As students that have gone through the Computer Animation (CA) module at the University of Applied Sciences Cologne, we know about the struggles that students have with the complexity of the subject matter in combination with the modules coursework focussing on scripting in $"C#"$ using Unity. Both of which are not necessarily beginner friendly. Thinking about ways to teach the core concepts of computer animation in a more engaging and accessible way, we looked into visual scripting and node-based programming. These methods allow learners to construct logic visually, making it easier to grasp complex concepts without getting bogged down in syntax or language-specific details.

// should we add inspirations like scratch or blender node editor here?
// something like this:
// We took inspiration from existing educational tools like Scratch, a block-based visual scripting language designed to teach programming concepts to children through a drag-and-drop interface. Other inspirations include Blender's node editor, which allows users to create complex visual effects and animations through a node-based interface. The node-based approach from Blender is what we decided to use for our tool, as it abstracts the underlying code and syntax more than Scratch's code block-based approach, allowing learners to focus on the logic and structure of their programs.


// Problem Statement
//    Why is there a need for a learning tool?
//    What is the tool supposed to achieve and how?
//
// // CA module
//    Introduction into Computeranimation
//    Explanaiton of the current structure/learning concept of the CA module


#pagebreak()
= Project Planning

== Target Audience

The target audience for Dumpster Diving includes students in the Computer Animation (CA) course at the University of Applied Sciences Cologne, as well as independet interested learners, who typically have limited prior knowledge of programming and computer animation. The tool is designed to be accessible to beginners, while also providing depth for those with some experience in computer animation concepts.

// Target Audience
//    More broad overview -> Who is supposed to use the product?
// What requirements is the tool supposed to fullfil?
// Project and Time Management
//    Methods and Tools used
//    Milestones
#pagebreak()
= Didactic Concept

The didactic concept behind Dumpster Diving is built on the principle of learning through playful problem solving. The project aims to teach fundamental computer animation concepts—such as object relations, loops, and control flow—by embedding them in a visual, interactive environment that uses a narrative-driven puzzle game featuring raccoons and trash cans as central characters.

The didactic concept of Dumpster Diving was developed specifically with our target audience in mind. It supports their learning needs through accessible, playful, and low-pressure design choices, which are detailed in the following section.

The pedagogical design is rooted in constructivist learning theory @papertMindstormsChildrenComputers1993, which holds that learners build new knowledge through active experimentation and interaction with their environment. In Dumpster Diving, players construct logic visually using node-based programming, a method that aligns with cognitive apprenticeship @collinsCognitiveApprenticeshipTeaching1989, as it externalizes thought processes and encourages scaffolding of increasingly complex concepts.

Each level introduces new tools and mechanics progressively, where learners revisit familiar ideas with increasing sophistication. Initial levels are simpler and focus on basic computer animation principles, while later challenges require creative synthesis of learned skills - often without explicit instruction - encouraging learners to test, iterate, and debug their solutions.

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
== Use of React and React Flow <techstack_react_reactflow>
//has to be checked for correctness and completeness
React #footnote([https://react.dev/]) is a modern, free and open source JavaScript library for building user interfaces through a declerative, component-based architecture. Its efficient update model via a virutal DOM makes it ideal for developing interactive web applications. In our project, React serves as the foundation for our user interface, allowing us to create a dynamic and responsive experience for users. To avoid the overhead of implementing a complex node system from scratch, which would have been impossible within the set time frame of the project, we chose to use React Flow #footnote([https://reactflow.dev/]) to create the node editor upon. Flow is a library specifically designed for creating node and graph-based interfaces in React applications. It provides a set of essential features such as general node management, the canvas for the nodes and the ability to create fully custom sets of nodes. This allowed us to create the sophisticated node editor needed for our project. As our programming language of choice, we decided to use TypeScript — a statically typed superset of JavaScript. TypeScript allows us to catch type-related errors early in the development process and contributes to clearer, more maintainable code. These benefits are particularly important in a project like ours, which involves a complex system with many interconnected components and evolving interfaces. Since we're working with React and TypeScript, we naturally use TSX — the standard syntax extension for TypeScript that allows us to write HTML-like markup within TypeScript code. This makes building and maintaining the user interface more intuitive, especially in areas like the node editor, where we create various custom components with specific properties and behaviors.


== Evaluation of Game Engines: Kaplay, Three.js and Unity
// has to be checked for correctness and completeness
//Leo: puh hier passiert einiges. also 3d ist halt wieder falsch, das argument gegen unity war ja nicht "loss in performance and responsiveness" sondern, dass wir das node-system dann auch in unity machen müssten was sehr unangenehm wäre (und das spiel in unity zu bauen und den node editor als website wäre schwierig gewesen zu verknüpfen). das wir für three alles selber implementieren müssten ist ja auch nicht richtig, wir hätten ja auch auf existierende bibliotheken zurückgreifen können.
//
// den unity punkt und die sachen zu den einzelnen korrekturen hab ich umgesetzt. Das mit 3D ist eher ein missverständnis, ich gehe ja mit dem satz darauf ein, dass wir ursprünglich eine 3D Webanwendung machen wollten, wir uns aber mit unserer entscheidung für Kaplay dagegen entschieden haben und auf 2D umgestiegen sind. Dass das noch recht schlecht aus dem text hervorgeht seh ich ein. wie wärs mit einem kleinen absatz der unsere diskussion über 2D vs 3D zusammenfasst? Oder sollte das ein insgesamt auch führendes thema dieses absatzes sein? Den ThreeJS absatz hab ich auch nochmal umformuliert, da hast du recht, dass wir nicht alles selbst implementieren müssten und man da libraries nutzen könnte, dass es dann overall aber trotzedm einfacher ist eine wirklich dafür gemachte Game Engine zu nutzen. Falls dazu noch additions einfallen, gerne einfach reinschreiben

In regards to our project, choosing the right game engine is crucial. The game engine serves as the foundation for the game, providing the necessary tools and features to create a responsive and performant game side of our learning tool. In our case, we wanted a game engine that would allow us to create a 3D web-based game that could be easily developed, tested and in the end used to learn computer animation. When exploring our options for a game engine, we considered several alternatives: Kaplay #footnote([https://kaplayjs.com/]), Three.js #footnote([https://threejs.org/]) and Unity #footnote([https://unity.com/de]). Each of these has its own strengths and weaknesses. Although Three.js provides a flexible and powerful 3D rendering engine, it is not designed to be a game engine. As such, core features like physics, entity and scene management, or object interactions are not built-in and would require either significant custom implementation or the integration of third-party libraries. This can increase both complexity and development time compared to using a purpose-built game engine. Unity is a mature and widely established game engine particularly well-suited for 3D game development, as well as it being the Software used for most of the Computer Animation modules coursework hence being familiar to all group members. However it would require us to also develop the nodesystem completely within unity, which would have been a strenious task as mentioned in @techstack_react_reactflow and possibly even more complicated than implementing it from scratch in a web application. Other possible solutions like developing the game in Unity and the node editor as a separate web application would have made it difficult to realise instantanious feedback between the game and the node editor. In contrast, Kaplay is a fully-fledged game engine that is specifically designed for 2D web based games. As a result, certain computer animation concepts — like using quaternions for rotation — are not applicable here, since 2D space only requires a single angle to represent rotation. Kaplay allows us to create a responsive and performant game that can be easily developed and tested. Kaplay also provides a set of features that are essential for our project, such as collision detection, physics simulations and scene management. This allows us to focus on building an educational game to teach the core principles of computer animation.
#pagebreak() //provisional pagebreak, might not be needed in the end
== State Management with Zustand
// has to be checked for correctness and completeness

// ich würde hier nicht ins detail darauf eingehen, ob zustand oder context performanter ist ohne das mit quellen belegen zu können. ich persönlich wäre mir da gar nicht mal so sicher. ich würde eher sagen, dass zustand einfach besser zu unseren anforderungen passt.
// For global state management within our React application, we opted to use Zustand #footnote([https://github.com/pmndrs/zustand]) instead of React's built-in Context API. While React Context is a powerful tool for sharing static values throughout a component tree, it is not optized for scenarios involving frequent and fine-grained state updates. Rendering it unfit for our use case, where the game part of our application needs to be in constant communication with the node editor, which imposes a high performance demand on the state management system. Zustand, on the other hand, is a lightweight state management library, specifically designed to handle dynamic and frequently changing states in React applications. It provides a simple but efficiently scalable API for managing global state, allowing us to create stores that can be accessed and updated from anywhere in the application. Avoiding unnecessary component re-renders, it contributes heavily to the overall better performance and maintainability, making it a perfect fit for our project.

//Ist das so besser? ich hab versucht das ganze etwas kürzer zu fassen und nicht so sehr auf die performance einzugehen. Alternativ könnte ich auch ein paar quellen raussuchen, die belegen, dass zustand performanter ist als context. Aber ich denke dass das vermutlich eher den ramen sprengen würde da jetzt großartig drauf einzugehen.
For global state management within our React application, we opted to use Zustand #footnote([https://github.com/pmndrs/zustand]) instead of React’s built-in Context API. While React Context is a valuable tool for sharing static values across a component tree, it is not well-suited for managing dynamic or rapidly changing state. Our application requires continuous synchronization between the game logic and the node-based editor, which places significant demands on responsiveness and update granularity. Zustand, as a lightweight and flexible state management library, offers a more appropriate solution for such use cases. Its minimal API supports the creation of centralized stores that can be accessed and modified from any part of the application, without enforcing a rigid structure or causing unnecessary re-renders. This design aligns well with our architectural needs and helps ensure both performance and maintainability throughout the project.

== Using Markdown for Documentation<markdown_documentation>

When designing the foundation for our documentation system, one of the first and most important architectural decisions we had to make was choosing the format in which the documentation content would be written and maintained. One option was to use plain HTML or JSX components. This approach would have offered the most flexibility in terms of layout and structure, as we would have been able to build custom pages using the full featureset of React. However, this flexibility would have come at a significant cost: increased complexity, a large amount of repetitive boilerplate code, and a higher barrier of entry for contributors, especially for those with limited technical experience.

Instead, we opted for a more structured and user-friendly solution by using Markdown, and eventually transitioning to MDX. Markdown is a lightweight markup language that allows authors to format text using a simple and intuitive syntax. It is widely used in technical and non-technical communities alike due to its readability and ease of use. By choosing Markdown, we enabled a workflow where contributors can focus on the content itself without needing to understand complex HTML structures or React component logic. This significantly lowers the barrier to entry for writing and maintaining documentation, which is especially beneficial in educational or collaborative projects where content authors may not have a background in software development.

Later in the development process, we transitioned from pure Markdown to MDX, a powerful extension of Markdown that supports embedding React components directly within the document. This allows us to combine the simplicity of Markdown with the interactivity of modern web applications. Using MDX, we were able to build dynamic and interactive documentation pages—for example, by embedding live previews of the nodes and their configurations directly within the documentation for each node type. This makes the documentation not only more informative but also more engaging and effective.

Another key advantage of using Markdown and MDX is the ease of content processing. Markdown files are inherently easier to parse and search than raw JSX or HTML components. This simplifies the implementation of features such as search functionality, indexing, and content previews. It also supports better performance and scalability, as parsing plain text is less resource-intensive than interpreting compiled React components.

In addition to the usability and maintainability benefits of Markdown and MDX, another important advantage of our approach is the ability to load documentation content on demand. Rather than bundling all documentation pages into the main application bundle—which would increase initial load time and negatively affect performance—we dynamically load each Markdown or MDX file only when the user navigates to its corresponding documentation page.

This on-demand loading significantly improves the scalability and responsiveness of the site. Users only download the content they actively view, which helps reduce network usage and speeds up the initial loading experience, especially for first-time visitors. It also aligns well with modern web development practices, such as code-splitting and lazy loading, both of which we make use of elsewhere in the project.

This dynamic content loading was made easier by the structured nature of Markdown files, and it integrates seamlessly with our use of React Router and Vite as our build system. As a result, we're able to maintain a clean separation between content and application logic, while also achieving an efficient and responsive user experience.

// React
//    ReactFlow as core of our application [_/]
//      Gives us a good starting point since a lot of features are already part of the API [_/]
//      Unrealistic to build a whole Node System on our own during the course of this project [_/]
//    -> ReactFlow means React as library [_/]
//    -> Typescript as language of choice since ReactFlow is written in it [_/]
//
//    Different GameEngines comparison vs developing in Unity [_/]
//      Kaplay over three.js [_/]
//        three.js not necesarily meant as game engine [_/]
//        would need to implement collisions physics etc. manually [_/]
//        kaplay is a fully fledged game engine [_/]
//        downsides
//          - 2d limits our ability to showcase CA concepts [_/]
//      Unity
//        Game needs to be fully developed inside of Unity and then built as WebGL application [_/]
//        Would make development tricky as testing communication between Website and Game would require a new Build of the game for each change [_/]
//    Zustand
//      Why Zustand over Reacts Context? [_/]
//        Context is not made to handle constant state changes, can lead to performance issues [_/]
//        Our game needs to constantly be in contact with the Node side [_/]
//    MDX
//      Can contain React Typescript Components

#pagebreak()
= Technical Implementation

#todo("Feedback Bitte")
// Wie findet ihr das vom Inhalt her? Sollte ich genauer auf die Abläufe eingehen oder passt das so?

== Game
The game runs inside a dedicated React Component that acts as a wrapper for the key components of the game: the canvas in which the game is rendered, the node editor and several UI elements. This component also handles the initialization of the game engine and transitions between levels.

=== First call of the Component
When the component is first called, it checks the route parameters for a level ID to determine which level to load. If no level is specified, it will default to the first level, "Calculator". At this point we also check wether the Tutorial Dialog should shown, based on what the user has previously selected. If the Tutorial gets skipped, the Level Dialog will be displayed and wait for the current level to be set. 

Once there is a valid level ID multiple functions get called:
- The global key tracker is started to listen for keyboard inputs
- All Zustand stores, for game state, node flows, loops, and data are initialized
- The Kaplay game engine is initialized using our `initGame`. function, which receives a reference to the canvas canvas element created when the component is called. This tells the game engine where to render the game
After everything is initialized the `loadLevel` function is called. This function sets the current level and then calls the initialize-function for that level. 

To prevent users from losing their progress due to accidental reloads or crashes, the component also sets up an auto-save system. A function is called every 10 seconds using JavaScripts `setInterval` function. This function calls the `save` function for all of our aforementioned Zustand stores.

=== Calling the Component again
If the level ID in the route paramters changes or the user navigates back to the same level, the componenet is re-rendered. Before any initialization starts again severeal clean up functions are called:
- Kaplays own clean up function is called to erase everything that was already loaded from the previous level
- The auto-save Interval is cleared
- The global key tracker also has his clean up function called

Once the clean up is completed, the Level Dialog will be displayed again and the same initialization steps from the previous section will start again.



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

To structure the following sections detailing contributions to the `Dumpster Diving` project, we present four distinct phases:

/ Planning Phase: This encompasses all contributions related to the initial project planning and its documentation.
/ Concept and Design Phase: This includes all work on the preliminary design specifications for both the game and its accompanying website.
/ Development Phase: This refers to all programming-related contributions within the Dumpster Diving code repository.
/ Documentation Phase: This comprises all effots related to the projects final documentation. #footnote([This excludes game-specific documentation, such as docs pages and code comments.])

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

Beginning on June 2nd, all time dedicated to the project was formally recorded, thereby eliminating the need for estimation. This period encompasses the tail end of the development phase as well as the entire documentation phase. While contributors were encouraged to log their efforts consistently, individual differences in logging strategies may still introduce some variability. These logging methodologies, along with the estimation techniques applied for earlier phases, will be thoroughly described and justified in the following sections.

#include "contributions/jonathan.typ"
// might not fit here perfectly as i dont go into detail about time tracking that much, but rather about my contributions during the project. Will add a section about time tracking later on.
#include "contributions/philipp.typ"
#include "contributions/leo.typ"

#pagebreak()
= Glossary
#todo("fill glossary (if needed)")

// Perhaps this could go in the glossary later
//=== Constructivism
//Constructivism is rooted in the theories of Jean Piaget — developed over the course of fifty years until his death in 1980 — who believed that individuals build their knowledge through their experiences and their reflections on those experiences @piaget_psychology_1969. However the term constructivism was not coined by Piaget himself, but emerged later on as others expanded on his ideas. Catherine Fosnot defined it as a psychological theory that "construes learning as an interpretive, recursive, nonlinear building process" @fosnot_constructivism_1995.

#todo("add references (e.g. from user testing, accessibility, teaching concept)")

#pagebreak()
= Index
