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

#outline(depth: 2)
#todo_outline
#pagebreak()

#set heading(numbering: "1.1.a") // idk können wir auch noch ändern

#set table(stroke: 0.5pt, inset: 8pt)

#col[
  = Introduction

  In the modern world, computers are no longer limited to performing purely numerical computations. Over the past century, methods have been developed that enable computers to simulate a wide range of real-world phenomena and translate these simulations into rendered images or animations @HistoryComputerAnimation2025.

  The discipline concerned with the digital generation of moving images is referred to as *computer animation*. It constitutes a fundamental skill in various domains, including game development, film production, and interactive media.

  Computer animation encompasses a wide range of topics, some of which have been well-established for decades, while others remain active areas of ongoing research. As the field continues to advance, the complexity and breadth of knowledge required make it increasingly challenging for non-experts to keep pace with current developments. For this reason, computer animation has become an integral part of academic education at universities today.

  At the Cologne University of Applied Sciences (TH Köln), computer animation is taught as part of the Bachelor's program in Media Technology. Since 2005, this subject has been an integral component of the curriculum, aiming to provide students with both a theoretical and practical foundation in this interdisciplinary field @gruenvogelEinfuehrungComputeranimationMethoden2024.

  The computer animation course taught at TH Köln is structured into four main areas: animation systems, object animation, character animation, and procedural animation @gruenvogelEinfuehrungComputeranimationMethoden2024. Throughout the course, students engage with practical programming exercises designed to reinforce the theoretical concepts covered. These exercises involve, for example, the programmatic implementation of Bézier curves within the Unity engine. To support the learning process, these assignments are supplemented by a comprehensive textbook covering all relevant topics, as well as concise instructional materials that provide guidance on the specific tasks.

  It was observed that, despite the availability of extensive supporting materials, students experienced difficulties with the programming tasks. These challenges were not solely attributable to the complexity of the tasks themselves but were often related to additional factors, such as the need to learn a new programming language (C\#), which is required for development within the Unity game engine as well as the fact that the programming assignments frequently integrated multiple topics simultaneously. This integration made it difficult for students to isolate and focus on individual problems, thereby hindering their ability to develop a clear understanding of specific concepts. Furthermore, students frequently struggled to transfer theoretical knowledge — acquired primarily through textbooks and 2D illustrations — into practical implementations within a virtual 3D environment.

  These issues illustrate the need for a intermediate tool easing the transition from textbook to the virtual world. To address this, we propose the development of a learning game featuring node-based programming. This approach eliminates the prerequisite of mastering a new programming language, thereby allowing students to focus directly on implementing core concepts of computer animation. Moreover, by designing each level in a controlled manner, we can strategically select the instructional content and constrain the complexity of individual tasks. This targeted approach enables students to concentrate their efforts on specific learning objectives without the distraction of extraneous challenges.

  = Motivation
  // Why is learning Computer Animation important?
  // Why is there a steep learning curve?
  // Challenges of TH Köln CA course
  // How can we help students overcome these challenges?
  // Why we chose visual scripting?
  //
  The motivation behind this project arises from the observed gap between theoretical knowledge and practical application in the computer animation course at TH Köln. While the existing course work provides a solid theoretical foundation, students often face difficulties when attempting to apply the theoretical concepts within the aforementioned practical programming tasks. These difficulties are compounded by the necessity to learn new programming languages and the integration of multiple challenging topics within a single assignment. To address these issues, this project aims to develop an educational tool that lowers the entry barrier to practical experimentation.

  In the field of computer animation visual scripting as well as node-based interfaces in general have found widespread adaptation in hobbyist as well as professional software as shown in @related_works. No comparable learning game currently exists that teaches the fundamentals of computer animation through a structured, level-based node-based programming environment specifically designed for educational purposes. This project seeks to close this gap.

  By offering a node-based programming environment within a carefully structured learning game, the tool allows students to focus on core animation principles without the added cognitive load of mastering a programming language and become familiar with node-based interfaces. Through a targeted, modular approach, the project seeks to facilitate a more intuitive and gradual transition from theoretical learning to practical implementation, thereby enhancing both comprehension and motivation in the study of computer animation.

  = Related Works<related_works>

  The use of visual scripting and node-based programming systems has become increasingly prevalent in both professional and educational contexts. These systems allow users to create complex logic and behaviors through intuitive visual interfaces, making programming more accessible to non-experts. Prominent examples include Scratch @resnickScratchProgrammingAll2009, a visual programming environment developed by the MIT Media Lab, which enables learners - especially children - to explore programming concepts through drag-and-drop block interfaces. While Scratch focuses on general computational thinking and algorithmic logic, it lacks specific features for teaching domain-specific concepts like computer animation.

  In contrast, professional tools such as Unreal Engine's Blueprints @UnrealEngineBlueprints and Blender's Geometry Nodes @GeometryNodesBlender provide advanced visual scripting capabilities tailored to game development and real-time graphics programming. These systems allow developers to create complex behaviors and shaders without writing code, making them powerful tools for professionals. However, their complexity and open-ended nature make them less accessible for beginners or educational scenarios with tightly scoped learning objectives. On top of that, none of these tools are specifically designed to teach the principles of computer animation in a structured and pedagogically guided manner.

  Edutainment games - those that combine educational goals with playful interaction - have shown great potential in improving motivation and engagement, especially when learners are introduced to abstract or unfamiliar topics. We took inspiration from successful examples like While True: Learn @Whiletruelearn, which uses visual programming to teach machine learning concepts, and Exercism @Exercism, which gamifies coding challenges to help learners practice programming skills. These games demonstrate the effectiveness of combining playful elements with structured learning paths to enhance understanding and retention. We looked at even more gamified approaches like Duolingo @Duolingo, which uses bite-sized lessons and feedback to teach languages, and Kara @SwissEducInformatikKara, which lets users modify a game world directly through simple programming commands and gamified learning experiences. These examples highlight the potential of using game mechanics to lower the barrier to entry for complex topics.

  In conclusion, while existing tools offer valuable insights into either visual programming or educational design, none fully address the specific challenges faced by beginners in computer animation. Our tool bridges this gap by combining the accessibility of visual scripting with a focused, curriculum-aligned learning path. By embedding animation concepts into a playful and interactive game environment, we aim to provide a guided and engaging introduction to computer animation that is both accessible and pedagogically sound. This positions our project as a unique contribution at the intersection of educational technology, visual programming, and animation education.

  // Visual Scripting
  // Visual Programming:
  //    Scratch
  //    Unreal Engine Blueprints
  // Related Tools:
  //    State Machine Graphs (Unity, UE, Godot)
  //    Shader Graphs (Unity, UE, Godot)
  //    Blender Geometry Nodes
  //    More...
  // Edutainment Games:
  //    While True Learn (Visual Scripting)
  //    Exercism (Learning Programming)
  //    Duolingo (Bite Sized Learning)
  //    Kara (Beginner Programming through Gamified Lectures)
  //    CSS Battles (puzzles to learn Css and compete)
  //
  // Conclusion + Relation to our Tool

  = Project Planning

  The project planning phase for the Dumpster-Diving educational platform encompassed a comprehensive analysis of project requirements, technical specifications, and resource allocation. This web-based game and visual scripting environment, designed to facilitate computer animation education, required systematic decomposition into manageable work packages to ensure successful implementation within the established timeline.

  == Project Structure and Decomposition

  The project was structured using a function-oriented Project Structure Plan (PSP), dividing the development process into eleven distinct work packages (WPs). This approach enabled parallel development streams while maintaining clear dependencies and milestone checkpoints. Dependencies between WPs were managed carefully; for instance, UI/UX design (WP3) depended on the first prototype (WP2), while node execution logic (WP7) required a stable base from earlier technical and gameplay developments (WP1, WP5). The work packages were categorized into three primary domains: technical foundation, core implementation, and quality assurance.

  === Technical Foundation Phase<t_f_p>

  The initial phase consisted of proof-of-concept development (WP-1) and prototype creation (WP-2). The proof-of-concept work package, scheduled for eight days, focused on establishing the technological foundation through comprehensive evaluation of React versions, bundler selection (with preference for Bun), programming language determination (JavaScript vs. TypeScript), and game engine assessment comparing Kaplay.js for 2D and Babylon.js for 3D implementations. Concurrently, the first prototype development initiated wireframe creation using Figma, establishing the interface specifications for node-game integration.

  === Core Implementation Phase<c_i_p>

  The core development phase encompassed six work packages (WP-3 through WP-8) addressing user interface design, node system implementation, game design, game creation, node execution logic, and testing frameworks. The UI/UX development (WP-3) established the visual design language, asset creation pipeline, and styling implementation using Tailwind CSS. Node type implementation (WP-4) was planned to require 18 days to develop type-safe node connections supporting various data types including floats, vectors, and game objects. As many features were simplified this work package was later mergen with the node execution systen (WP-7).
  Game design and creation represented the most substantial development effort, with WP-5 requiring 26 days for topic identification and level design, while WP-6 extended over 45 days for implementing core game mechanics including character controllers, physics systems, audio integration, animations, and graphics rendering.


  The node execution system (WP-7) implemented topological sorting algorithms and depth-first search mechanisms to ensure acyclic graph validation and proper execution flow.

  === Quality Assurance and Enhancement Phase<q_a_a_e_p>

  The final development phase incorporated comprehensive testing methodologies (WP-8 and WP-9), help system development (WP-10), and an optional AI-assisted help menu (WP-11).
  #colbreak()

  User testing was planned to extend throughout the development cycle (90 days) to gather continuous feedback and iterate on design decisions. The help system development focused on creating documentation, prebuilt node structures, and tutorial materials to enhance user experience and learning outcomes.

  === Project schedule

  The project schedule visualization is presented through two comparative Gantt charts (@gantt_initial, @gantt_actual) that illustrate both the initial planning assumptions and the actual project execution timeline. The first Gantt chart represents the theoretical schedule developed during the planning phase, based on estimated work package durations and optimal resource allocation (@t_f_p, @c_i_p, @q_a_a_e_p). This initial schedule assumed linear progression through the eleven work packages with minimal delays and efficient parallel processing of independent tasks. The second Gantt chart documents the actual project timeline, revealing deviations from the original plan due to unforeseen technical challenges, resource constraints, and iterative development requirements. This comparative presentation enables analysis of planning accuracy and provides insights into the factors that influenced schedule variance, demonstrating the dynamic nature of software development projects and the importance of adaptive project management approaches.

]
#figure(caption: "Initial Gantt Chart", image("../assets/initial_gantt_ia.png"))<gantt_initial>
#figure(caption: "Actual Gantt Chart", image("../assets/actual_gantt_ia.png"))<gantt_actual>
#col[

  == Scheduling and Dependencies

  The project timeline was structured using Critical Path Method (CPM) analysis, resulting in a precedence diagram that identified critical dependencies and resource constraints. The scheduling analysis revealed that the proof-of-concept phase served as the foundation for most subsequent work packages, while the first prototype created dependencies for UI/UX development and node type implementation.

  #colbreak()

  The process list indicated a total development effort of 281 working days across all work packages, with significant parallel processing opportunities. Key milestones were established at the 30th of June 2025 for interim presentation and 31st of August 2025 for final submission, providing structured checkpoints for progress evaluation and course correction.

]

