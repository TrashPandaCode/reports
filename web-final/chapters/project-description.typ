#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

= Project Description

#col[
  == Overview / Introduction
  As part of the project in the WEB3 and IA (interactive systems) module, we are developing a web-based game that teaches students basic concepts of computer animation in a playful way. The aim is to create an intuitive and motivating learning environment that makes theoretical knowledge tangible through interactive experiments and visual feedback.

  The game is based on the concept of visual scripting, in which users can create animation logic with the help of node-based building blocks - without traditional programming. We use Kaplay and modern web technologies such as React and TypeScript as the technical basis. This combination allows us to design a flexible and high-performance front end that enables the direct manipulation and display of animated content in the browser.

  The project focuses not only on technical aspects such as a modular architecture and a reactive user interface, but also on didactic requirements: The game should be designed in such a way that it helps learners to understand central principles such as keyframes, interpolation, motion sequences and transformation matrices - through their own experimentation and feedback.

  == The Purpose of the Project
  === The User Business and Background of the Project Effort
  *Business:* The project aims to develop an educational game that teaches core animation concepts through a visual, node-based interface. It targets beginners—especially students—with little to no coding experience. The motivation stems from the challenge of making complex animation workflows more accessible and engaging. Traditional teaching tools are often text-heavy or abstract, which can hinder comprehension. The delivered product will help users learn by doing—solving tasks using a playful system that mirrors real-world animation logic in a simplified, interactive way.

  *Motivation:* The motivation behind this project is to make learning animation concepts more intuitive and engaging for beginners. By combining game-based learning with a visual node system, we aim to lower the entry barrier and improve concept retention through hands-on interaction.

  *Considerations:* The user problem is both relevant and serious, especially in educational contexts where abstract animation concepts are often hard to grasp. Many students struggle with conventional programming tools due to their complexity and steep learning curves. This project addresses that gap by offering an interactive, visual alternative designed to reduce cognitive load and improve comprehension. Solving this problem is essential to support more inclusive, effective learning experiences in digital media and animation education.

  === Goals of the Project
  We want to help students understand key animation concepts by providing an engaging, interactive game that uses a visual node-based system to teach through doing.

  === Measurement
  The success of the project will be measured by improvements in user comprehension and engagement. Specifically, we aim to demonstrate:
  - Increased learning gains in animation concepts, measured through pre- and post-tests.
  - Positive usability feedback via System Usability Scale (SUS) scores above 70.
  - High player engagement and enjoyment, measured by Game Experience Questionnaire (GEQ) ratings. We aim to achieve positive ratings with an average of at least 2.8 in the Categories: Competence, Flow, Challenge and Positive affect, whilst keeping ratings low below 1.5 in: Annoyance and Negative Affect.
  - Reduced onboarding time and error rates in node-based tasks across playtest iterations.
  These metrics reflect both educational effectiveness and interface usability, aligning with our project goals.

  == The Scope of the Work
  Currently, users learn computer animation concepts through traditional text-based tutorials and separate software tools that rely heavily on coding or complex interfaces. Many educational resources lack interactive, engaging ways to practice and internalize these concepts, leading to steep learning curves and high frustration rates for beginners.

  The existing process involves manual reading of documentation or watching videos, followed by trial-and-error in professional animation software or programming environments. This approach often results in inconsistent understanding, limited hands-on experience, and low retention of key animation principles.

  Our project aims to replace this fragmented and challenging learning process with an integrated, interactive game that combines teaching and practice through a node-based visual programming interface, making learning more intuitive, engaging, and effective.

  // === The Current Situation

  === The Context of the Work
  The project fits within the broader educational technology and game development environment, targeting users who seek to learn computer animation through interactive tools.
  The web application integrates various adjacent systems and technologies that are essential for its development, operation, and user interaction. These adjacent systems serve purposes ranging from state management and routing to content processing, interaction design, and build tooling. The following breakdown describes these systems and their roles in the project.

  ==== Core Application Framework

  - *React (v19)*
    React serves as the foundational library for building the user interface. All views and UI components are structured as composable React components using modern patterns such as hooks and functional components. React enables the SPA (Single Page Application) behavior and forms the basis for all rendering and user interactions.

  - *React Router (v7.5)*
    React Router manages the client-side routing and navigation. It supports declarative routing patterns, server-side rendering, and route-based code-splitting.

  ==== Node-Based Editor & Visual Components

  - *\@xyflow/react (formerly React Flow)*
    Provides the node-based graph editor used within the application. It enables the creation of interactive, user-editable diagrams and visually represented data flows.

  - *Kaplay (Custom Game Engine)*
    A browser-based game engine. It handles animation within the application.

  ==== State Management

  - *Zustand*
    A global state management library. Used to manage shared state across React components, supporting predictable state updates in complex UIs.

  - *Zundo*
    Adds undo/redo history management to the state layer, crucial for providing a responsive and user-friendly editor experience.

  ==== User Interaction & Accessibility Libraries

  - *Radix UI (React Primitives)*
    A collection of unstyled, accessible UI primitives like dialogs, dropdowns, tooltips, and other interaction patterns required for accessible interfaces.

  - *Downshift*
    Used for multiselection comboboxes and similar input controls with accessibility best practices.

  - *React Joyride*
    Provides interactive onboarding and tutorial tours to guide users through complex features and workflows.

  - *React Hotkeys Hook*
    Enables keyboard shortcut support throughout the application to improve usability and efficiency.

  ==== Documentation & Markdown Handling

  - *Remark / Rehype Ecosystem (remark-gfm, remark-math, rehype-katex)*
    These tools enable parsing and rendering of Markdown with support for GitHub Flavored Markdown, mathematical notation (via KaTeX), and frontmatter metadata.

  - *Gray-Matter*
    Parses Markdown files and extracts frontmatter, which is used for metadata management within the application.

  - *MDX (via \@mdx-js/rollup)*
    Enables writing interactive documentation using Markdown with embedded JSX components, supporting internal documentation and tutorials.

  ==== Search & Data Utilities

  - *FlexSearch*
    Provides fast, client-side full-text search functionality for querying content within the application.

  - *Deep Object Diff*
    Utility for comparing deeply nested objects for detecting and managing complex state changes.

  - *UUID*
    Generates unique identifiers for nodes, elements, and user-created content.

  - *Isbot*
    Detects whether incoming requests originate from bots, assisting in analytics and adaptive content delivery.

  ==== Styling & Design System

  - *TailwindCSS (v4.1)*
    A utility-first CSS framework used for consistent and scalable styling of all components.

  ==== Build & Tooling Infrastructure

  - *Vite (v6.2)*
    A build tool optimized for React applications. Supports hot module replacement (HMR) and optimized production builds.

  - *Bun* Bun is an all-in-one JavaScript runtime & toolkit, complete with a bundler, test runner, and Node.js-compatible package manager.

  - *TypeScript*
    Adds static typing to the codebase, improving code quality, maintainability, and developer tooling.

  - *ESLint / TypeScript-ESLint*
    Enforces code quality standards and ensures adherence to best practices through linting.

  - *Prettier*
    Maintains consistent code formatting across the project.

  - *Babel*
    Handles JavaScript and JSX transpilation for modern browser compatibility.

  ==== Testing Environment

  - *Happy-DOM*
    A DOM environment for unit-testing React components without requiring a real browser.

  - *Bun (Type Definitions)*
    Although primarily used for type definitions here, Bun provides a fast JavaScript runtime for development tools.

  ==== Development Support & Debugging

  - *React Router Devtools*
    Debugging tools for inspecting the router state and navigation flows.

  - *React Refresh / ESLint React Plugins*
    Supports hot module replacement and ensures React best practices during development.

  #colbreak()

  ==== Summary of Architectural Context

  The application is built upon a modern, modular React-based front-end ecosystem. It integrates visual programming interfaces, simulation frameworks, and state management tailored for interactive, node-based workflows. Development is supported by comprehensive tooling for code quality, consistency, and performance. All systems together provide the foundation for a highly interactive and educational web-based platform. Understanding these adjacent systems helps clarify how our game will be used, how it complements existing resources, and what interfaces or data exchanges are necessary. Defining this context ensures the product aligns with user workflows, educational goals, and technical ecosystems, preventing isolated development and enhancing overall usability and adoption.
]
#figure(caption: "The technologies we rely on", image("../images/context.svg"))

