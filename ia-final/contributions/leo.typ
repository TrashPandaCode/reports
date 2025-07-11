#pagebreak()
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

One of my larger contributions was the implementation of a dedicated node editor within each documentation page, allowing users to interact with example nodes directly while reading about them. To support keyboard interaction across the app (especially outside the focused node editor), I replaced the native React Flow and Kaplay key listen.ers with a global key-tracking solution.

I also modernized our notification system by replacing the inaccessible and hook-dependent toast component with a more robust and accessible solution using the `sonner` library. Beyond game features, I added legal imprint content including the privacy and cookie policies, as well as the initial FAQ and Getting Started pages (which were later filled by Jonathan).

To ensure better type safety and stability, I implemented constraints for the available nodes per level, ensuring only valid nodes can be added to a given level. I further strengthened type safety across my level framework to prevent errors during level definition and gameplay.

I continued improving the documentation section—adding a dedicated page for the mouse position node, switching the entire system from Markdown to MDX for richer content capabilities, and integrating all 14 chapters of the Computer Animation script. The material for this was sourced by Jonathan and me (based on our exam preperations) and I handled the translation from German to English, final formatting and conversion to MDX.

Lastly, I began work on a basic documentation search feature that at this stage matches only titles. I also made several UX improvements to the sidebar, including automatic opening and collapsing of sections based on navigation state.

//june


=== Documentation<leo_doc_phase>