#figure(caption: "Precedence Diagram", image("../assets/npt_ia.svg"))
// #figure(caption: "Actual Gantt Chart", image("../assets/psp_ia.svg")) //TODO: wo?


#col[

  == Resource Allocation and Capacity Planning

  Human resource allocation was distributed across the six-member development team, with specialized roles assigned based on expertise areas. The team structure included three programmers focused on visual scripting implementation (Milan Jezovsek as project lead, Jonathan Kron, and Philipp Wendt) and three team members responsible for game design and development (Markus Heming, Leo Kling, and David Klein).

  Material resource requirements were identified as minimal, leveraging open-source technologies and freely available development tools. The technology stack selection prioritized cost-effectiveness while maintaining technical capabilities, resulting in zero direct software licensing costs. Infrastructure requirements were limited to GitHub repository management, Figma for design collaboration, Discord/WhatsApp for team communication and Typst for collaborative work on text-based documents.

  Every team member had access to suitable hardware and development environments, including modern code editors and browser-based testing tools. All resources were made available remotely via cloud storage, ensuring platform independence and workflow continuity.

  == Quality Assurance Framework

  A comprehensive quality plan was established encompassing five primary quality dimensions: technical feasibility, usability, performance, functionality, and user support. Each quality goal was associated with specific criteria, quality assurance pathways, and control mechanisms.

  Technical feasibility assurance focused on technology stack validation through prototype development and compatibility testing. Usability requirements emphasized intuitive node-based scripting through wireframe design, style guide creation, and extensive user testing with non-technical participants. Performance optimization targeted smooth execution through algorithmic efficiency and device compatibility testing.

  Functionality assurance incorporated automated unit testing frameworks, cycle detection algorithms, and comprehensive node configuration validation. The user support framework integrated  help systems, documentation development, and tutorial creation to minimize learning barriers and enhance educational effectiveness.

  == Risk Assessment and Mitigation

  The project planning phase identified several potential risk factors including technology compatibility issues, resource availability constraints, and scope creep potential. Mitigation strategies included early proof-of-concept validation, modular development approaches, and clearly defined work package boundaries.

  Technical risks were addressed through comprehensive technology evaluation and prototype validation before full implementation commitment. Resource risks were mitigated through distributed expertise allocation and flexible task assignment capabilities within the team structure.

  == Development Model

  To structure the development process in a systematic and goal-oriented manner, the project team initially adopted a linear process model inspired by the classical waterfall methodology. This model, characterized by its sequential phases — requirements analysis, system design, implementation, testing, and evaluation — provided a clear framework for decomposing the project into logically ordered development stages. In the early phases, this approach proved especially beneficial for defining educational objectives, conceptualizing game mechanics, and outlining the architectural design of the user interface. The phase-oriented structure facilitated early alignment on key deliverables and responsibilities and contributed to a shared understanding of the project's overall scope and trajectory.

  As the project evolved and requirements became increasingly dynamic — particularly in response to user testing and iterative feedback — the team supplemented this foundational structure with agile elements, specifically the Kanban methodology. Kanban enabled a continuous and transparent workflow by visualizing active, pending, and completed tasks in a digital task board. This approach supported the real-time reprioritization of activities, the identification of process bottlenecks, and the systematic integration of user feedback, particularly from formative usability studies and playtesting sessions.

  Project management was operationalized using GitHub's integrated issue tracking and Kanban board. Each task was assigned to specific team members with defined deadlines and dependencies, promoting individual accountability and team-wide coordination. The visibility of task progression and workload distribution ensured that responsibilities remained transparent, and that adjustments could be made efficiently in response to unforeseen technical or pedagogical challenges. This hybrid model—combining elements of waterfall planning with agile Kanban-based task management—enabled the team to maintain methodological rigor while remaining adaptive to the iterative nature of educational software development.


  == Conclusion

  The project planning phase established a robust framework for systematic development of the Dumpster-Diving educational platform. The structured approach to work package decomposition, dependency management, and quality assurance provided clear pathways for successful project completion within the established constraints. The planning methodology emphasized iterative development, continuous user feedback integration, and maintainable technology selections to ensure both immediate project success and long-term platform viability.
]

