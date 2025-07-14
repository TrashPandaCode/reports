#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *

#pagebreak()
#col[

  == Contributions of Leo Kling

  I was initially assigned as a member of the game development team, with the expectation that my primary focus would be on gameplay logic, level design, and related mechanics. According to the initial planning, I was listed as a human resource on all work packages except for `Node Types` and `Execution` and the `First Prototype`. However, due to persistent gaps in participation and accountability within the team, I ultimately contributed to nearly every aspect of the project.

  In practice, I worked across both node development and game development. My responsibilities expanded to including implementing editor functionality, ensuring integration between components, backend logic, and debugging. Often outside the original scope of my role. This shift was not a strategic choice but a necessity. Several team members consistently failed to deliver their assigned tasks or were absent entirely, leaving critical gaps that I had to fill to keep the project moving forward.

  This imbalance led to a highly uneven workload distribution and forced a small subset of contributors (myself included) to shoulder the majority of the development effort.

  === Time Tracking Methodology<leo_time_methodology>

  Similiarly to the approach taken by Jonathan (@jonathan_time_methodology), I have been quite conservative in my time estimation. I have used pessimistic estimates for all untracked efforts to ensure that my reported contributions do not exceed the time actually spent.

  Unlike a typical office environment, where an 8-hour shift may include breaks or periods of lower productivity, my time tracking reflects only focused, task-specific work. Breaks and non-productive intervals were deliberately excluded.

  For programming-related work carried out prior to the start of formal time logging, I utilized a Git-based time estimation algorithm, as detailed in @jonathan_est_tracked_efforts.

  === Project Planning<leo_plan_phase>

  === Concept and Design<leo_des_phase>

  During the concept and design phase, I became involved in areas beyond my original assignment. Although I was initially not responsible for prototyping or wireframing, I contributed extensively to the shared Figma document, which we used as a central platform for design collaboration. The wireframing process was approached rather loosely and without a clear structure early on, so I stepped in to help bring more coherence and direction.

  Jonathan created new wireframes which I reviewed and provided feedback on, adding my thoughts where I felt improvements were necessary. One key concern I raised was about the structure of the early prototypes: they included a traditional "Start Game" screen and a level selection view. This approach didn't make much sense to me given that we were building a web-based experience. I argued that a website should begin with a proper landing page to provide context and information about the project. After discussing this in the group, we agreed to prioritize the design of a landing page.

  Following that decision, Jonathan and I each wireframed a version of the landing page, and we also collaborated on a wireframe for the documentation page. However, as the wireframing process became stagnant, we decided to shift our focus and created a full visual design for the landing page, going beyond low-fidelity prototypes. Leo later implemented this design in code. Eventually, the layout was refined by Jonathan to better accommodate a growing number of levels and to reduce unnecessary visual clutter.

  In addition to my contributions to the site and documentation design, I was also responsible for designing the visual style and layout of the nodes and the node editor. These designs were critical to the usability of the game interface and had to strike a balance between usability, functionality, and aesthetics. Alongside this, I also established the overall style and color scheme of the website, ensuring visual consistency across the node and web components.

  Overall, while design was not my designated responsibility, I contributed meaningfully throughout the phase, especially in shaping the layout and structure of core parts of the user experience.

  #todo("assets")

  === Development<leo_dev_phase>

  // - initialized project on april 8th using bun, vite, typescript and react
  // - also added react flow and tailwind
  // - on april 14th I also added react-router in framework mode, which enabled us to do bundle splitting and thus load the node editor only when the user navigates to the game route.
  // - I do realize those are crucial decisions I made early on and almost entirely on my own, but these decisions were not questioned by the team.
  // - the tech-stack work package was supposed to end on the 16th, so as one can see there was plenty of time to give feedback on the initial decisions from the 8th.
  // - as decribed in @leo_des_phase, I implemented the landing page on the 20th of April, after the project was stale for another week (14th to 20th)
  // - touched up jonathans getKaplayContext method by converting it to a singleton
  // - worked more on the landing page, added a header and footer, and added some sections for content
  // - styled the node editor, nodes and number inputs (as well as a restriction to only allow numbers)
  // - added zustand to the project, which was used to manage the state of the node editor
  // - created an initial "timeStore" to share game time and delta time from kaplay with the node editor
  // - I was also advocating the use of radix-ui for all ui components, which was implemented to great parts by myself, to ensure screen reader compatibility and accessibility

  // - end of april (29th) marked my start of the work on the docs page, which i implemented entirely on my own
  // - started with loading markdown files dynamically (@markdown_documentation)
  // - added a sidebar to navigate through the documentation
  // - added breadcrumbs to the top of the page
  // - mvp was done on 30th of april

  I initialized the project on April 8th, setting up the foundation with Bun, Vite, TypeScript, and React. Early on, I also integrated React Flow and Tailwind CSS to support the visual programming interface and styling. On April 14th, I added React Router in framework mode, a key architectural decision that enabled route-based code splitting—allowing us to load the node editor only when the user navigates to the game route. These early tech stack decisions were crucial and, although made largely independently, were never challenged by the team. The tech stack work package was scheduled to run until April 16th, leaving ample time for discussion and feedback, which unfortunately never occurred.

  As described in my design contributions (@leo_des_phase), I began implementing the landing page on April 20th after a period of project inactivity (from the 14th to the 20th). I also refactored Jonathan's `getKaplayContext` method, converting it into a singleton to fix a bug that occured with the Kaplay version we used at that point. I continued iterating on the landing page, adding a header, footer, and structured content sections.

  During this time, I also styled the node editor interface, including custom styling for nodes and number input fields, with added constraints to allow only numerical values. To manage state cleanly across the node editor, I introduced Zustand into the project and created the initial `timeStore`, which shared game time and delta time from Kaplay with the node editor.

  In parallel, I strongly advocated for adopting Radix UI for all interactive components. I implemented much of this integration myself to ensure screen reader compatibility and accessibility compliance from the start.

  Toward the end of April, on the 29th, I began work on the documentation page, which I developed entirely on my own. I implemented dynamic loading of Markdown files, built a sidebar for navigation, and added breadcrumbs to aid user orientation. The minimum viable product (MVP) of the documentation page was completed by April 30th.

  // may
  // - initially node documentation was intended as a popup in the node editor
  // - this was then changed to a seperate page
  // - initial pages for the node documentation were created by me
  // - search functionality for the AddNode menu was implemented by me
  // - level loading and a framework for creating levels
  // - levels are loaded based on the url
  // - refactor editor ui to different components
  // - play/pause functionality and button for game and editor
  // - styling of node editor/components and icons using radix icons
  // - expanded search functionality to include and display sub options of the math node
  // - added keyboard controls to the AddNode menu
  // - initial draft for the structure of exposing gameObjects to the export and import nodes
  // - added google fonts and a custom font (iosevka) to the project
  // - fixing a bug that occured when navigating between levels that caused kaplay to crash, switched to alpha version of kaplay by forking and building ourselves and cleaning up kaplay when navigating between levels
  // - adding the ability to remove handles from the export node
  // - reworked the visuals of the handle adding in the export node
  // - added a custom tooltip component using radix-ui
  // - added tooltips to all node-editor components
  // - added the ability to display a seperate node-editor in the documentation page for each node
  // - added a custom global key-tracker to replace the react-flow and kaplay key listeners, to ensure that keys are registered even when the node editor is not focused
  // - added a new toast/notification component using "sonner" to replace the previous toast component (which was not accessible and required the use of hooks, which could not be called from library code)
  // - added legal prints contents (imprint, privacy policy, cookie policy)
  // - added empty faq page and getting stated (later filled by jonathan)
  // - added typesafety for the "availableNodes" in each level, to ensure that only nodes that are actually available in the game can be used in the node editor
  // - added more typesafety to the levels framework to ensure that there are no errors during creation of levels (only valid gameobjects can be used)
  // - added the mouse position node documentation page
  // - reworked the documentation framwork to work with mdx files instead of markdown files, to allow for more complex documentation pages
  // - added all 14 chapters of the computer animation script to the documentation page. the contents of these were provided by Jonathan and me and transcribed from german to english and adjusted for markdown by me.
  // - added first basic search to docs (only searches for titles, not content yet)
  // - some behavior changes to the documentation nav-sidebar, opening and closing sections if navigated to the page

  Following the initial MVP of the documentation page, I continued expanding its functionality and integrating it deeper into the game experience. Originally, I implemented node documentation as popups within the node editor, but this approach was soon abandoned in favor of a separate documentation section. I created the initial documentation pages for individual nodes and implemented a search function within the "Add Node" menu to make them easier to find. I also developed the framework for loading levels based on the URL, enabling us to structure and preview each level independently.

  I gradually refactored the editor UI into smaller components, introducing play/pause controls for the simulation and matching buttons in the interface. I was responsible for styling most of the node editor, including consistent iconography using Radix Icons, and enhanced the search functionality to show nested options for complex nodes like "Math", showing sub-options like "Addition". I also implemented keyboard navigation for the "Add Node" menu to improve accessibility.

  Another contribution was my implementation for exposing game objects to the export and import nodes, which laid the groundwork for making these nodes usable. I also added a custom font setup using Google Fonts and Iosevka, further improving the visual identity of the project.

  When we encountered a critical bug that crashed Kaplay when navigating between levels, I diagnosed the issue with Jonathan, forked the library, and switched us to a custom-built alpha version. We also added internal cleanup procedures to ensure Kaplay was properly reset between levels. Additional improvements followed, such as enabling removal of handles from the export node, redesigning the visual behavior for adding handles, and creating a custom tooltip component using Radix UI—applied throughout the node editor for consistency and usability.

  One of my larger contributions was the implementation of a dedicated node editor within each documentation page, allowing users to interact with example nodes directly while reading about them. To support keyboard interaction across the app (especially outside the focused node editor), I replaced the native React Flow and Kaplay key listeners with a global key-tracking solution.

  I also modernized our notification system by replacing the inaccessible and hook-dependent toast component with a more robust and accessible solution using the `sonner` library. Beyond game features, I added legal imprint content including the privacy and cookie policies, as well as the initial FAQ and Getting Started pages (which were later filled by Jonathan).

  To ensure better type safety and stability, I implemented constraints for the available nodes per level, ensuring only valid nodes can be added to a given level. I further strengthened type safety across my level framework to prevent errors during level definition and gameplay.

  I continued improving the documentation section—adding a dedicated page for the mouse position node, switching the entire system from Markdown to MDX for richer content capabilities, and integrating all 14 chapters of the Computer Animation script. The material for this was sourced by Jonathan and me (based on our exam preperations) and I handled the translation from German to English, final formatting and conversion to MDX.

  Lastly, I began work on a basic documentation search feature that at this stage matches only titles. I also made several UX improvements to the sidebar, including automatic opening and collapsing of sections based on navigation state.

  //june
  // - cleaning up carousel component on the landing page together with jonathan
  // - added categories and difficulty to the level-cards component on the landing page using icons created by jonathan
  // - made the edges in the node-editor deletable with a button display in the center of the edge
  // - added dialog content to the first and second level
  // - added success message to the second level
  // - renamed the url from a /game path to /level
  // - refactored the tooltip component to allow custom styling
  // - added a warning to the game when opened in a small window or on a mobile device
  // - made the documentation page responsive
  // - made the landing page responsive
  // - added fulltext search to the documentation page
  // - show a short description of the search item in the search results
  // - added a loading indicator for the fulltext search
  // - added dialog and goals to the third level ("bounce")
  // - make the keytracker clear its state then the window is blurred or unfocused
  // - adjust the nodes avaiable in the bounce level
  // - added an "attributions" page, listing all libraries and resources used in the project
  // - cleaned up the goals dialog implemented by Markus
  // - reworked the level dialog to be more simple and readable
  // - cleaned up the tutorial implemented by Markus to be more readable
  // - collaborated with Jonathan on an Undo-redo implementation using the Zustand middleware "zustand-undo" to allow users to undo and redo their actions in the node editor
  // - reworked all context menus to be positioned correctly. before their position was based on some magic numbers. I used the actual rendered size of the context menus
  // - rewrote the tutorial entirely using react-joyride. no more manual positioning of elements, no more magic numbers, accessible and keyboard navigable
  // - display shortcuts in the tooltips (if available)
  // - rewrote Jonathans MultiSelectDropdown component used in the import and export nodes to be able to change the order of the selected items. this is important for for-loops to change the order of iteration
  // - added unit tests for the documentations pages, covering both contents and functionality
  // - added (empty) level-guide pages
  // - added tests for the level-guide pages
  // - added full typesafety to the data-store. this included a levelDataHelper to ensure that only the data of game objects that are actually available in the game can be modified. the gameobjects avaiable and their properties are loaded dynamically from the LEVELS structure.
  // - due to the creation of levelDataHelper I rewrote all levels at that time to use the new structure, which also allowed me to remove some unused code from the levels
  // - rewrote the entire gameHelper file to provide a more consistent and robust (and typesafe) interface to the game logic. this also included changing all levels to reflect these changes
  // - added a displayName property and functionality to the ModifiableGameObject type, which (if defined) is used as the display name of the game object in the export and import nodes. this allows reusing game objects accross levels for different purposes, while still being able to display a meaningful name in the node editor
  // - cleanup and bug-fixes of both level contents and level metadata for multiple levels
  // - created "reverse" level, which is based on jonathans "linear" level and requires the user to do a time transformation
  // - created "soap" pixel art asset for the inverse kinematics level
  // - created a box asset for the "loop" level
  // - added dialog content for the "inverse" level
  // - added level guides for the linear, calculator, reverse, forward, playground and move levels
  // - removed the google fonts dependency and replaced it with a local font file, to remove cookies
  // - added the collapsible components for the faq page, which allows users to expand and collapse questions
  // - updated the tutorial to include a reference to the level guides
  // - added doc-strings to a large portion of the codebase (items both from me and others)
  // - added a coverage script that checks the amount of doc-strings and generates a report
  // - added more doc-strings to raise our coverage to 90%
  // - added more content to the landing page

  As development progressed, I collaborated with Jonathan to clean up the carousel component on the landing page and added difficulty levels and categories to the level cards using iconography he created. In the node editor, I implemented deletable edges by adding a small button to the center of each connection, improving usability when editing node graphs.

  I contributed dialog and success messages to the first few levels, including the bounce level. I also renamed the game route from `/game` to `/level` to make the URL structure more meaningful and refactored the tooltip component to support custom styling. To improve the user experience on various devices, I added a warning for small screens or mobile usage and ensured that both the landing and documentation pages were fully responsive.

  I expanded the documentation with full-text search functionality, including short content previews in search results and a loading indicator for improved feedback. I also created and added dialogs and adjusted node availability for the bounce level, and introduced an attributions page listing all third-party tools and libraries used in the project.

  I cleaned up and simplified the goals dialog and level dialogs originally implemented by Markus to improve readability and consistency. The same was done for the tutorial, which I later rewrote entirely using `react-joyride`. This allowed me to remove all the previously hard-coded positioning and replace it with an accessible, keyboard-navigable onboarding system. Tooltips were updated to optionally show keyboard shortcuts, making controls more transparent to users.

  To improve the import/export node functionality, I rewrote Jonathan's `MultiSelectDropdown` to support reordering of items—an important feature when controlling loop iteration order. In collaboration with Jonathan, I also added undo-redo support in the editor using the `zundo` middleware.

  On the technical side, I reworked all context menus so their positions are based on rendered dimensions instead of arbitrary offsets. I added unit tests for the documentation and level guide pages to ensure content correctness and UI stability. I also introduced full typesafety to the node editor's data store by creating a levelDataHelper, which dynamically constrains available object data based on the current level definition. This required me to rewrite all existing levels and allowed for the cleanup of deprecated code.

  Alongside this, I rewrote the gameHelper file to create a more reliable, consistent, and type-safe interface to the game logic. I also introduced a `displayName` property to the `ModifiableGameObject` type so the same object could be reused across levels with context-appropriate labels in the node editor.

  Throughout development, I cleaned up and fixed bugs in level content and metadata, and created the "reverse" level—based on Jonathan's linear level—which required a time transformation to solve. I also designed and created new pixel art assets: a "soap" item for the inverse kinematics level and a box for the loop level. I contributed dialog and level guide content for various levels, including inverse, linear, calculator, reverse, forward, playground, and move.

  To improve privacy and performance, I removed our dependency on Google Fonts and replaced it with a self-hosted version of the typefaces. I implemented collapsible FAQ sections, updated the tutorial to reference the level guides, and added doc-strings to large portions of both my own and others' code. To track documentation quality, I added a coverage script that analyzes how much of the codebase is documented, then raised coverage to over 90% by adding additional comments and annotations.

  Lastly, I returned to the landing page and enriched its content to better introduce and communicate the purpose of the project.

  === Documentation<leo_doc_phase>
]
