#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

= Design

#col[
  == System Design
  === Design goals

  The primary design goals for the system focus on user engagement, educational clarity, and performance responsiveness, in line with the product's role as an interactive, browser-based learning tool. The following goals are prioritized:

  - Responsiveness and smooth interaction:
    - The system should provide immediate feedback to user actions (e.g., node placement, simulation control), with minimal lag, to maintain immersion and reduce frustration.
    - While real-time performance is not mission-critical, frame drops or noticeable delays are to be minimized to preserve a fluid learning experience.
  - Scalability of complexity:
    - The system should gracefully scale from beginner-level visual nodes to more advanced setups without overwhelming the user or compromising usability.
    - Internally, the architecture should support the potential extension of more node types, logical layers, or deeper mechanics without requiring major structural rewrites.
  - Clarity of visualization:
    - Diagrams and visual elements should communicate meaning effectively, especially for abstract programming or logic concepts.
    - Node layouts, labels, and flows must be readable and interpretable without requiring users to memorize symbols or look up meanings frequently.
    - Modularity and maintainability:
      - Code should be written in a modular way to support easy extension, replacement, and refactoring of features.
      - Given the educational setting and potential future re-use, clarity and separation of concerns in the codebase are prioritized over optimization.
    - Accessibility and inclusivity:
      - Though basic WCAG-level support is implemented (e.g., color-contrast choices, ARIA roles), the broader goal is to keep the product inclusive in tone and interface, encouraging participation from a diverse audience with varying levels of familiarity with tech.
    - Aesthetic and motivational design:
      - A playful, slightly whimsical visual tone (with mascot characters and light gamification) is prioritized to keep learners emotionally engaged.
      - A minimalistic and inviting UI is preferred over dense or technically styled interfaces.

  These goals reflect the project's primary function as a learning and exploration tool for logic or programming-like structures, used in classrooms, demonstrations, or self-driven discovery. Since user motivation and ease of comprehension are as important as functional correctness, the system's design must support fast feedback, gradual complexity, and a strong visual narrative.

  *Considerations:*\
  These design goals do not define strict thresholds but rather guide the direction of architectural and UI/UX decisions. Where trade-offs must be made, responsiveness and clarity are prioritized over completeness or deep customization.


  //== Current Software Architecture

  // The current software architecture is a modern, client-side, browser-based application built with a modular and composable front-end stack. It is designed primarily for interactive visual logic building, educational demonstrations, and exploration of programmatic concepts via a node interface.

  // Key technologies and architectural choices include:

  //   - React\
  //     The application is structured using React components with routing handled via React-Router.

  //   - React Flow\
  //     React Flow powers the core visual programming interface. It enables users to create and manipulate node-based graphs in the browser, with support for drag-and-drop, zooming, and custom node types.

  //   - Zustand\
  //     Zustand is used for global state management. It provides a minimal, scalable way to share and manage the application state, particularly the node graph state, simulation state, and game data.

  //   - Radix UI\
  //     Radix UI provides accessible, unstyled primitives that serve as the foundation for dialogs, dropdowns, tooltips, and other interactive components. This helps maintain consistency and accessibility across the UI.

  //   - Kaplay\
  //     Kaplay is integrated as a game-engine for game-related functionality. It is a JavaScript/TypeScript game development library used to enable interactive game logic, animation, rendering, or simulations embedded within or triggered by the node structures.

  //   - Hosting\
  //     The system is deployed on Vercel, enabling serverless static hosting, fast builds, and global CDN distribution with zero backend dependencies.

  // *Motivation:*\
  // This architecture focuses on modularity, usability, and maintainability. It allows for rapid prototyping, ease of contribution, and scalability of logic-based features while ensuring the app remains responsive and visually engaging.

  // *Considerations:*\
  //     - All logic runs client-side, making the system ideal for educational or offline-first contexts.
  //     - Lack of a backend simplifies deployment but may limit scalability or collaborative features.
  //     - Future-proofing considerations may involve:
  //         - Introducing persistent user sessions or cloud storage
  //         - Supporting live collaboration or multi-user editing
  //         - Extending Kaplay or React Flow for advanced simulation features

  // *Example:*\
  // A user visits the site and is greeted by a simple UI constructed with Radix primitives. They add nodes to the React Flow canvas, connect them visually, and immediately see output in kaplay's game canvas. The editor state is maintained via Zustand, and if a specific node involves a game interaction, it leverages Kaplay for rendering and control.

  == Proposed Software Architecture

  // Updated by Mister P.
  //L: ich finde alles supi, aber bei dem overview teil bin ich mir nicht ganz sicher ob dass damit gemeint ist. ich glaube es sollte eher eine overview über unsere software architektur sein (aber da bin ich mir auch nicht ganz sicher)
  === Overview


  The proposed architecture is a modular, client-side web application designed for interactive logic editing using node-based visual programming. It prioritizes performance, maintainability, and a smooth user experience.

  At its core, the system follows a component-based architecture, with a clear separation between the user interface, state management, and game logic. The UI is composed of reusable components that render visual elements and respond to user input in real time.

  The project integrates a visual programming environment enabling users to construct animation logic through node-based graphs. This environment is tightly coupled with a custom game engine responsible for executing and animating user-defined logic.

  State management is centralized and enhanced with undo/redo capabilities, allowing for a smooth, user-friendly editing workflow. The architecture supports lazy loading and code splitting, ensuring efficient resource usage by loading heavy components such as the editor or documentation only when needed.

  // The proposed architecture is a modular, client-side web application designed for interactive logic editing using node-based visual programming. It prioritizes performance, maintainability, and a smooth user experience.

  // *Motivation:*\
  // To deliver a tool that is intuitive, responsive, and accessible, leveraging modern front-end tools with minimal backend complexity. Traditional game development environments like Unity require extensive programming knowledge - for instance, moving a character in Unity typically requires writing $"C#"$ code such as:

  // ```cs
  //   public class PlayerController : MonoBehaviour
  //   {
  //     public float speed = 5.0f;
  //     private Rigidbody rb;

  //     void Start()
  //     {
  //         rb = GetComponent<Rigidbody>();
  //     }

  //     void Update()
  //     {
  //         float moveHorizontal = Input.GetAxis("Horizontal");
  //         float moveVertical = Input.GetAxis("Vertical");
  //         Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
  //         rb.AddForce(movement * speed);
  //     }
  // }
  // ```

  // In contrast, our visual scripting approach allows users to achieve the same functionality by simply connecting nodes together graphically. This eliminates the need for syntax knowledge, debugging compilation errors, or understanding object-oriented programming concepts, making computer animation accessible to students and beginners who can focus on creative problem-solving rather than coding syntax.

  // *Considerations:*\
  // The architecture is optimized for educational use, with future expansion possible for real-time collaboration or backend persistence.
  === Class Diagrams
  #todo("diagramme")
  // Due to the use of React and JavaScript, logic is function/component-based rather than class-based. However, entities are conceptually modeled as follows:

  //     NodeComponent – Represents visual logic blocks.

  //     Connection – Defines edges between nodes.

  //     Store (Zustand) – Manages global app state (e.g., current graph, history).

  //     KaplayGame – Optional component for interactive node simulations.

  // Motivation
  // To encapsulate UI, logic, and state management in clean, testable units.

  // Considerations
  // Diagrams can be maintained as TypeScript interface graphs and flowcharts rather than traditional UML classes.

  === Dynamic Model
  The dynamic behavior is user-driven. Key interactions:
  - Node creation/removal updates global state via Zustand.
  - Edges between nodes trigger dependent behavior.
  - Node values or interactions (e.g., play/pause) reflect real-time updates.

  *Motivation*\
  To provide a reactive, real-time visual experience.

  *Considerations*\
  Node interaction is managed via React Flow hooks. Game simulation nodes may trigger actions in Kaplay.

  === Subsystem Decomposition
  The app is organized into:

  *Editor -* The main workspace of the app, where the primary canvas (React Flow) allows interaction with nodes. Users can create, move, connect, and modify nodes, ensuring a seamless and intuitive experience for building workflows or logic structures.

  *UI Layer -* Includes all user interface elements such as toolbars, modals, and input fields. These components are implemented using Radix UI, ensuring a consistent, accessible, and responsive user experience. The UI layer plays a crucial role in guiding users through the app's functionalities.

  *State Management -* Managed using the Zustand store, which efficiently handles global and local states within the application. This enables reactive updates and high-performance processing of user interactions and application state changes.

  *Node System -* Defines the logic and structure of nodes within the editor. It establishes various node types, their behaviors, and evaluation mechanisms, ensuring accurate input processing and data flow throughout the system.

  *Kaplay Integration -* Refers to the specialized integration of Kaplay for rendering and interacting with game nodes. This includes both visual representation and control logic behind game elements, making the editor a powerful tool for game-related applications.

  *Documentation & Onboarding -* A collection of embedded guides and a level-based learning system designed to introduce users to the app's features and concepts. The goal is to provide structured and accessible tutorials that support both new and experienced users.

  *Motivation:*\
  To simplify maintenance and encourage modular expansion.
  === Hardware / software mapping
  The app runs in any modern browser. No hardware-specific requirements.

  *Motivation:*\
  Maximize accessibility and cross-platform support.

  *Considerations:*\
  Runs on user-side browser. Vercel handles deployment infrastructure.
  // === Data Dictionary
  // #todo("?")
  // // https://www.datenbanken-verstehen.de/lexikon/data-dictionary/

  === Persistent Data management
  Currently, persistence is limited to local state (in-browser). Future versions may support:
  - Export/Import JSON
  - Remote sync via localStorage or cloud storage

  *Motivation:*
  To simplify the product while allowing for future enhancement.

  === Access control and security
  No login or authentication is required in the MVP. Potential additions:
  - Auth0/Firebase for user login
  - Role-based editor access

  *Motivation:*\
  Low security risk in current usage. No sensitive data is stored or transmitted.

  === Global software control
  // Approved und angepasst von L.
  *Content:*\
  Global software control is implemented through centralized state management via Zustand. The system manages three primary global behaviors: undo/redo operations using state history, node-graph state, and game-state logic. Requests are initiated through React component events and propagated via Zustand actions. Synchronization occurs through reactive state subscriptions, where changes automatically trigger updates across all subsystems.

  *Motivation:*\
  To ensure cohesive control flow and prevent state inconsistencies between the visual editor, simulation engine, and user interface components.

  *Considerations:*\
  The centralized approach maintains predictable state transitions while supporting future expansion of collaborative features. Careful state update management is required to prevent performance bottlenecks.

  *Example:*\
  When a user connects two nodes, React Flow triggers an event that dispatches a Zustand action to update the global graph state. This change automatically propagates to the UI layer, Node System, and Kaplay Integration, ensuring all subsystems operate on current data.

  // Global software control describes how the global software control is implemented. In particular, this section should describe how requests are initiated and how subsystems synchronize. This section should list and address synchronization and concurrency issues

  === Boundary conditions
  Handled via:
  - Invalid connections: rejected with visual cues
  - Infinite loops or unconnected graphs: disabled and warned with visual

  *Motivation:*\
  Ensure stability and prevent common user errors from crashing the app. An early warning to common errors also enhance the usability and user experience.

  // == Subsystem services
  // == User Interface
  // == Object Design
  // === Object Design trade-offs
  // === Interface Documentation guidelines
  // === Packages
  // === Class Interfaces
]