#pagebreak()
=== Work Partitioning
#table(
  columns: (1fr, 1fr, 1fr),
  [*Event Name*],[*Input and Output*],[*Summary*],
  [1. User starts the game],[User Input (in)],[Initialize game state and load the tutorial or main menu for the user.],
  [2. User completes a tutorial level],[Tutorial Completion (out)],[Record completion, unlock next level or feature, and provide feedback to the user.],
  [3. User creates or modifies nodes],[Node Data (in/out)],[Update the node graph with user inputs; validate connections and provide real-time feedback.],
  [4. User requests help or hints],[Help Request (in)],[Provide contextual help or tooltips based on the current node or task.],
  [5. Game evaluates node setup],[Node Graph Evaluation (internal)],[Process the node configuration to determine animation results and progress game state.],
  [6. User completes a task],[Task Completion (out)],[Save progress, update user progress, and display success or error messages.],
  [7. System logs telemetry data],[Telemetry Data (out)],[Collect data on node usage, errors, and time spent for analysis and future improvements.],
  [8. User completes post-test surveys],[Survey Data (in)],[Store responses to usability and engagement questionnaires for analysis.],
  [9. Game provides feedback],[Feedback Data (out)],[Deliver feedback based on performance, usability, and learning outcomes.],
)

// === Competing Products