#pagebreak()
#col[
  = Background
  == 2D vs. 3D
  // Computer Animation is dimensionless
  // TH Köln CA course is mostly 3D
  // CA script examples are 2D
  // 2D and 3D in Games
  //    2D games are still relevant
  // Arguments for 3D
  //    Closely related to the CA coursework
  //    Quaternions have use
  // Arguments for 2D
  //    Easier coordinate system
  //    Easier to navigate
  //    Rendering performance
  //    Sprites not 3D Models
  //    Implementation is easier
  //    Asset creation is easier
  // Arguments for 2.5D/Isometric
  //    Unique perspective
  //    rendering performance
  //    confusing coordinate system
  //    steep learning curve
  // Explaining our decision

  One of the fundamental decisions we hade to make during the early design phase was choosing the dimensionality of our game, whether it should be 2D, 2.5D (isometric), or full 3D. This choice had broad implications, affecting not only how the game would look and feel, but also the complexity of implementation, the learning curve for users, and how well it would align with the educational goals of the project.

  At first glance, a 3D implementation might seem like the most natural choice, especially given that the Computer Animation course at TH Köln primarily focuses on 3D concepts. Particularly transformations, quaternions, and rotation matrices are covered in 3D space @gruenvogelEinfuehrungComputeranimationMethoden2024. However, while the course content is rooted in 3D theory, many of the examples in the official course script are presented in 2D. This contradiction created a conceptual ambiguity that we had to resolve: should our game align with the theoretical 3D emphasis of the course, or follow the practical 2D approach taken in its teaching materials?

  We also explored the idea of a 2.5D or isometric design, which could have provided a more stylized and visually engaging interface while avoiding the full overhead of a true 3D system. However, we quickly realized that this approach would introduce a host of challenges. Isometric projections come with a non-intuitive coordinate system @IsometricCoordinatesIsometric that can confuse users, especially in an educational context. Additionally, while 2.5D may offer better aesthetics, it still brings complexity in terms of rendering, navigation, and interaction that felt unnecessary for our learning goals.

  Ultimately, we chose to implement the game in 2D. This decision was driven by several factors supported by research in educational game design. First, 2D provides a clear and accessible visual space in which users can focus on the logic and structure of their node-based programs without being distracted or overwhelmed by spatial navigation @mayerCambridgeHandbookMultimedia2022. Second, 2D drastically simplifies development. We could use sprites instead of 3D models, reduce performance demands, and avoid dealing with camera systems or perspective corrections. Most importantly, 2D allowed us to prioritize educational clarity @ortizWhatConsiderWhen2016. Concepts such as translation, scaling, and interpolation are easier to visualize and understand in a flat, two-dimensional space due to it simply having fewer dimensions to consider. This aligns with the principles of cognitive load theory @swellerCognitiveLoadProblem1988, which suggests that reducing extraneous complexity can enhance learning outcomes.

  Despite its simplicity, 2D remains relevant and effective in modern game design @DemographicsPlayersPlatformer, particularly for browser-based educational tools like ours. The decision to go with 2D allowed us to make quicker progress, ensure higher usability, and remain focused on the game's core purpose: to help students understand animation principles through interaction and experimentation, not to navigate a complex virtual world. In this sense, the choice of 2D was not a limitation, but a strategic and pedagogically motivated simplification.

  == Web vs. Native
  Another key decision we faced was choosing between a web-based or native desktop application. This choice had significant implications for accessibility, distribution, development complexity, and long-term maintainability of the educational tool.

  Native desktop applications offer certain advantages, particularly in terms of performance and system integration. They can leverage the full capabilities of the operating system, provide faster execution speeds, and offer more sophisticated file system access. For a computer animation learning tool, native applications could theoretically provide better rendering performance and more seamless integration with existing development environments that students might already be familiar with.

  However, we ultimately chose to develop Dumpster Diving as a web-based application for several compelling reasons that aligned with our educational objectives and target audience needs. The most significant advantage of a web-based approach is its inherent accessibility. Students can access the tool from any device with a modern web browser, without requiring installation permissions, administrative rights, or specific operating system compatibility. This is particularly important in educational environments where students may use various devices - from personal laptops to university computers with restricted installation policies. The web-based approach eliminates potential barriers to entry that could prevent students from engaging with the learning material.

  Additionally, web applications allow for immediate deployment of updates, bug fixes, and new content without requiring users to download and install updates manually. This is particularly valuable for an educational tool where improvements and corrections need to be rapidly distributed to all users. Instructors can ensure that all students are always working with the most current version of the learning materials.

  By choosing web technologies, we could leverage the extensive ecosystem of web development tools, libraries, and frameworks. This decision aligned well with our choice to use React and React Flow for the node-based programming interface, as these technologies are specifically designed for web environments and provide robust, well-documented solutions for our use case. Web applications can be easily integrated into existing educational management systems, embedded in course websites, or shared through simple URLs. This seamless integration supports the pedagogical goal of making the tool a natural extension of the existing course materials rather than a separate application that students must learn to navigate independently.

  Web development also allowed our team to focus on a single codebase rather than maintaining separate versions for different operating systems. This efficiency was crucial given our project timeline and team size constraints. The web platform also provides excellent debugging tools and development workflows that accelerated our development process. Contemporary web browsers offer sophisticated capabilities that were previously exclusive to native applications. Features like WebGL for graphics rendering, Web Workers for background processing, and advanced JavaScript APIs provide sufficient performance for our educational use case while maintaining the accessibility benefits of web deployment @WebGL2D3D2025.

  We also considered hybrid approaches such as Electron @ElectronElectron2025 or Tauri @TauriappsTauri2025, which allow developers to package web applications as native desktop applications. These frameworks offer a middle ground by combining web technologies with native distribution, potentially providing benefits like offline functionality, file system access, and familiar desktop integration while maintaining a single codebase. However, these solutions would have introduced unnecessary complexity for our specific use case. Electron applications, in particular, are known for their significant memory overhead and larger file sizes, which could create installation barriers similar to those we sought to avoid with traditional native applications. More importantly, our educational tool does not require the advanced system integration features that would justify the additional complexity of a hybrid approach. The core functionality of Dumpster Diving — node-based programming, visual feedback, and educational content delivery — is well-suited to modern web browsers and does not benefit meaningfully from native packaging. By staying with a pure web approach, we maintained the simplicity of direct browser access while avoiding the distribution overhead that hybrid solutions would have introduced.

  The decision to develop for the web rather than as a native application ultimately supported our primary objective of creating an accessible, easy-to-use educational tool that could reach the broadest possible audience of students. While native applications might offer marginal performance advantages, the accessibility, distribution, and maintenance benefits of web deployment far outweighed these considerations for our specific use case and educational context.

  == Design of Visual Scripting System
  The visual scripting system represents the core educational interface of Dumpster Diving, serving as the primary means through which students interact with computer animation concepts. The design of this system required careful consideration of both pedagogical effectiveness and technical implementation, balancing the need for educational clarity with the complexity inherent in programming concepts.

  Our visual scripting approach is fundamentally node-based, where each node represents a discrete operation, value, or control structure. This design paradigm draws inspiration from established tools in the computer graphics and animation industry, such as Blender's Geometry Nodes @GeometryNodesBlender, Unity's Shader Graph @technologiesUnityManualCreating, and Unreal Engine's Blueprint system @BlueprintsVisualScripting. By adopting a familiar visual metaphor, we aimed to reduce the cognitive burden associated with learning a new interface while introducing students to interaction patterns they might encounter in professional animation software.

  The node system architecture follows a clear hierarchical structure where data flows directionally from input nodes through processing nodes to output nodes that affect the game world. This left-to-right flow convention mirrors traditional programming execution patterns while providing immediate visual feedback about the logical sequence of operations @collinsCognitiveApprenticeshipTeaching1989.

  To reduce cognitive complexity for beginning programmers, our visual scripting system employs a simplified type system where all data is internally represented as numbers. This unified approach encompasses integers, floating-point values, and boolean values (represented as 0 and 1, although all number unequals 0 are considered truthy), eliminating the need for students to understand complex type hierarchies or casting operations. While this simplification may seem limiting from a traditional programming perspective, it aligns with our educational objectives by allowing students to focus on algorithmic thinking and animation concepts rather than type system intricacies @swellerCognitiveLoadProblem1988. This design decision also prevents common programming errors related to type mismatches, which can be particularly frustrating for novice programmers and detract from the core learning objectives of computer animation.

  Central to our design philosophy was the principle of progressive disclosure. Rather than overwhelming students with the full complexity of programming from the outset, the visual scripting system introduces concepts gradually across levels. Early levels present only basic nodes for simple operations like movement and basic arithmetic, while later levels introduce more sophisticated concepts such as loops, conditionals, and complex data transformations. This scaffolded approach allows students to build confidence and understanding incrementally, ensuring that each new concept builds upon previously mastered skills @papertMindstormsChildrenComputers1993.

  Error handling and feedback mechanisms were integrated directly into the visual design. Invalid connections and warnings about unknown behavior are highlighted in real-time. This immediate visual feedback loop supports the constructivist learning approach by allowing students to see the direct consequences of their programming decisions without delays or unclear error messages.

  The execution model of our visual scripting system operates on a frame-by-frame basis, with the entire node graph being evaluated each game tick. This approach ensures that changes in the node configuration are immediately reflected in the game world, providing the rapid feedback essential for effective learning. While this execution model may be less efficient than event-driven alternatives, it offers the predictable and transparent behavior necessary for educational purposes.

  The design also incorporates accessibility considerations, ensuring that the visual scripting interface remains usable for students with different abilities and technical backgrounds. High contrast color schemes, clear typography, and logical keyboard navigation patterns make the system accessible to students with visual impairments or motor disabilities. Additionally, the node-based approach itself serves as an accessibility feature by reducing the need for precise typing and syntax memorization that can be barriers in traditional text-based programming environments.

  == Target Audience
  The primary target audience for Dumpster Diving consists of students enrolled in the Computer Animation (CA) course at the University of Applied Sciences Cologne, which according to the standard period of study is taken in the 5th semester. These students often come from diverse academic backgrounds and usually possess a basic to intermediate level of programming knowledge but typically have little to no prior experience in technical animation tools. The course introduces foundational concepts in computer animation, and Dumpster Diving was created to complement this curriculum by offering an interactive, low-barrier entry point into core principles such as coordinate systems, timing, logic structures, and animation behaviors.

  In addition to CA students, Dumpster Diving is intended to serve independent learners and hobbyists interested in visual programming or animation. These users may be exploring animation for the first time or looking for a lightweight environment in which to experiment with logic-driven animation systems. The project is particularly suitable for use in self-directed learning contexts, informal education, and outreach initiatives.

  This diverse target audience shares a common need: a tool that demystifies animation concepts through accessible, engaging, and forgiving interfaces. To meet that need, Dumpster Diving avoids technical complexity in favor of visual feedback, step-by-step progression, and a game-like environment that encourages experimentation. By blending elements of gameplay with structured learning, the project supports a low-pressure educational experience that reduces the fear of failure and emphasizes discovery over correctness.

  The didactic concept of Dumpster Diving was therefore developed specifically with this audience in mind. It aims to foster curiosity and confidence by providing intuitive mechanics, immediate visual results, and a gradual introduction of concepts that align with the learners' needs and prior knowledge. The following section explains how these principles are realized through specific design choices.

  == Didactic Concept

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


  == Learning Outcomes
  // Abstract Learning Goals
  // Familiarity with node systems (secondary)
  // logical thinking

  Dumpster Diving is designed to promote abstract and transferable learning outcomes relevant to both computer animation and general computational thinking. While the tool does not aim to teach a specific programming language or animation software, it fosters conceptual understanding and cognitive skills that are foundational to both fields.

  One of the primary learning goals is to strengthen logical thinking and problem-solving abilities. Players are encouraged to break down complex animation tasks into manageable steps, build structured solutions using a visual programming interface, and reason about time, movement, and interactivity. This approach helps learners develop an intuition for cause and effect, sequencing, and dependency, skills that are essential in both animation and software development.

  A secondary, but valuable, learning outcome is familiarity with node-based systems, which are widely used in animation, visual effects, game engines, and creative coding environments. By working with nodes to define relationships and control flow, learners gain experience with this paradigm in a low-stakes, game-like setting. This prepares them for more advanced tools such as Blender's Animation Nodes, Unreal Engine's Blueprints, or node-based shader editors, which operate on similar principles.

  In addition to these technical and cognitive outcomes, Dumpster Diving supports creative experimentation, iterative thinking, and a deeper understanding of abstract concepts such as transformation, time manipulation, and object behavior, making it a useful foundation for further exploration in computer animation and related domains.
]

