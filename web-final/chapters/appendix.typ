#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

= Appendix

== Detailed Task Breakdown by Group
#figure(
  caption: [Project Foundation (April 8 - April 30, 2025)
  ],
  table(
    columns: 3,
    [Issue], [Title], [Description],
    [#1],
    [Proof of Concept / Tech Stack],
    [Initial proof of concept and technology stack decisions for the project foundation],

    [#2], [First Prototype], [Development of the first working prototype to validate core concepts],
    [#12], [Set up react env], [Initial React environment setup and configuration],
    [#13],
    [Decide which game engine to use],
    [Research and decision making for game engine selection (Kaplay was chosen))],

    [#14],
    [Decide which modules to use for styling, layout, etc.],
    [Technology decisions for UI frameworks, styling systems, and layout management],
  ),
)

#figure(
  caption: [Core Node System (April 23 - May 17, 2025)
  ],
  table(
    columns: 3,
    [Issue], [Title], [Description],
    [#4], [Node Types], [Development of different node types for the visual programming interface],
    [#7], [Node Execution], [Implementation of the node execution engine and flow control],
    [#19], [Right click add menu], [Context menu for adding new nodes via right-click],
    [#20], [Grouping], [Functionality to group multiple nodes together for organization],
    [#21], [Node Connections], [System for connecting nodes with input/output handles],
    [#26], [Refactor nodes], [Code refactoring to improve node architecture and maintainability],
    [#27],
    [Allow for MathFloatNode to accept type as input param],
    [Enhancement to math nodes to accept dynamic input types],

    [#30], [New approach for computing the node flow], [Redesign of the node computation and execution flow system],
    [#47], [Node and Node Selection Right Click Menu], [Context menus for individual nodes and node selections],
    [#48], [Node loops], [Implementation of loop constructs within the node system],
  ),
)

#figure(
  caption: [Game System & UI (May 1 - May 30, 2025)
  ],
  table(
    columns: 3,
    [Issue], [Title], [Description],
    [#3], [UI/UX Overall], [Overall user interface and user experience design and implementation],
    [#23],
    [Refactor Select and Dropdown into reusable components],
    [Creation of reusable UI components for consistent interface elements],

    [#24], [Multiple keypresses are not possible], [Fix for handling simultaneous key inputs in the game],
    [#25],
    [Read key-inputs from kaplay instead of react-flow],
    [Migration of input handling from React Flow to Kaplay game engine],

    [#42], [Context menu behaviour], [Implementation and refinement of context menu interactions],
    [#43], [404 Page], [Creation of custom 404 error page for better user experience],
    [#49], [Play/Pause], [Implementation of play/pause functionality for game execution],
    [#51], [Level completion popup/dialog], [Dialog system for level completion notifications and progression],
    [#52], [Tutorial popup/dialog], [Interactive tutorial system with popup dialogs],
    [#70], [Basic Assets], [Creation and integration of basic game assets and sprites],
    [#76], [Refactor NodeEditor.tsx into Hook(s))], [Code refactoring to use React hooks for better state management],
    [#106], [Add Keybinds for Duplicate/Add/etc.], [Keyboard shortcuts for common node editor operations],
    [#107], [Show Keybinds in Context Menus], [Display keyboard shortcuts in context menus for discoverability],
    [#111], [Add a slide in popup for critical notifications], [Notification system for important user messages],
  ),
)

#figure(
  caption: [Documentation & Content (May 17 - June 4, 2025)
  ],
  table(
    columns: 3,
    [Issue], [Title], [Description],
    [#54], [Add docs pages for nodes], [Comprehensive documentation pages for each node type],
    [#81], [Node-Editor in Docs], [Interactive node editor embedded in documentation pages],
    [#89], [Tooltips for NodeEditor Buttons], [Helpful tooltips for all node editor interface elements],
    [#119], [Add CA Content to docs], [Computer Animation educational content for documentation],
    [#123], [Zeit und Game Loop], [Documentation on time and game loop concepts in German],
    [#124], [Bewegung im Raum], [Documentation on spatial movement concepts in German],
    [#125],
    [Steuerung von Zeit, Geschwindigkeit und Wegstrecke],
    [Documentation on time, speed, and distance control in German],

    [#126], [Interpolation], [Documentation on interpolation techniques in German],
    [#127], [Partikelsysteme], [Documentation on particle systems in German],
    [#128], [Rotation], [Documentation on rotation concepts in German],
    [#129], [Kinematik], [Documentation on kinematics in German],
    [#131], [Skinning], [Documentation on 3D skinning techniques in German],
    [#132], [Blendshapes], [Documentation on blend shapes and morphing in German],
    [#133], [Motion-Capturing], [Documentation on motion capture techniques in German],
    [#134], [Bearbeitung von Bewegungsdaten], [Documentation on motion data processing in German],
    [#135], [Physikalisch basierte Animation], [Documentation on physics-based animation in German],
    [#140], [Responsiveness for docs and home], [Mobile and responsive design for documentation and home pages],
    [#139], [Full-text search for docs], [Search functionality across all documentation content],
  ),
)

#figure(caption: [Level Creation & Testing (June 5 - June 23, 2025)], table(
  columns: 3,
  [Issue], [Title], [Description],
  [#5], [Game Design], [Overall game design decisions and level progression planning],
  [#6], [Game Creation], [Implementation of core game mechanics and systems],
  [#68], [Create Levels], [Development of educational game levels with progressive difficulty],
  [#69], [Create Level 1.1], [Specific creation of the first introductory level],
  [#87], [Backgrounds + Floor Assets], [Visual assets for game environments and platforms],
  [#88], [Implement proper character animation behavior], [Character movement and animation system implementation],
  [#90], [Level transition], [Smooth transitions between different game levels],
  [#92], [User testing], [Comprehensive user testing sessions and feedback collection],
  [#97], [User Testing Research], [Analysis and research methodology for user testing],
  [#98], [Telemetry / Track Statistics], [Analytics system for tracking user behavior and progress],
  [#158], [Parenting], [Object parenting system for hierarchical game object relationships],
  [#159], [Movement], [Basic movement mechanics and controls implementation],
  [#160], [Gravity], [Physics-based gravity system for realistic object behavior],
  [#163], [Kinematic], [Kinematic movement system for non-physics based motion],
  [#167], [For Loop Introduction], [Educational level introducing loop concepts],
  [#179], [Sprites], [Character and object sprite implementation and management],
))

#figure(
  caption: [Quality Assurance & Polish (June 12 - June 29, 2025)
  ],
  table(
    columns: 3,
    [Issue], [Title], [Description],
    [#8], [Unit Tests], [Comprehensive unit testing suite for all major components],
    [#29], [Node Unit tests], [Specific unit tests for node system functionality],
    [#71], [Undo for node-editor], [Undo/redo functionality for node editor operations],
    [#168], [Copy and paste], [Copy and paste functionality for nodes and node groups],
    [#183], [Rewrite Hot-Key logic using package], [Refactoring keyboard shortcut system using external library],
    [#187], [Store Unit Tests], [Unit tests for application state management],
    [#188], [Docs Unit Tests], [Unit tests for documentation system components],
    [#189], [Levels Unit Tests], [Unit tests for level functionality and progression],
    [#192], [Host fonts locally], [Local font hosting for better performance and offline capability],
    [#203], [Add images to all levels], [Visual enhancements with images for all game levels],
    [#205], [Add images/gif to tutorial], [Visual aids and animations for tutorial content],
    [#206], [Mention the level guides in the tutorial], [Tutorial improvements referencing level-specific guides],
    [#207], [Fill faq page], [Comprehensive FAQ page content creation],
    [#208], [Fill getting started], [Getting started guide content and user onboarding],
    [#212], [Go through all TODOs], [Code cleanup by addressing all TODO comments],
    [#213], [Some levels crash when using "next" or "previous" level buttons], [Bug fix for level navigation crashes],
    [#214], [Replace TODOs in Imprint and Privacy Policy], [Legal page content completion and cleanup],
  ),
)

== Functional Requirements

#let thing = (number, description, rationale, originator, fit_criterion) => {
  box(stroke: black + 0.01cm, inset: 0.2cm, width: 100%)[
    *Requirement:* #number \
    *Description*: #description \
    *Rationale:* #rationale \
    *Originator:* #originator \
    *Fit Criterion:* #fit_criterion
  ]
}

#thing(
  "DDFR1",
  "The application shall have a landing page with direct navigation to the game.",
  "Ensures users can easily access the main functionality of the application.",
  "Stakeholders, Product Owner, Game Team",
  "When the application is launched in a supported browser, the landing page is displayed and includes a clearly labeled link or button that navigates to the game page.",
)
#thing(
  "DDFR2",
  "The landing page shall contain a level selection screen or contain the option to navigate to a level selection screen.",
  "Allows users to choose their starting point and replay specific levels.",
  "Stakeholders, Product Owner, Game Team",
  "The landing page includes either an embedded level selector or a button/link that, when clicked, transitions to a level selection interface with a list of available levels.",
)
#thing(
  "DDFR3",
  "The landing page shall contain a navigation to navigate to the documentation and the game.",
  "Facilitates access to help resources and main features.",
  "Stakeholders, Product Owner, Game Team",
  "The navigation bar includes labeled links to both the game page and the documentation page, and clicking each link routes the user to the appropriate section without a full page reload.",
)
#thing(
  "DDFR4",
  "If the user has already progressed through the game the navigation shall allow users to automatically go back to the last level they were playing.",
  "Improves user experience by resuming progress.",
  "Stakeholders, Product Owner, Game Team",
  "If a saved game state exists in local or server storage, the button navigating to the game page redirects the user to the last played level upon click.",
)
#thing(
  "DDFR5",
  "The application shall display a game window and a node editor aside each other.",
  "Supports simultaneous interaction with game and logic editor.",
  "Stakeholders, Product Owner, Game Team, Node Team",
  "Upon loading the game page, the UI shows two adjacent panels: one for the game window and one for the node editor, both visible simultaneously.",
)
#thing(
  "DDFR6",
  "The application shall load predefined levels selected by the user in the level selection screen.",
  "Enables structured progression and replayability.",
  "Stakeholders, Product Owner, Game Team",
  "When a user selects a level, the corresponding game state and logic are correctly loaded into the game window and node editor without error.",
)
#thing(
  "DDFR7",
  "The application shall give an option to load the next level upon level completion.",
  "Facilitates smooth progression through the game.",
  "Stakeholders, Product Owner, Game Team",
  "Upon satisfying the win condition for a level, the game window automatically opens a dialog or displays a button with an option to go to the next level.",
)
#thing(
  "DDFR8",
  "The game window shall render game elements and respond to user inputs in real time.",
  "Ensures interactive and engaging gameplay.",
  "Stakeholders, Product Owner, Game Team",
  "All player input (keyboard/mouse) and node changes result in visible changes in the game depending on the level.",
)
#thing(
  "DDFR9",
  "The user shall be able to pause, resume and reset the current level using UI elements.",
  "Provides control over gameplay flow.",
  "Stakeholders, Product Owner, Game Team",
  "The game page UI includes buttons for 'Pause', 'Resume' and 'Reset'. Clicking each button performs the corresponding action reliably across all tested levels.",
)
#thing(
  "DDFR10",
  "The application shall save game and node states persistently (locally or server-sided).",
  "Prevents loss of progress and supports undo/redo.",
  "Stakeholders, Product Owner, Game Team, Node Team",
  "After making changes in the node editor or playing the game, the current state is automatically or manually saved and restored correctly when the user reloads or returns to the game page. This also includes undo/redo functionality for node changes.",
)
#thing(
  "DDFR11",
  "The application shall provide a node editor, allowing users to add, connect and delete nodes using their mouse and keyboard shortcuts.",
  "Enables visual programming and experimentation.",
  "Stakeholders, Product Owner, Node Team",
  "The node editor allows the user to create nodes by clicking, connect nodes by dragging, and delete them via a contextual menu or keyboard key.",
)
#thing(
  "DDFR12",
  "The node editor shall validate node connections to prevent invalid configurations.",
  "Ensures logical correctness and prevents errors.",
  "Stakeholders, Product Owner, Node Team",
  "Invalid connections (e.g., cycles) are visually rejected or flagged immediately with an error tooltip or red highlight and the game stops computing the node graph.",
)
#thing(
  "DDFR13",
  "Changes made in the node editor shall dynamically update the game logic affecting gameplay.",
  "Provides immediate feedback and supports experimentation.",
  "Stakeholders, Product Owner, Node Team, Game Team",
  "After modifying a node configuration, the game reacts in real time (e.g., physics, events) without requiring a manual refresh or restart.",
)
#thing(
  "DDFR14",
  "The game page shall link directly to the needed documentation and level guides.",
  "Supports learning and reduces confusion.",
  "Stakeholders, Product Owner, Game Team, Node Team",
  "The game UI includes links or tooltips inside the nodes or levels that, when clicked, open the relevant documentation page or guide section in the same or a new panel.",
)
#thing(
  "DDFR15",
  "The application shall provide a documentation page with textual and visual content, explaining nodes, level guides and concepts related to the Computer Animation module.",
  "Facilitates self-directed learning and reference.",
  "Stakeholders, Product Owner, Node Team, Game Team",
  "The documentation page loads relevant sections for nodes, levels, and concepts with text and images. Each section can be accessed via direct link or navigation, and renders correctly across supported devices.",
)
#thing(
  "DDFR16",
  "The documentation page shall contain a sidebar or menu to navigate all of the content.",
  "Improves navigation and discoverability of information.",
  "Stakeholders, Product Owner, Node Team",
  "A collapsible sidebar or persistent menu is visible on the documentation page, listing all major content sections. Clicking each item scrolls or navigates to the appropriate section without error.",
)
#thing(
  "DDFR17",
  "Users shall be able to search for specific topics or levels within the documentation.",
  "Enables quick access to relevant information.",
  "Stakeholders, Product Owner, Node Team",
  "A search bar is available that returns results matching keywords in titles or body text of documentation entries. Clicking a result navigates the user to the corresponding section.",
)

#pagebreak()
=== Individual Product Use Cases<use_cases>

#let thing = (
  use_case_name,
  participating_actors,
  flow_of_events,
  entry_conditions,
  exit_conditions,
  quality_requirements,
) => {
  table(
    columns: (1fr, 2fr),
    [*Use case name*], [#use_case_name],
    [*Participating actors*], [#participating_actors],
    [*Flow of events*], [#flow_of_events],
    [*Entry conditions*], [#entry_conditions],
    [*Exit conditions*], [#exit_conditions],
    [*Quality requirements*], [#quality_requirements],
  )
}

#thing(
  "Search Documentation",
  "User enters a query in the documentation search bar.",
  "System filters and displays relevant documentation entries matching the query.",
  "User selects a result to view the corresponding documentation section.",
  "Documentation page updates to show the selected content.",
  "User quickly finds and navigates to needed information.",
)

#thing(
  "Show Toast Notifications",
  "System detects an event requiring user feedback (e.g., error, success, info).",
  "A toast notification appears on the screen with a brief message.",
  "User reads the notification and optionally dismisses it.",
  "Notification disappears after a timeout or user action.",
  "User is informed of important events without interrupting workflow.",
)

#thing(
  "Interact with Node Editor",
  "User clicks, drags, or uses keyboard shortcuts within the node editor area.",
  "System allows adding, connecting, moving, or deleting nodes and edges.",
  "Node editor updates visually in real time to reflect changes.",
  "Game logic updates dynamically based on node configuration.",
  "User can visually program and modify game mechanics.",
)

#thing(
  "Start a Level",
  "User selects a level from the level selection screen or continues from last progress.",
  "System loads the selected level's game state and node configuration.",
  "Game window and node editor display the loaded level.",
  "User begins interacting with the level.",
  "User can play and solve the chosen level.",
)

#thing(
  "Navigate Between Levels",
  "User clicks navigation buttons (e.g., next, previous, or level list).",
  "System loads the corresponding level and updates the UI.",
  "Game window and node editor reflect the new level's state.",
  "User continues gameplay in the selected level.",
  "User can progress through or revisit levels as desired.",
)

#thing(
  "Solve Level",
  "User configures nodes and game logic to meet the level's win condition.",
  "System detects when the win condition is satisfied.",
  "A completion dialog or notification appears, offering next steps.",
  "User acknowledges completion and may proceed to the next level.",
  "User receives feedback and can advance in the game.",
)

#thing(
  "Use Hint Menu",
  "User clicks the hint/help button within a level.",
  "System displays a menu or popup with hints relevant to the current level.",
  "User reads the hint and closes the menu.",
  "Game resumes with the user better informed.",
  "User receives guidance to overcome challenges.",
)

#thing(
  "View Level Guide",
  "User selects the guide option from the game or documentation UI.",
  "System displays the level guide with explanations and visuals.",
  "User reads through the guide for strategies or solutions.",
  "User returns to gameplay with improved understanding.",
  "User can access contextual help for each level.",
)

#thing(
  "Load Markdown/MDX",
  "System needs to display documentation or guide content.",
  "Markdown or MDX files are dynamically loaded and rendered.",
  "Content appears in the documentation or guide section.",
  "User reads the formatted content.",
  "Documentation is easily updated and presented in a readable format.",
)

#thing(
  "Add a New Level",
  "User (admin or developer) initiates the process to create a new level.",
  "System provides a form or editor to define level properties, logic, and assets.",
  "User saves the new level configuration.",
  "Level becomes available in the level selection screen.",
  "Game content can be expanded and maintained.",
)

#thing(
  "Listen for Keyboard Shortcuts",
  "User presses keyboard shortcuts while focused on the application.",
  "System detects and interprets the shortcut commands.",
  "Corresponding actions (e.g., undo, redo, add node) are executed.",
  "UI updates to reflect the action taken.",
  "User can efficiently interact with the application using the keyboard.",
)

#thing(
  "Add/Edit Documentation Content",
  "User (admin or developer) accesses the documentation editor.",
  "System provides an interface to add or modify markdown/MDX files.",
  "User saves changes to the documentation.",
  "Updated content is immediately available to all users.",
  "Documentation remains current and comprehensive.",
)

#thing(
  "Track Keyboard State",
  "User presses or releases keys during gameplay or node editing.",
  "System tracks the current state of all relevant keys.",
  "Game logic or node editor responds to key state changes (e.g., movement, actions).",
  "UI and game state update in real time based on input.",
  "Multiple simultaneous key presses are handled correctly.",
)