#col[

  == Product Scenarios
  
  This section presents a series of realistic narratives that illustrate how end users are expected to interact with the finished product. Each scenario describes specific tasks and goals from the user's perspective, providing a clear understanding of the product's functionality in practical use. These stories help align development efforts with user needs and guide testing to ensure the product meets its intended purpose
  
  === Product Scenario  List
  + Introduction to Math Nodes:
    The user is introduced to the basic concept of math nodes and how to use them to solve simple equations.

  + Moving the Raccoon:
    The user guides the raccoon character to sit in a trash can by manipulating nodes or controls.

  + Implementing Time Transformation:
    The user implements a time-based transformation using time nodes to control an animation or effect.

  + Using Export Nodes:
    The user learns how to feed results into an export node to trigger actions or finalize computations.

  + Combining Multiple Nodes:
    The user creates more complex node graphs by combining math, logic, and control nodes to achieve desired outcomes.

  + Debugging Node Connections:
    The user identifies and fixes common mistakes in node setups to ensure correct behavior.

  === Individual Product Scenarios
  + *Solving the Math Puzzle:*
    They start the application and see a raccoon standing in front of a wall with an equation. They need to use math nodes to build the equation and calculate the solution. They drag and connect math nodes to perform operations like addition, subtraction, multiplication, and division. Once the equation is complete, they feed the result into the export node's solution handle to verify the answer.
    
  + *Moving the Raccoon:*
    They face a level where the raccoon wants to sit in a trash can. They use movement nodes to control the raccoon's position and guide it to the trash can. Once the raccoon reaches the trash can, the level is completed, demonstrating how to use nodes to move characters within the scene.
    
  + *Creating a Time Transformation:*
    In this level, they are tasked with implementing a time transformation. They use time nodes to modify the speed or timing of animations or events. They adjust parameters and connect nodes to transform the flow of time, creating effects like slowing down or speeding up objects.

  + *Exporting Results:*
    After solving problems or creating effects, they need to output the results. They connect the output of their calculations or transformations into an export node. This sends the final value or trigger to complete the interaction, such as unlocking a door or activating a sequence.

  + *Combining Nodes:*
    Building on earlier tasks, they combine math, movement, time, and export nodes to create more complex behaviors. They experiment with node connections to achieve the desired outcome, learning how different node types can work together to solve problems.

  + *Debugging Node Graphs*:
    If something doesn't work as expected, they review the node setup. They check connections and parameters to find errors or missing links. Through this process, they learn how to debug the node graph to ensure everything functions correctly.
    
  === User Stories

  + *Introduction to Math Nodes*
    _Sebastian learns the basics:_ Sebastian is a 26-year-old student who is working with the application for the first time. He starts the program and sees a raccoon standing in front of a wall with a simple equation like "5 + 3 = ?". Initially, he is somewhat confused by the node-based interface, but the tutorial guides him through the first steps. He learns how to add number nodes from the menu and connect them with an addition node. After a few attempts, he understands the concept of connection lines between nodes. He connects the two number nodes (5 and 3) to the inputs of the addition node and watches as the result (8) is automatically calculated. Finally, he connects the output of the addition node to the export node to confirm the solution. The raccoon congratulates him, and Sebastian feels encouraged to continue.

  + *Moving the Raccoon*
    _Leon navigates the raccoon:_ Leon, a 24-year-old gamer and computer animation beginner, faces a level where a raccoon stands in the middle of a room and a trashcan waits in the corner. He must figure out how to move the raccoon there. First, he searches the node palette for movement nodes, which do not exist, he then finds value and export nodes. He experiments with entering different X and Y coordinates. After a bit of trial and error,  gets the position right. He is proud of his ability to understand the concepts of a coordinate system and adapt them to solve the level.

  + *Creating a Time Transformation*
    _Lisa experiments with time:_ Lisa, an art student with an interest in interactive media, is working on a level where an object rotates too quickly. She wants to slow down time to make the effect more dramatic. She researches online and finds various keywords like TimeScale, Delay, and Clock. Looking back into the Game, she is surprised to see none of the above provided as nodes. Studying the documentation, she notices, that she could just use a multiplication Node to apply a slowing factor to the objects rotation. When she activates the export node by connecting it to her calculation, she sees the object's rotation unfold in beautiful slow motion.

  + *Exporting Complex Results*
    _Marcus solves a complex problem:_ Marcus, a computer science student, has just finished building a node tree that calculates the correct angle and speed needed to launch a projectile. His mathematical nodes have determined that the raccoon needs to jump at a 45-degree angle with a velocity of 12 units to reach the target platform. Now he needs to make this calculation actually trigger the raccoon's jump. He connects the final output of his calculation - the combined angle and velocity result - into the export node. At first, he's not sure if he's connected it correctly, so he double-checks that the connection line is properly attached to the export node's input handle. When he activates the export node, it sends the calculated values to the game system, which immediately causes the raccoon to perform the precise jump he calculated. The raccoon lands perfectly on the target platform, and a door unlocks, allowing progression to the next level. Marcus has successfully learned how to feed his computational results into an export node to trigger the intended game action.

  + *Debugging Node Connections*
    _Anna finds the bug:_ Anna, a methodical programmer, has built a complex node tree, but it doesn't work as expected. The raccoon should move while changing color, but instead it just stays still and blinks. She begins to debug systematically by checking each node individually. First, she tests the movement node systems in isolation and finds that they function correctly. Then she checks the color nodes and discovers that they also work properly. The problem lies in the connection between both systems - she accidentally connected the output of the color node to the position input of the export node, instead of the correct color handle. She corrects the connection. After the correction, the raccoon moves as planned while changing color. Anna has learned an important lesson about the importance of correct node connections.


  == Stakeholders
  === The Client

  The client for this project is represented by the supervising professor from the Faculty of Information, Media and Electrical Engineering at TH Köln, Prof. Dr. Grünvogel. As the academic supervisor and representative of the institution, the professor acts as both the client and the customer, ensuring the project aligns with curricular goals and learning objectives. The client's approval is required for project completion and assessment.

  As this project is developed for educational and demonstrative purposes within a university setting, the client role is filled by faculty rather than a commercial stakeholder. The project is not intended for external commercial use, but for showcasing interactive learning methods and creative technical development.

  === The Customer
  This project is developed within the context of a university course and is not intended for commercial sale. As such, the "customer" is a representative user rather than a traditional buyer. In this case, the customer is best described as university students—particularly those studying computer science, media technology, or related fields—who are expected to engage with the product for learning purposes. Additionally, instructors may also act as indirect customers by integrating the tool into their teaching.

  The educational value of the product lies in its ability to make abstract programming and logic concepts tangible through interactive, game-based experiences. The student-customer seeks tools that are easy to use, visually engaging, and intellectually stimulating. Their goal is to better understand computational thinking and problem-solving through experimentation. Instructors, in turn, are motivated to use the product as a teaching aid that enhances engagement and comprehension in the classroom.


  === Hands-On Users of the Product

  *User Category 1: University Students*

  - *User Role:*
    Learners engaging with the interactive system to solve logic and programming tasks as part of an educational experience.

  - *Subject Matter Experience:*
    Journeyman - Students typically have foundational knowledge of programming and computer science concepts, gained through coursework or self-study.
  
  - *Technological Experience:*
    Journeyman - Comfortable with using software tools and interfaces, though experience with node-based logic editors may vary.
  
  - *Other User Characteristics:*
    - *Physical abilities:* Generally able-bodied; accessibility support (e.g., keyboard navigation) still beneficial.
    - *Intellectual abilities:* Varies, but generally capable of logical reasoning and abstract thinking.
    - *Attitude toward job:* Curious, motivated by progress and success in tasks.
    - *Attitude toward technology:* Positive, though expectations of intuitive UI are high.
    - *Education:* Enrolled in higher education programs (e.g., Computer Science, Media Technology).
    - *Linguistic skills:* Proficient in English or German (UI is in english, as is most computer animation software).
    - *Age group:* Typically 20-30 years old.
    - *Gender:* Mixed (primarly male)
    - *Motivation:* To learn and understand programming through interactive, hands-on activities in a gamified environment.


  *User Category 2: Instructors / Teaching Staff*

  - *User Role:*
    Facilitators who may use the tool to demonstrate concepts or assign exercises to students.

  - *Subject Matter Experience:*
    Master - Deep understanding of computer science, logic, and pedagogy.
  
  -  *Technological Experience:*
    Journeyman to Master - Familiar with a variety of teaching tools and digital learning platforms.
  
  -  *Other User Characteristics:*
    - *Attitude toward job:* Professionally invested in student success.
    - *Attitude toward technology:* Generally open, with practical expectations regarding usability and reliability.
    - *Education:* Advanced degrees in relevant fields.
    - *Linguistic skills:* Proficient in English and/or German.
    - *Motivation:* To enhance learning outcomes and student engagement using innovative teaching methods.
]