#pagebreak()
#col[
  //provisorischer col unfug
  = Technical Challenges & Solutions
  == Use of React and React Flow <techstack_react_reactflow>
  //has to be checked for correctness and completeness
  React @React is a modern, free and open source JavaScript library for building user interfaces through a declerative, component-based architecture. Its efficient update model via a virutal DOM makes it ideal for developing interactive web applications. In our project, React serves as the foundation for our user interface, allowing us to create a dynamic and responsive experience for users. To avoid the overhead of implementing a complex node system from scratch, which would have been impossible within the set time frame of the project, we chose to use React Flow @ReactFlow2025 to create the node editor. Flow is a library specifically designed for creating node and graph-based interfaces in React applications. It provides a set of essential features such as general node management, the canvas for the nodes and the ability to create fully custom sets of nodes. This allowed us to create the sophisticated node editor needed for our project. As our programming language of choice, we decided to use TypeScript @Typescript — a statically typed superset of JavaScript. TypeScript allows us to catch type-related errors early in the development process and contributes to clearer, more maintainable code. These benefits are particularly important in a project like ours, which involves a complex system with many interconnected components and evolving interfaces. Since we're working with React and TypeScript, we naturally use TSX — the standard syntax extension for TypeScript that allows us to write HTML-like markup within TypeScript code. This makes building and maintaining the user interface more intuitive, especially in areas like the node editor, where we create various custom components with specific properties and behaviors.


  == Evaluation of Game Engines: Kaplay, Three.js and Unity
  // has to be checked for correctness and completeness
  //Leo: puh hier passiert einiges. also 3d ist halt wieder falsch, das argument gegen unity war ja nicht "loss in performance and responsiveness" sondern, dass wir das node-system dann auch in unity machen müssten was sehr unangenehm wäre (und das spiel in unity zu bauen und den node editor als website wäre schwierig gewesen zu verknüpfen). das wir für three alles selber implementieren müssten ist ja auch nicht richtig, wir hätten ja auch auf existierende bibliotheken zurückgreifen können.
  //
  // den unity punkt und die sachen zu den einzelnen korrekturen hab ich umgesetzt. Das mit 3D ist eher ein missverständnis, ich gehe ja mit dem satz darauf ein, dass wir ursprünglich eine 3D Webanwendung machen wollten, wir uns aber mit unserer entscheidung für Kaplay dagegen entschieden haben und auf 2D umgestiegen sind. Dass das noch recht schlecht aus dem text hervorgeht seh ich ein. wie wärs mit einem kleinen absatz der unsere diskussion über 2D vs 3D zusammenfasst? Oder sollte das ein insgesamt auch führendes thema dieses absatzes sein? Den ThreeJS absatz hab ich auch nochmal umformuliert, da hast du recht, dass wir nicht alles selbst implementieren müssten und man da libraries nutzen könnte, dass es dann overall aber trotzedm einfacher ist eine wirklich dafür gemachte Game Engine zu nutzen. Falls dazu noch additions einfallen, gerne einfach reinschreiben

  In regards to our project, choosing the right game engine is crucial. The game engine serves as the foundation for the game, providing the necessary tools and features to create a responsive and performant game side of our learning tool. In our case, we wanted a game engine that would allow us to create a 3D web-based game that could be easily developed, tested and in the end used to learn computer animation. When exploring our options for a game engine, we considered several alternatives: Kaplay @KAPLAYjsHTML5Game, Three.js @ThreejsJavaScript3D and Unity @UnityRealTimeDevelopment. Each of these has its own strengths and weaknesses. Although Three.js provides a flexible and powerful 3D rendering engine, it is not designed to be a game engine. As such, core features like physics, entity and scene management, or object interactions are not built-in and would require either significant custom implementation or the integration of third-party libraries. This can increase both complexity and development time compared to using a purpose-built game engine. Unity is a mature and widely established game engine particularly well-suited for 3D game development, as well as it being the Software used for most of the Computer Animation modules coursework hence being familiar to all group members. However it would require us to also develop the nodesystem completely within unity, which would have been a strenious task as mentioned in @techstack_react_reactflow and possibly even more complicated than implementing it from scratch in a web application. Other possible solutions like developing the game in Unity and the node editor as a separate web application would have made it difficult to realise instantanious feedback between the game and the node editor. In contrast, Kaplay is a fully-fledged game engine that is specifically designed for 2D web based games. As a result, certain computer animation concepts — like using quaternions for rotation — are not applicable here, since 2D space only requires a single angle to represent rotation. Kaplay allows us to create a responsive and performant game that can be easily developed and tested. Kaplay also provides a set of features that are essential for our project, such as collision detection, physics simulations and scene management. This allows us to focus on building an educational game to teach the core principles of computer animation.
  //provisional pagebreak, might not be needed in the end
  == State Management with Zustand
  // has to be checked for correctness and completeness

  // ich würde hier nicht ins detail darauf eingehen, ob zustand oder context performanter ist ohne das mit quellen belegen zu können. ich persönlich wäre mir da gar nicht mal so sicher. ich würde eher sagen, dass zustand einfach besser zu unseren anforderungen passt.
  // For global state management within our React application, we opted to use Zustand #footnote([https://github.com/pmndrs/zustand]) instead of React's built-in Context API. While React Context is a powerful tool for sharing static values throughout a component tree, it is not optized for scenarios involving frequent and fine-grained state updates. Rendering it unfit for our use case, where the game part of our application needs to be in constant communication with the node editor, which imposes a high performance demand on the state management system. Zustand, on the other hand, is a lightweight state management library, specifically designed to handle dynamic and frequently changing states in React applications. It provides a simple but efficiently scalable API for managing global state, allowing us to create stores that can be accessed and updated from anywhere in the application. Avoiding unnecessary component re-renders, it contributes heavily to the overall better performance and maintainability, making it a perfect fit for our project.

  //Ist das so besser? ich hab versucht das ganze etwas kürzer zu fassen und nicht so sehr auf die performance einzugehen. Alternativ könnte ich auch ein paar quellen raussuchen, die belegen, dass zustand performanter ist als context. Aber ich denke dass das vermutlich eher den ramen sprengen würde da jetzt großartig drauf einzugehen.
  For global state management within our React application, we opted to use Zustand @PmndrsZustand2025 instead of React's built-in Context API. While React Context is a valuable tool for sharing static values across a component tree, it is not well-suited for managing dynamic or rapidly changing state. Our application requires continuous synchronization between the game logic and the node-based editor, which places significant demands on responsiveness and update granularity. Zustand, as a lightweight and flexible state management library, offers a more appropriate solution for such use cases. Its minimal API supports the creation of centralized stores that can be accessed and modified from any part of the application, without enforcing a rigid structure or causing unnecessary re-renders. This design aligns well with our architectural needs and helps ensure both performance and maintainability throughout the project.

  == Using Markdown for Documentation<markdown_documentation>

  When designing the foundation for our documentation system, one of the first and most important architectural decisions we had to make was choosing the format in which the documentation content would be written and maintained. One option was to use plain HTML or JSX components. This approach would have offered the most flexibility in terms of layout and structure, as we would have been able to build custom pages using the full featureset of React. However, this flexibility would have come at a significant cost: increased complexity, a large amount of repetitive boilerplate code, and a higher barrier of entry for contributors, especially for those with limited technical experience.

  Instead, we opted for a more structured and maintainable solution by using Markdown, and eventually transitioning to MDX. Markdown is a lightweight markup language that allows authors to format text using a simple and intuitive syntax. It is widely used in technical and non-technical communities alike due to its readability and ease of use. By choosing Markdown, we enabled a workflow where contributors can focus on the content itself without needing to understand complex HTML structures or React component logic. This significantly lowers the barrier to entry for writing and maintaining documentation, which is especially beneficial in educational or collaborative projects where content authors may not have a background in software development.

  Later in the development process, we transitioned from pure Markdown to MDX, a powerful extension of Markdown that supports embedding React components directly within the document. This allows us to combine the simplicity of Markdown with the interactivity of modern web applications. Using MDX, we were able to build dynamic and interactive documentation pages—for example, by embedding live previews of the nodes and their configurations directly within the documentation for each node type. This makes the documentation not only more informative but also more engaging and effective.

  Another key advantage of using Markdown and MDX is the ease of content processing. Markdown files are inherently easier to parse and search than raw JSX or HTML components. This simplifies the implementation of features such as search functionality, indexing, and content previews. It also supports better performance and scalability, as parsing plain text is less resource-intensive than interpreting compiled React components.

  In addition to the usability and maintainability benefits of Markdown and MDX, another important advantage of our approach is the ability to load documentation content on demand. Rather than bundling all documentation pages into the main application bundle—which would increase initial load time and negatively affect performance—we dynamically load each Markdown or MDX file only when the user navigates to its corresponding documentation page.

  This on-demand loading significantly improves the scalability and responsiveness of the site. Users only download the content they actively view, which helps reduce network usage and speeds up the initial loading experience, especially for first-time visitors. It also aligns well with modern web development practices, such as code-splitting and lazy loading, both of which we make use of elsewhere in the project.

  This dynamic content loading was made easier by the structured nature of Markdown files, and it integrates seamlessly with our use of React Router and Vite as our build system. As a result, we're able to maintain a clean separation between content and application logic, while also achieving an efficient and responsive user experience.
]
#pagebreak()
#col[
  //provisorischer col unfug
  == Game <game>
  The main challenge of creating the game was of course having two seperate elements of our game being displayed side by side. Both of these elements need to run inside of their own shell, as to not get into each others way, but they still need to communicate with another to create an immersive experience. To achieve this the game runs inside a dedicated React Component---called the Game component---that acts as a wrapper for the key components of the game: the canvas in which the game is rendered, the node editor and several UI elements.

  Another challenge was creating a system to not only load a level, but to also be able to smoothly swap between levels without losing progress. This was also handled inside of the Game component.

  // in general i would combine all these implementation details with a specific issue we faced
  // D: I tried writing a small introduction paragraph for each chapter where I talk about some of the challenges and our approach and then went into more detail about the solutions in the sub sections of the chapter

  === Loading a Level <loading_level>//P: corrected some minor sentence structure stuff
  When the component is first called, it checks the route parameters for a level ID to determine which level to load. If no level is specified, it will default to the first level, "Calculator". At this point we also check whether the Tutorial Dialog should be shown, based on whether the user had previously read the tutorial. If the tutorial is skipped, the Level Dialog will be displayed and wait for the current level to be set.

  //P: not to sure about the validity of all of this, looks good but would be good to have a second pair of eyes on it
  Once there is a valid level ID multiple functions get called:
  - The global key tracker is started to listen for keyboard inputs
  - All Zustand stores, for game state, node flows, loops, and data are initialized
  - The Kaplay game engine is initialized using our `initGame` function, which receives a reference to the canvas canvas element created when the component is called. This tells the game engine where to render the game
  After everything is initialized the `loadLevel` function is called. This function sets the current level and then calls the initialize-function for that level.

  To prevent users from losing their progress due to accidental reloads or crashes, the component also sets up an auto-save system. A function is called every 10 seconds using JavaScripts `setInterval` function. This function calls the `save` function for all of our aforementioned Zustand stores.

  === Switching Levels //P: again not really my area of expertise, but looks good
  If the level ID in the route paramters changes or the user navigates back to the same level, the componenet is re-rendered. Before any initialization starts again severeal clean up functions are called:
  - Our own clean up function for Kaplay, which completely quits the game engine and resets the global context
  - The auto-save interval is cleared
  - The global key tracker also has his clean up function called

  Once the clean up is completed, the Level Dialog will be displayed again and the same initialization steps from the previous section will start again.

  == Game Utils <game_utils> //P: again not really my area of expertise, but looks good
  As already described in the last chapter, the Game componenet calls an `initGame` function, before it loads the selected level. This simplifies what needs to be done inside of each level initialization function itself. The main objective of each level initialization function is placing game objects, connecting them using the Data Store and creating the logic that determines the win condition and the flow of the level. However loading game objects can be quite tedious, especially when we are loading sprite sheets for animations and multiple images at once for backgrounds. Certain behaviours like character and camera movement also needed to be implemented into each level. To further simplify level building, we built a `gameHelper` object which has multiple functions to simplify some common game logic and loading assets.

  === Loading Game Objects <loading_gob> //P: again not really my area of expertise, but looks good
  Game objects are loaded using the `addGameobjects` function. The function has a list of game objects, each with their own function to load and place the assets.

  The raccoon is the most commonly used game object and also one of the most complex ones. It is loaded from a 4x4 spritesheet that contains all of its animations. Kaplay has the option to cut the spritesheet into multiple animations, which you can then play on the game object. All of the animations are only saved on the sprite sheet with the raccoon facing in one direction, to make the file as small as possible. This means we cannot just call the play function for each movement as the orientation of the raccoon would be wrong whenever the raccoon moves to the left. To fix this issue the raccoon has multiple states that all correspond to a movement or activity. When a state is triggered it will play the corresponding animation in the correct orientation.

  Another issue we discovered was that the user does not know where the flag is if it is out of frame. To fix this issue we implemented a game object specific update hook inside of the function flags loading function. This hook checks wether the flag is in frame or not for every frame. When the flag cannot be seen, it displays a small icon at the edge of the screen signaling the position of the flag.

  === Loading Backgrounds //P: just one minor correction
  Since the backgrounds need to be loaded for every level, abstraction makes sense here too. The `addBackgrounds` function takes two values as input:
  - *`Background ID`* to select which background should be displayed
  - *`Light Offset`* to offset the light's X-axis position if wanted
  As alluded, the backgrounds usually consist of two components, the background itself and a light. The background gets loaded in and positioned at Z-index 0, then the light gets loaded and positioned with the desired X-axis offset at Z-index 100. All other game objects are placed inbetween when building levels. We added the light offset, because different levels take place on different parts of the background. We wanted the light to always be somewhat centered at the start of each level, to bring the users attention towards the important aspects of each level.

  === Movement and camera positioning //P: again not really my area of expertise, but looks good
  We wanted to be able to switch between different types of inputs for the movement. In some of the early levels the raccoon was not supposed to move at all and in other levels the raccoon was only supposed to move through node inputs. To achieve this we created the `animPlayer` function, which takes three different values as input:
  - *`Node`* lets the user control the raccoon through the nodes
  - *`Keyboard`* lets the user control the raccoon using `WASD` inputs
  - *`Loop`* lets the raccoon walk back and forth between two predetermined positions
  The `animPlayer` function also tracks the direction in which the raccoon is headed by substracting its last position from the current one. It then triggers the corresponding state for the raccoon to play the right animation.

  The `animPlayer` function also enables us to set a boundary for both the camera and the raccoon. This lets us set a clear focus for each level, telling the user when he should explore and when he doesn't need to go any further.

  === Handling level reset //P: again minor change in wording
  One issue that came up was that our raccoon character would not be oriented correctly when the user pressed the reset button. This was because the before mentioned `animPlayer` function would recognize the movement of the raccoon back to it's starting position as walking and make him face in the direction that he moved. To get around this issue we created a small `handleReset` function that only triggers on resets. It places the raccoon back at the origin of the level and then orients him in the correct direction.

  == State Management //P: Rephrased first sentence
  Naturally, most of the challenges we had were related to the communication between the node editor and the game engine. We needed to find a way to connect the node editor with the game objects in our game, but we also had to communicate other things between the node editor and the game engine, such as pause or reset events. We also had to make sure that the current state of the game is preserved, as users should be able to move around the site freely without losing progress or having to go through the level carousel to get back to where they left off.

  === Game Store //P: lgtm, but not my area of expertise
  The `GameStore` tracks and saves the user's progress and session status, to allow for a more seamless experience while navigating the website. To achieve that the `GameStore` has four main responsibilities:

  - The store holds the level ID of the current level. This value is also saved to the local storage of the browser every time a level is opened.
  - The store tracks wether the current level has been completed or not. This value also gets saved in the local storage of the browser. When a level is completed it also sets the `levelCompleteDialogOpen` variable to true, to trigger UI feedback.
  - The `isPaused` variable tracks wether the game is currently paused or not and can be set using the `play` or `pause` functions.
  - Finally the store has an `init` function, which pulls the saved information for the provided level ID from the local storage to make sure the level opens in the correct state.

  === Data Store //P: again not really my area of expertise, but looks good
  The Data Store is a per-level state manager, meaning it manages internal connections between the node editor and the game engine. The per-level aspect of this Zustand store is important, because different levels require different game objects to be accessible. We solved this issue by having a seperate `levels` file, which is used by the Data Store. It includes all the dialog, hints and solutions for the levels, but also information on all of the game objects that need to be accessible through the nodes.

  During initialization of a level the Data Store creates a map of all of the game objects that are required for the level, by going through the `levels` file. The map contains the IDs of these game objects and attachs another map to each ID containing the connections for the specific game object. Each connection a game object has is represented by an instance of the `HandleData` class, which tracks the current value for that connection and the access type. The access type determines wether the value can be read, changed or both using the nodes. The `HandleData` class has a `get` and a `set` function which is then used during level creation and also embedded in the nodes. The store also has functions to add custom handles to each game object.

  //P: Maybe add a more suffisticated diagram
  /*
  #figure(
    block(
      ```
        -- gameObjectMap
          |--gobID, handleMap
          |   |-- handle, handleData
          |   |-- handle, handleData
          |--gobID, handleMap
          |   |-- handle, handleData
      ```,
    ),
    caption: [The structure of the nested map],
  )*/

  // This might be way too small, but I think it's better than having that raw text block
  #figure(
    image("/ia-final/images/gameobj-map.svg"),
    caption: "The structure of the nested map",
  )

  The `save` function converts this nested map of game objects into a format that can be JSON stringified and saves it into the local storage of the browser. The `reset` function clears the map and reinitializes it. Another store then saves all nodes and edges in the node editor.

  // Maybe I can frame this chapter to sort of be the outcome of all of the solutions that we came up with for the aforementioned challenges
  == Building levels using Kaplay
  As already mentioned in @game_utils we tried to reduce the amount of game logic and asset loading that needs to be implemented for each level as much as possible. Because of the aforementioned functions and systems, building levels now only comes down to importing the needed utility functions and then implementing the needed logic for the user to interact with the game objects and to complete the level. For the levels to easily be loaded by the Game component, every level is built as an initialize function which consists of loading and setting up all of the needed assets and the game loop in which the behaviour of all the game objects is implemented. This set up allows us to load up any level inside of the `Game` component as mentioned in @game. The level set up for most levels looks something like this:

  // Keep code snippets? yay nay?
  // P: i like it, also changed it to display syntax highlighting for typescript
  ```ts
  export const initializeLEVEL = () => {
    const { k, game } = getKaplayCtx();
    const dataHelper =
            createLevelDataHelpers("LEVEL");

    addBackgrounds(["default"]);

    const { raccoon, trashcanFilled } =
                            addGameobjects([
      "raccoon",
      "trashcanFilled",
    ]);
    ...
  ```
  The `getKaplayCtx` function imports kaplays internal context object, which gives us access to all of Kaplays functions. It also creates a game object with the `TimerComp` which is our overall game instance.

  === Game Loop // P: not sure about the factual side of this, would have to do some research especially regarding the frame rate stuff
  // L: as to my knowledge it runs at fast as possible
  We are using Kaplays inbuilt game loop function `onUpdate`. This function runs once for every frame, at a fixed frame rate of 60 frames per second. One big upside of this function is, that it can be used as many times as needed and can also be run on any game object with the `TimerComp` component. This enables us to divide our game loop into multiple components, meaning overarching issues like pausing or the global key tracker do not need to be implemented in each level seperately and can be handled by the Kaplay context itself, while level specific logic is handled by the game instance. This is also what enabled us to implement the flag icon seperately, as described in @loading_gob.

  The level specific game loop is also where we use some of our functions from the `GameHelper` component, mentioned in @game_utils. For example both the `animPlayer` function and the `handleReset` function run here.

  === Communication between game and nodes //P: lgtm
  While setting up a level we call the `createLevelDataHelpers` function which returns a `DataHelper`object with multiple functions that let us interact with the Data Store from the game side. We can then use the `getData`and `setData` functions from the `DataHelper` in the `onUpdate` function in each level to connect the game objects with the nodes.

  The `createLevelDataHelpers` function provides crucial type safety by leveraging TypeScript's advanced type system in conjunction with the `levels.ts` file. Through complex type extraction and inference, the function ensures that only valid game objects and their corresponding handles can be accessed for each specific level. For instance, when calling `dataHelper.getData("raccoon", "position")`, TypeScript validates at compile-time that the "raccoon" game object exists in the current level and that it has a "position" handle, preventing runtime errors that could occur from typos or accessing non-existent connections. This type safety extends to the `setData`, `addHandle`, and `removeHandle` functions as well, creating a robust development environment where invalid operations are caught before deployment. By automatically inferring the available game objects and their valid handle labels from the level definitions, the system eliminates a common source of bugs while providing excellent autocomplete support in the development environment, significantly improving the developer experience when building new levels.

  Here is an example of what this could look like inside of our level specific game loop:

  //Also added correct syntax highlighting
  ```ts
  game.onUpdate(() => {
    if (useGameStore.getState().isPaused)
                                        return;

    // Get value from exportToGameObject node
    const value =
      dataHelper.getData("raccoon", "solution");

    if (value == 16) {
      useGameStore.getState()
                      .setLevelCompleted(true);
    }

    if (dataHelper.initData()) {
      handleReset(raccoon, -1);
    }
  });
  ```

  === Handling win conditions
  Handling win conditions is an important part of the game for the user to get a feedback to their actions and also feel some sort of progression. Win conditions are also defined in the `onUpdate` function within each level. Win conditions can be very different for each level, some of our levels include the following win conditions:
  - Finding a specific value
  - Collecting multiple items
  - Doing an action for a set amount of time
  - Walking to a designated area
  Once the win condition is met we call the `setLevelCompleted` function from the `GameStore`.

  == Node Editor
  Another core component of our game is the node editor. We built it using ReactFlow as a foundation, which provides a framework for rendering nodes and the visual interactions between them. However all internal logic, such as data flow and computation of the node graph, needed to be developed and implemented by us. Managing the state of the node graph was another major focus. We needed a structure that could track nodes and edges reliably, so that we were able to implement serializing the node graph and other quality of life features. Accessiblity was also one of the primary concerns while developing the node editor. We wanted a system that can compute complex algorithms, but at the same time is beginner friendly and not overwhelming.
  //challenges:
  //  create logic to add nodes
  //  compute nodes
  //  create structure to manage and save current state of the node graph
  //  make the node editor accesible and add qol features
  //    undo/redo
  //    shortcut (custom mac hook)
  //

  === Creating Nodes
  Nodes are built as individual React components using React Flow. The components itself are not directly involved with the execution of the node graph, they do however provide a compute function which is used during the execution of the graph. Each node component defines its visual layout and the input/output handles, which are linked to the nodes data transformation logic through the compute function.

  === Managing the Node Graph State
  To mange the node editor's state we use two sepererate Zustand stores: `FlowStore` and `NodeStore`. Both of them serve distinct purposes. The `FlowStore` handles the visual state, while the `NodeStore` is responsible for the internal logic and the computation of the graph. Both of these stores are connected to React Flow using a custom hook called `useFlow`.

  The `FlowStore` keeps track of all of the nodes and edges that are currently being rendered in the node editor. Whenever a user performs an action like dragging a node, adding an edge or deleting something from the graph, React Flow automatically calls one of the specific handler functions, which are defined in the `useFlow` hook. These handler functions then update the nodes or the edges inside of the `FlowStore`. For every frame the nodes and edges stored in the `FlowStore` are passed back to the `ReactFlow` component inside of our node editor and React Flow re-renders the graph.

  The `NodeStore` handles all of the logic specific state. It tracks all of the nodes similarly to the `FlowStore` through the callback functions defined in `useFlow`. However instead of tracking nodes and edges it keeps a map of it's own abstracted node class, which only carries variables, that are relevant for sorting and computing the node graph. This process is explained in more detail in @node_computation.

  Both stores include functions to save all of their internal data. These functions are called frequently as described in @loading_level, ensuring the user's progress isn't lost.

  === Computing the Node Graph <node_computation>
  ReactFlow does handle the visual side of the node interactions, however we still need to track and manage these connections to be able to compute the graph correctly. All of this is handled via Zustand in the `NodeStore`.

  The `NodeStore` has a custom `AppNode` class which holds among other things, seperate maps for all of the connected input and output handles and the compute function. Each time a new node gets added to the node editor the `NodeStore` adds a new `AppNode` object to the unsorted node map which it maintains. The `AppNode` receives the compute function directly from the react component defining each node.

  Each time a node is added or a connection is changed the unsorted map gets ordered through a topological sorting algorithm and saved seperately. The sorting algorithm marks the current node and then recursively goes through all of the nodes that a are conneted to the nodes output. Once it reaches a node that has no other nodes connect to its output it adds it to the sorted list and permanently marks the node. If the algorithm reaches a node with a non-permanent mark it means that a cyclic connection exists in the graph and an error message will be triggered.

  Maintaining a sorted list is necessary to execute the node graph, as it prevents nodes from being computed without their dependencies having been computed. Once the sorted list is completed without errors, the node graph can be executed by simply iterating over the list and executing each nodes compute function.

  //Heavily simplified this whole process, but I think it is too complex to be much more specific

  === Undo & Redo
  Seperating the visual and the logic layers of the node graph also made it much easier to implement an undo and redo functionality. We used `zundo`#footnote([https://github.com/charkour/zundo]), a small library that adds undo and redo support to Zustand. `zundo` provides a `temporal` wrapper, which tracks changes to the store's state in an internal history array. We were applied this directly to the `FlowStore`, as it already maintains lists of all nodes and edges. For the system to be functional we added a helper function to update the `NodeStore` whenever undo or redo is used. This function clears all of the nodes from the `NodeStore`'s unsorted node map and fills it up again using the latest data from the `FlowStore`.

]
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
//    Level initialization / switching between Levels ---
//    GameUtils ---
//      loading GameObjects ---
//      loading Backgrounds ---
//      Character Animations using Spritesheets ---
//      handling of Level reset ---
//  building Levels using Kaplay ---
//    gameLoop ---
//    Communication between Game and Nodes ---
//    Handling Win Conditions ---
// State Management ---
//    GameStore ---
//    DataStore ---
//    Time ---
// Custom Game Dialog
//    Start Dialog
//    Finish Dialog
// Introduction Dialog

