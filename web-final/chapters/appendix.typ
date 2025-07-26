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
// Hier die kompletten Functional Requirements (hilfe)