=== Priorities Assigned to Users
#table(
  columns: (1fr, 1fr, 1fr, 3fr),
  table-header("User Category", "Priority", "Percentage of Total Users", "Justification"),
  [*University Students*],
  [Key Users],
  [\~85%],

  [Students are the primary audience and main users. The product’s success is defined by its ability to engage them and support their learning. Their feedback and experience are essential to shaping usability and feature development.],
  [*Instructors / Teaching Staff*],
  [Secondary Users],
  [\~10%],

  [While not the main users, instructors influence adoption in academic settings. Their approval is important for integration into courses, but they use the product less frequently. Their requirements are important but take second place to student needs in case of conflict.],
  [*Casual Viewers / Passers-by*],
  [Unimportant Users],
  [\~5%],

  [These users may briefly interact with the system during demonstrations or events but are not part of the intended user base. Their input does not guide product development or requirements.],
)

#col[
  === User Participation
  The key users—students within the course and faculty members overseeing the project—are expected to provide input primarily during the initial requirements gathering, prototype evaluations, and final presentation. Their contributions include domain expertise in educational goals, feedback on usability, and alignment with didactic objectives.

  Expected participation includes:
  
    - Faculty: Offering initial project framing, periodic feedback during development milestones, and final evaluation (Estimated time: \~4-6 hours total).
    - Student Test Users: Engaging with the prototype in test runs to provide usability and comprehension feedback (Estimated time: \~1 hour per participant).
  
  This level of involvement is considered sufficient to determine and validate the necessary functional and non-functional requirements. Participation is organized around academic scheduling to minimize conflicts with routine responsibilities.

  === Maintenance Users and Service Technicians
  Given the nature of the project as a university-based, non-commercial educational tool, there are no dedicated maintenance users or external service technicians. Maintenance responsibilities will likely fall to future students or faculty members who choose to extend, repurpose, or demonstrate the system in subsequent semesters.

  *Maintenance User Profile:*

  - *User Category:* Faculty advisors, future student developers

  - *User Role:* Modify, update, and troubleshoot the system for continued use in an academic setting

  - *Subject Matter Experience:* Journeyman to master (depending on their familiarity with the project topic and course context)

  - *Technological Experience:* Journeyman to master (depending on software development proficiency)

  - Other Characteristics:
    - Likely to have academic motivation
    - Comfortable with documentation and technical codebases
    - Potential turnover each semester due to student graduation or course rotation

  Maintenance requirements include:
  - Clear documentation of setup and deployment (especially relevant since the project is hosted on Vercel and uses modern front-end frameworks)
  - Well-commented code to ease handover
  - A versioning system (e.g., Git) with clear commit history for tracking changes

  As the system may be revisited for future coursework or demonstration, these minimal yet crucial maintenance features ensure the longevity and reusability of the project.

  === Other Stakeholders

  There are no additional stakeholders involved in this project beyond those already identified. The primary participants include the development team (students), faculty advisors from TH Köln, and the hosting provider (Vercel). Since this project is an educational, non-commercial bachelor-level assignment, there are no external sponsors, marketing experts, or business analysts engaged.

  The limited scope of stakeholders simplifies communication and decision-making processes. Any future involvement of external parties would be assessed and integrated as needed, but currently, no other roles are required for the successful delivery and maintenance of the product.
]

// == Mandated Constraints
// === Solution Constraints
// === Implementation Environment of the Current System
// === Partner or Collaborative Applications
// === Off-the-Shelf Software
// === Anticipated Workplace Environment
// === Schedule Constraints
// === Budget Constraints
// == Naming Conventions and Definitions
// === Definitions of Key Terms
// === UML and Other Notation Used in This Document
// === Data Dictionary for Any Included Models
// == Relevant Facts and Assumptions
// === Facts
// === Assumptions