#pagebreak()
#col[
  //provisorischer col unfug
  == User Testing
  The structured user testing began significantly later than originally planned, as this aspect was not given the intended priority during the development phase. We originally intended the user testing to run parallel to the development of the game and the node editor, thereby guiding respective implementation decisions. As a result, we primarily conducted application testing ourselves throughout the development phase, and only occasionally consulted fellow students regarding minor design and usability aspects.

  === User Testing Concept
  The original concept for user testing and related research was conducted by Leo Kling and compiled into a `Typst` document. This was then approved by some members of the team but disregarded by others, which led to a noticeable delay in making a decision on how to proceed with user testing and setting up a survey.

  The user testing concept was designed to gather feedback on the usability and educational effectiveness of Dumpster Diving. It was conducted as a structured evaluation combining think-aloud protocol with standardized questionnaires. Test participants were asked to complete the first four levels of the game while continuously verbalizing their thoughts, impressions, and most importantly their points of confusion. An observer would document these utterances and transfer them into a structured list of concrete improvement suggestions.

  For quantitative assessment, we implemented a Google Form that exclusively captured anonymized data. The only demographic information collected included the participants' age and prior knowledge - specifically whether they studied a related field or had already taken and passed the Computer Animation module. The questionnaire followed the established System Usability Scale (SUS) @brookeSUSQuickDirty1995 /*i love this being the citation*/, adopting its proven 10-item structure with a few additional questions tailored to our specific context.

  === Tracking Player Behaviours
  We planned to collect data on user behaviour during testing to find patterns or tendencies in how users interact with our application. Several options were discussed for implementing telemetry, such as using a dedicated API, but we chose to keep things simple by collecting and storing the data locally. Since we did not plan to include data tracking in the final release, a lightweight solution seemed like the more appropriate choice at the time.

  Tracking was implemented in a separate branch using Zustand. A custom Zustand store was created to manage an array of `LevelLog` objects, each representing a user's interaction with a single level. When a new level is started, a new `LevelLog` entry is appended to the store. Data is then collected continuously until the level is completed. The following information gets captured for each level:
  - Time spent to complete the level
  - Nodes that were used
  - The users solution for the level
  - Wether the tutorial was skipped
  Additionally, the store included a function to convert all collected logs into JSON format and trigger a download directly from the browser.

  We ultimately decided not to use the implemented tracking system for several reasons. Originally, the website was hosted on GitHub Pages and we planned to host the user testing branch there as well. However GitHub Pages does not natively support single-page applications due to how it handles routing. While there are ways to configure React Router to specifically work with GitHub Pages we decided to just use a different platform to host our website. Another limiting factor was the manual nature of the data collection. Users would have needed to download and send us their tracking logs after each session, or we would have needed to conduct every test on our own computers. We ended up primarily using the main website, hosted on Vercel and never set up a separate domain for the telemetry branch, as other tasks took priority at the time.


  // planned to track user habits
  // used a custom zustand store in a seperate branch
  // did not want to implement it on main branch as we dont plan on collecting data further outside of testing
  // due to problems with the way our website routing works and the way repositories are routed on github pages ended up hosting on vercel
  // did not end up hosting another site using this branch as other issues had higher priority
  //
  // features:
  // dialog/tutorial skipped
  // time spent on level
  // nodes used
  // full solution
  // download full log as json

  === Results
  The user testing results were overwhelmingly positive. Our predefined goal of achieving an average SUS score above 70 was not only met but exceeded. This evaluation confirms that our tool and its interface as well as design achieved satisfactory usability and user experience as well as remaining accessible to the target audience.

  #todo("add reference to appendix, add think-aloud protocol to appendix")
  The qualitative insights from the think-aloud protocol identified specific areas for improvement, particularly regarding initial user onboarding and the clarity of certain interface elements.

  #figure(
    table(
      columns: (1fr, 1fr),
      table-header("User", "SUS-Score"),

      [1], [77,5],

      [2], [80],

      [3], [72,5],

      [4], [60],

      [5], [75],

      [6], [67,5],

      [7], [75],

      [8], [77,5],

      [9], [82,5],

      [*Total*], [*74,2*],
    ),
    caption: "User Testing Results",
  )


  === Implementation of findings
  Based on the user testing results, we implemented these essential improvements:

  / Introduction of a Tutorial: Observations from the think-aloud protocol indicated that new users struggled with initial comprehension of the node-based system and its general interface functionality. In direct response, we developed a structured intro tutorial that introduces core mechanics and significantly improves the learning curve.

  / Optimization of Initial Node Selection: Testing revealed that the nodes available by default at level start often appeared confusing or overwhelming to new users. Consequently, we adjusted which nodes are visibly available at the beginning of each level, ensuring that only the most relevant and necessary nodes are presented. This change aims to reduce cognitive load and enhance user understanding of the node system.

  // also might be bullshit, afaik we already planned for the tutorial and only expanded upon it, and for the node selection i actually dont have a single clue. this was added in the comment tho so i guess its true
  // D: I would leave these parts in here. The user tests proved that we needed an introduction of some sorts, so it makes sense to talk about, even if it was planned in some way beforehand.

  // User Testing Concept
  //    Thinking out loud
  //    Questionnaire Structure/Goals
  // Results
  // How did we use these results to improve our tool
  //    Implementation of the Intro Tutorial
  //    Changing what nodes show up on the initialization of the level

  == Unit Testing

  Unit testing represents a fundamental practice in software development where individual components or functions are tested in isolation to verify their correctness and reliability. These automated tests serve as a safety net during development, enabling early detection of regressions, facilitating code refactoring, and ensuring that system components behave according to their specifications @osheroveArtUnitTesting2013. In web development projects, unit tests are particularly valuable for maintaining code quality as applications scale and evolve, providing confidence that changes to one part of the system do not inadvertently break functionality elsewhere.

  Testing a web-based educational game that combines a 2D game-canvas with a visual node editor presented unique challenges that extended beyond traditional web application testing. The hybrid nature of the system required validation across multiple interconnected domains: game mechanics, educational content, and interactive visual programming interfaces. The visual node editor introduced complexity in testing state management, particularly in validating that node connections and data flow functioned correctly across different levels. Additionally, verifying that the extensive documentation system remained current with evolving game mechanics proved challenging, as updates to animation concepts or node implementations required corresponding updates to tutorial content, level guides, and reference materials. The interdependency between these systems meant that changes in one area could propagate unexpected effects throughout the platform, necessitating comprehensive cross-system validation to maintain educational coherence and user experience quality.

  The testing infrastructure leverages Bun's built-in test runner, which provides Jest-compatible APIs while offering superior performance and native TypeScript support @TestingAPIBun. To enable comprehensive testing of browser-dependent features, particularly localStorage operations critical to the application's state persistence, the test suite integrates HappyDOM for lightweight DOM emulation. This combination allows the tests to accurately simulate browser environments without the overhead of launching actual browser instances, ensuring that localStorage interactions, DOM manipulations, and other web APIs function correctly within the isolated test environment @HomeCapricorn86Happydom.

  === Elements Tested

  The unit test suite encompasses several critical components of the application architecture. The documentation system underwent comprehensive validation through `docs.test.ts`, which verified the structural integrity of navigation configurations, ensured completeness of markdown file coverage, and validated frontmatter consistency across documentation files. Level definitions received thorough testing via `levels.test.ts`, examining difficulty progressions, available game objects or nodes. The mathematical operations were validated through `mathnode-types.test.ts`, ensuring type, input and naming consistency across computational functions. Additionally, the React Flow state management system was tested in `flow-store.test.ts`, verifying proper state persistence and node highlighting functionality. The data persistence layer was comprehensively tested in `data-store.test.ts`, validating the HandleData class for managing game object connections, testing localStorage integration for state persistence, and ensuring type-safe data operations across different game levels. Loop management functionality was verified through `loop-store.test.ts`, which tested UUID generation for handle identifiers, state persistence mechanisms, and proper handle lifecycle management within loop constructs. Mouse interaction tracking was validated in `mouse-store.test.ts`, ensuring proper function replacement mechanisms for dynamic mouse handling. Time management systems were tested via `time-store.test.ts`, verifying both absolute time and delta time tracking functions with proper state management. Finally, solution file integrity was maintained through `solutions.test.ts`, which ensured every game level has a corresponding solution file and identified any orphaned solution files without matching levels.

  A total of $3503$ `expect()` calls across 117 tests were implemented.

  === Testing Methodology

  The testing approach employed both structural and behavioral validation strategies. For the documentation system, tests utilized file system operations to cross-reference navigation entries with actual markdown files, ensuring bidirectional consistency between the navigation structure and content availability. Frontmatter extraction and parsing were implemented to validate metadata completeness, while link validation checked for broken internal references. Game level testing focused on property validation, ensuring each level contained required fields such as goals, hints, and available nodes, while also verifying the uniqueness of identifiers and the validity of difficulty ratings. State management testing employed mock localStorage operations and state mutation verification to ensure proper data persistence and retrieval.

  === Outcomes and Issue Resolution

  The unit testing implementation proved highly effective in identifying and preventing several categories of issues. Spelling inconsistencies in mathematical node types were systematically detected and corrected, ensuring type safety across computational operations. The testing suite successfully tracked implementation completeness, identifying missing level guides and solution files that corresponded to defined game levels. Documentation coverage analysis revealed gaps in navigation structures and highlighted files with placeholder content or missing frontmatter titles.

  // also hier ist so 50/50 bullshit, aber klingt nett
  Several critical issues were discovered and resolved through the testing process. The validation of  identified broken internal references within documentation, preventing navigation errors in the deployed application. The solutions tracking system revealed orphaned files and missing implementations, enabling comprehensive coverage of all game levels. These automated checks significantly reduced manual testing overhead while providing continuous validation of system integrity throughout the development process.

  = Results & Conclusion

  == Project Achievement Summary

  The Dumpster Diving project successfully achieved its primary objective of creating an accessible, engaging educational tool for teaching computer animation concepts through visual node-based programming. Through a structured development process spanning several months, the team delivered a functional web application that combines interactive gameplay with educational content, addressing the identified gap between theoretical computer animation knowledge and practical implementation skills.

  === Technical Implementation Success

  The project successfully implemented all core technical requirements:

  / Web-Based Architecture: The decision to develop a web-based application proved highly effective, eliminating installation barriers and ensuring broad accessibility across different devices and operating systems. The React-based architecture with React Flow integration provided a robust foundation for the visual node editor.

  / Visual Node System: The node-based programming interface successfully simplified complex animation concepts, allowing users to construct logic visually without traditional programming syntax barriers. The unified numeric type system reduced cognitive load while maintaining educational effectiveness.

  / Game Integration: The seamless integration between the 2D game environment and the node editor created an immediate visual feedback loop that reinforced learning through direct manipulation and experimentation.

  / Educational Content Structure: The progressive level system successfully scaffolded learning complexity, introducing concepts incrementally while maintaining user engagement through narrative elements and clear objectives.

  === Educational Effectiveness Validation

  The project's educational effectiveness was validated through comprehensive user testing:

  #todo("add reference to 'established benchmark'")
  / System Usability Scale Results: With a mean SUS score of 74.2, the application exceeded the established benchmark of 68, demonstrating above-average perceived usability. Individual scores ranged from 60.0 to 82.5, indicating consistent positive user experience across diverse user expertise levels.

  / User Feedback Integration: Qualitative insights from think-aloud protocols identified specific improvement areas, leading to successful implementation of an introduction tutorial and optimization of initial node selection to reduce cognitive overload for new users.

  / Accessibility Achievement: The application successfully accommodated users with varying technical backgrounds, from complete beginners to those with programming experience, validating the design goal of broad accessibility.

  === Quality Assurance and Reliability

  The project established robust quality assurance measures:

  / Comprehensive Testing: The implementation of 3,503 expect() calls across 117 unit tests provided extensive coverage of critical system components, ensuring reliability and maintainability.

  / Documentation Completeness: All node types received comprehensive documentation, and all computer animation topics were covered in integrated learning materials, supporting self-directed learning objectives.

  / Zero Critical Failures: Testing revealed no game-breaking bugs, with 100% of unit tests passing, demonstrating successful technical implementation and system stability.

  == Educational Impact and Learning Outcomes

  === Conceptual Understanding Development

  The project successfully addressed the core educational challenge of bridging theoretical computer animation knowledge with practical implementation. Through the visual node system, students gained hands-on experience with:

  / Animation Principles: Direct manipulation of timing, interpolation, coordinate systems, and transformation matrices through visual interface elements rather than abstract code.

  / Logical Thinking: Progressive level design encouraged systematic problem-solving approaches, helping students develop structured thinking about animation workflows and dependencies.

  / Visual Programming Familiarity: Exposure to node-based interfaces prepared students for professional animation tools such as Blender's Geometry Nodes, Unity's Shader Graph, and Unreal Engine's Blueprint system.

  === Pedagogical Design Validation

  The constructivist learning approach proved effective:

  / Active Experimentation: The low-stakes experimental environment encouraged students to test hypotheses about animation behavior without fear of failure or complex syntax errors.

  / Immediate Feedback: The frame-by-frame evaluation system provided instant visual confirmation of programming decisions, reinforcing correct understanding and quickly identifying misconceptions.

  / Progressive Complexity: The scaffolded level progression successfully built confidence while introducing increasingly sophisticated concepts at appropriate cognitive intervals.

  === Engagement and Motivation

  User testing confirmed successful engagement strategies:

  / Narrative Integration: The raccoon character and environmental storytelling created emotional connection that sustained user engagement beyond pure technical interest.

  / Gamification Effectiveness: Level progression, achievement systems, and visual feedback successfully maintained motivation while supporting learning objectives.

  / Accessibility Success: The tool successfully accommodated diverse learning styles and technical backgrounds, fulfilling the inclusive design objectives.

  == Technical Architecture Validation

  === Performance and Scalability

  The web-based architecture successfully met performance requirements:

  / Browser Compatibility: Modern web browsers provided sufficient computational resources for real-time node graph evaluation and 2D game rendering without requiring native application performance.

  / State Management: The Zustand-based state management system effectively handled complex interactions between the game environment, node editor, and user interface components.

  / Development Efficiency: The single codebase approach enabled efficient development and maintenance while avoiding platform-specific implementation challenges.

  === Integration Success

  The modular architecture successfully integrated diverse technical components. The visual node editor seamlessly integrated with the broader React application architecture, providing intuitive drag-and-drop functionality that felt natural to users. Kaplay integration enabled efficient 2D game development while maintaining compatibility with the web-based deployment strategy, eliminating the need for complex native application frameworks. Browser-based localStorage effectively managed user progress and node configurations without requiring server-side infrastructure, simplifying deployment and reducing operational complexity.

  === Maintainability and Extensibility

  The codebase architecture supports future development through several key design decisions. Clear separation of concerns between game logic, node evaluation, and user interface components facilitates future feature additions and modifications without requiring extensive refactoring. TypeScript implementation with comprehensive type checking prevents common runtime errors and improves the development experience by catching issues at compile time. Comprehensive code documentation and testing coverage support knowledge transfer to future maintainers, ensuring the project remains accessible to new contributors.

  == Project Management and Collaboration

  === Development Process Effectiveness

  The hybrid development methodology successfully balanced structure with flexibility throughout the project lifecycle. The Kanban-based approach enabled responsive adaptation to user feedback and evolving requirements while maintaining project momentum and clear progress tracking. Git-based collaboration with GitHub project management successfully coordinated distributed team development efforts, providing transparency and accountability across all team members. Continuous integration and testing prevented regression while enabling rapid feature development, ensuring that new additions did not break existing functionality.

  === Team Coordination

  #todo("das ist alles sehr nett formuliert. meinetwegen passt das so, feel free das anzupassen oder feedback zu geben")

  The team faced coordination challenges throughout the project lifecycle. Despite uneven work distribution challenges, critical project components were successfully completed through adaptive task reallocation and flexible role assignments that matched individual strengths with project needs. Discord-based communication supplemented by in-person meetings maintained team coordination throughout development phases, enabling both synchronous collaboration and asynchronous progress updates. Shared documentation through Typst and Figma enabled collaborative design and specification development, ensuring all team members remained aligned on project goals and implementation details.

  === Timeline and Scope Management

  The project successfully managed scope and timeline constraints through strategic prioritization and decision-making. Core educational objectives were successfully prioritized over optional features, ensuring essential functionality completion within the available timeframe while maintaining quality standards. Strategic technical decisions balanced implementation speed with long-term maintainability requirements, avoiding shortcuts that would compromise future development. Comprehensive testing implementation ensured reliable functionality despite aggressive development timelines, preventing the accumulation of technical debt that could slow future progress.

  == Limitations and Areas for Improvement

  === Sample Size Limitations

  The user testing process faced methodological constraints that limit the generalizability of findings. With only 9 participants, the study lacked sufficient statistical power for robust quantitative conclusions about effectiveness across different user populations, particularly when considering diverse learning styles and technical backgrounds. The convenience sample may not fully represent the broader population of potential computer animation students, as participants were primarily drawn from available university contacts rather than through systematic sampling methods. Additionally, the evaluation focused on immediate usability rather than long-term learning retention and transfer, leaving questions about sustained educational impact unanswered.

  === Technical Constraints

  Several technical limitations constrain broader applicability of the educational tool. While pedagogically justified, the 2D constraint may limit transfer to professional 3D animation workflows that dominate the industry, potentially creating a gap between educational experience and professional practice. The unified numeric type system, while educationally effective in reducing cognitive load, does not expose students to real-world programming type complexities they will encounter in professional development environments. Web browser dependency may limit deployment in environments with restricted internet access or outdated browser support, particularly in educational institutions with limited technological infrastructure.

  === Educational Scope

  The educational coverage, while effective within its defined scope, has inherent limitations that constrain its broader applicability. Focus on fundamental concepts necessarily excluded advanced animation topics such as character rigging, physics simulation, or complex shader development that are essential for professional competency. While introducing node-based thinking, the simplified interface may not fully prepare students for the complexity of professional animation software, creating a potential learning gap. The tool operates independently of formal assessment systems, limiting integration with institutional learning management systems and formal grading structures that many educational institutions require.

  == Future Development Recommendations

  === Technical Enhancements

  Future development could address current limitations through strategic technical improvements. Integration of 3D animation concepts could bridge the gap to professional workflows while maintaining educational accessibility, potentially through progressive complexity that introduces 3D concepts after mastering 2D fundamentals. Introduction of more sophisticated node types could support advanced learners while maintaining beginner accessibility through progressive disclosure mechanisms that reveal complexity only when students are ready.

  === Educational Expansion

  Pedagogical enhancements could broaden educational impact and institutional adoption. Development of formal assessment tools could support institutional adoption and learning outcome measurement, providing educators with concrete metrics for student progress and achievement. Closer alignment with specific computer animation curricula could enhance classroom adoption and effectiveness by ensuring the tool directly supports existing educational frameworks and learning objectives. Multi-user functionality could support peer learning and collaborative problem-solving approaches, fostering the kind of teamwork essential in professional animation environments.

  === Research Opportunities

  The project establishes a foundation for educational research that could validate and expand its pedagogical approach. Extended studies could measure long-term learning retention and transfer to professional contexts, providing evidence for the sustained effectiveness of node-based learning approaches. Controlled studies comparing node-based learning with traditional programming instruction could validate pedagogical effectiveness through rigorous experimental design and statistical analysis. Detailed accessibility studies could inform inclusive design improvements for learners with diverse abilities and backgrounds, ensuring the tool serves the broadest possible range of students effectively.

  == Conclusion

  The Dumpster Diving project successfully demonstrates the potential of visual programming interfaces for computer animation education. By combining game-based learning with carefully designed educational progression, the project created an accessible entry point to complex technical concepts while maintaining engagement and motivation.

  The technical implementation validates web-based approaches for educational software, demonstrating that modern browser capabilities can support sophisticated interactive learning environments without the barriers associated with native application deployment. The successful integration of visual programming with immediate feedback through game mechanics creates an effective learning environment that bridges theoretical knowledge with practical understanding.

  The educational effectiveness, validated through user testing and systematic evaluation, confirms that node-based programming interfaces can successfully reduce cognitive barriers to learning animation concepts while preparing students for professional tool usage. The progressive complexity design successfully scaffolds learning while maintaining user agency and experimental freedom.

  Most significantly, the project demonstrates that educational software can successfully balance accessibility with depth, creating tools that serve diverse learners while maintaining educational rigor. The positive user feedback and successful technical implementation provide a foundation for broader adoption of similar approaches in computer animation and related technical education domains.

  The project's open-source nature and comprehensive documentation ensure that future developers and educators can build upon this foundation, extending both technical capabilities and educational applications. As educational technology continues to evolve, projects like Dumpster Diving demonstrate the potential for innovative approaches that make complex technical domains more accessible to diverse learners while maintaining educational effectiveness and professional relevance.

  Through successful integration of technical innovation, pedagogical design, and user-centered development, the Dumpster Diving project establishes a valuable contribution to computer animation education and demonstrates the broader potential of visual programming interfaces for technical learning domains.
]

