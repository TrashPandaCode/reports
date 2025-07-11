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

=== Documentation<leo_doc_phase>