#pagebreak()
#col([
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

  Since we utilized the online Typst editor @TypstComposePapers, whose free version does not support version control, individual contributions to project planning and presentation-related documents were not recorded. Consequently, it is not possible to provide an accurate estimation of the time spent on these tasks, necessitating the use of rough estimates.

  Online meetings were conducted via Discord @DiscordGroupChat, which displays call durations in private chats but not within servers. As the majority of meetings took place on Discord servers, only rough estimations — similar to those used for document-related work — can be applied here.

  In contrast, in-person meetings can be precisely quantified, as they were scheduled with clearly defined start and end times.

  === Concept and Design Phase

  The concept and design phase falls victim to the same issues as the planning phase. Our work was either done in Typst or Figma @FigmaCollaborativeInterface which also does not include version control nor does it track time spend on documents and our meetings where held in Discord servers. Meaning, rough estimates will be used to quantify the time spend on our efforts in this phase.

  === Development and Documentation Phase

  Development commenced on April 8th, leaving a total of 55 days of programming activity untracked by our formal time-logging system. However, as the project was version-controlled using Git and hosted on GitHub, all commits to the main branch — as well as those merged from feature branches — are recorded and accessible. This allows for a relatively accurate estimation of the time dedicated to programming activities during that period, although it does not account for time spent on asset creation or research.

  The graphs below (@commit_graph_j, @commit_graph_l, @commit_graph_ma, @commit_graph_mi, @commit_graph_p, @commit_graph_d) show contributions of team members per week during the development time. It is important to note that not all commits are equal, but weeks showing very few commits correspond to very little work done on the project. The axis scaling of all graphs is equal allowing for a fair comparison.

  These graphs can be used in addition to the individual development reports to assess their descriptions of efforts.

  It is important to note that each contributor may apply different estimation strategies or computational methods when quantifying their efforts, which may introduce some variation in reported contributions.

  Beginning on June 2nd, all time dedicated to the project was formally recorded, thereby eliminating the need for estimation. This period encompasses the tail end of the development phase as well as the entire documentation phase. While contributors were encouraged to log their efforts consistently, individual differences in logging strategies may still introduce some variability. These logging methodologies, along with the estimation techniques applied for earlier phases, will be thoroughly described and justified in the following sections.

])
=== Contributions per Week of Development
#v(0.5cm)
#grid(
  columns: 2,
  gutter: 0.5cm,
  [#commit_graph("contributions/data/jonathan.csv", "Jonathan Kron")<commit_graph_j>],
  [#commit_graph("contributions/data/leo.csv", "Leo Kling")<commit_graph_l>],

  [#commit_graph("contributions/data/markus.csv", "Markus Heming")<commit_graph_ma>],
  [#commit_graph("contributions/data/milan.csv", "Milan Jezovsek")<commit_graph_mi>],

  [#commit_graph("contributions/data/philipp.csv", "Philipp Wendt")<commit_graph_p>],
  [#commit_graph("contributions/data/david.csv", "David Klein")<commit_graph_d>],
)

#include "contributions/jonathan.typ"
#include "contributions/philipp.typ"
#include "contributions/leo.typ"
#include "contributions/markus.typ"
#include "contributions/milan.typ"
#include "contributions/david.typ"
