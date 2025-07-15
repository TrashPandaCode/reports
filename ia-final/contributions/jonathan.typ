#import "../lib.typ": col

#pagebreak()
#col([
  == Contributions of Jonathan Kron

  Both I and the other members of the group dedicated significant time and effort to the planning, conceptualization, and documentation phases — this was understood as a shared responsibility. However, I would like to direct the focus specifically on my contributions during the development phase, as the actual workload I undertook — documented in @jonathan_dev_phase — differs substantially from the tasks originally assigned to me.

  According to the initial project planning, I was designated the role of `Programmer: Visual Scripting`, meaning I was to focus my development efforts on the node system. Consequently, I was formally assigned responsibility for the `Node Execution` work package.

  Additionally, I was listed as a contributing human resource in the following work packages: `Proof of Concept`, `First Prototype`, `Node Types`, `Node Execution`, `Unit Tests`, `User Testing` and `Help Tool`.

  As the project progressed, it became necessary for me to independently develop substantial portions of the `Node Types`, `Node Execution`, `Unit Tests` and `Help Tool` work packages. This shift was largely driven by time constraints and the absence of key team members. Accelerating the completion of these components allowed me to redirect my efforts towards `Game Creation` specific tasks, which were falling behind schedule and required additional attention to meet project deadlines.

  === Time Tracking Methodology<jonathan_time_methodology>

  To avoid overestimating the actual time I dedicated to the project and its associated tasks, I have intentionally adopted a conservative approach to time estimation. Specifically, I employ pessimistic estimates for all untracked efforts to ensure that my reported contributions do not exceed the time actually spent.

  For programming-related work carried out prior to the start of formal time logging, I utilize a proven Git-based time estimation algorithm, as detailed in @jonathan_est_tracked_efforts. To validate the reliability of this method, its output is compared against the formally logged time data recorded from June 2nd onward in @jonathan_dev_phase. This cross-comparison serves as a calibration step to assess the consistency and accuracy of the algorithm.

  ==== Estimation of Untracked Efforts

  To estimate untracked efforts — such as work conducted in Typst, Figma, or via Discord — comparisons between the resulting output of these tasks and similar activities for which the time expenditure is known are drawn in @jonathan_plan_phase and @jonathan_des_phase. This is possible because most tasks completed in the planning and conceptualization phases have equivalents in later stages. Concept drawings can be compared to assets I created and the creation of planning and presentation-related documents to documents written during the documentation phase.

  ==== Estimation of Tracked Efforts<jonathan_est_tracked_efforts>

  The algorithm used to estimate version controlled efforts was first implemented by Kimmo Brunfeldt under the name `git-hours`. As taken from the official repository the algorithm works as follows @brunfeldt_kimmobrunfeldtgit-hours_2025:

  + Go through all commits and compare the difference between them in time.
  + If the difference is smaller or equal then a given threshold, group the commits to a same coding session.
  + If the difference is bigger than a given threshold, the coding session is finished.
  + To compensate the first commit whose work is unknown, we add extra hours to the coding session.
  + Continue until we have determined all coding sessions and sum the hours made by individual authors.

  The actual implementation, called `jikyuu` @nate-wilkins_nate-wilkinsjikyuu_2025, used to analyze the `dumpster` repository was a reimplementation of the original `git-hours` algorithm in Rust by Ruin0x11 @noauthor_ruin0x11_nodate with modifications by Nate-Wilkins.

  ==== Formal Time Logging

  As explained in @jonathan_time_methodology my goal was to not overestimate my time spend. My approach to the formal time logging represents this mindset, which emphasizes the recording of periods of focused and productive work on specific tasks. Consequently, for example, during a five-hour meeting, only one to two hours of concentrated effort were documented.

  === Project Planning<jonathan_plan_phase>

  During the project planning phase, I contributed significantly to the preparation of all required documentation and presentations. In addition, I consistently participated in both virtual meetings via Discord and in-person meetings.

  === Concept and Design<jonathan_des_phase>

  During the concept and design phase, I actively extended my contributions beyond my initially assigned responsibilities. My original task was limited to the development of the first prototype, specifically the creation of wireframes for the game interface and the node editor user interface.

  Within this scope, I collaborated on the conceptual design of both the node editor and the game window. I independently created two wireframes representing the game's homepage and developed three additional wireframes addressing level selection in collaboration with Leo Kling. Furthermore, I produced wireframes for a settings menu and a help menu, augmenting these with explanatory diagrams to clarify user interactions.

  At an early stage, I critically engaged with Leo Kling's proposal to introduce a landing page, as I initially preferred a structure that aligned more closely with conventional game interfaces. I expressed concerns regarding the integration of level selection within a landing page typically associated with more business-oriented websites. However, after evaluating Leo Kling's initial landing page wireframe, I was convinced of its merits. I subsequently produced my own landing page wireframe and collaborated with Leo Kling on refining both the landing page and the documentation page designs.

  In a later phase, I also contributed to the project by creating graphical assets for a difficulty scale, intended for use on the homepage.

  // TODO: add time estimation

  === Development<jonathan_dev_phase>

  The month of April marked the initial development stages of the project. I started on the 22nd of April by writing a simple Kaplay initializer function. I then created a game initializer function that calls the Kaplay initializer, establishing the early foundation for the game engine integration. I further developed the user interface to support resizing using the ReactResizePanel component within the Game route which houses a canvas element and the NodeEditor component.

  I established a folder structure for node React components and created a debug solution containing initial nodes for testing purposes. I designed the NodeEditor as a controlled component with callbacks for user interactions. I developed an AddNode menu component to display available node types, allowing users to add nodes to the editor. I implemented the first node interactivity using React state changes, where I enabled nodes to save their state to an internal value and react to changes from connected nodes. This approach was cumbersome to use and maintain.

  On April 23rd, I created a NumberInput component for node based user input and the CustomHandle component to simplify styling, which I later renamed to BaseHandle. The following day, I integrated the NumberInput into Add node handles and I created the LabelHandle component that extends BaseHandle with descriptive labels. I achieved the first successful game-node interaction through the Display Node that I configured to show state information saved to a debug store in Kaplay. I implemented a KeyPress node using ReactFlow key listeners, and I enhanced the NumberInput to display connected values. I created a Multiply node based on the Add node architecture and I added a non-functional test dropdown menu to the KeyPress node.

  On April 25th, I consolidated the NodeHeader, NodeBody, and NodeFooter components into a single NodeContent component for improved maintainability. The next day, I extracted the dropdown menu into its own component and I developed the MathFloatNode with supporting math types and compute constants. I modified the node editor's delete keyboard shortcuts, and I added input constants to determine which inputs are enabled for different math compute types. I removed the Add and Multiply nodes in favor of the more flexible MathFloatNode. I updated the NumberInput parser to handle negative numbers, and I adjusted the game initializer for React strict mode compatibility. I created two data exchange nodes: ExportToGameobject and GetFromGameobject (which was later renamed ImportFromGameobject).

  On April 27th, I implemented functionality for multiple outgoing handles for increased node flexibility. The most significant development occurred on April 29th when I performed a complete rewrite of the node execution system. I implemented a node store containing a map of custom node classes that track node-inputs, -outputs, and -state, along with functions for adding and removing nodes and edges. I designed the system to automatically update input and output maps when connections change, and I created helper functions for parsing and creating ReactFlow edge IDs. I implemented node tree sorting using depth-first search, and I created a compute tree function to process all nodes in the correct order.

  I completed the final implementation on April 30th by rewriting node state updates for the new execution system. I configured each node to store a compute function that receives inputs and results as parameters, and I created a getInput helper function providing access to connected node results. I added cyclic connection detection to prevent infinite loops. I expanded the MathFloatNode with additional compute types, including comparison operations. I created an IfNode (later named Switch) for conditional logic based on boolean inputs. I integrated delta time into the time node and time store, and I configured the node tree to be computed each frame in the game initializer function.

  On May 1st, I added functionality for the MathFloat node to have an initial compute type and began preparing the Export Node for level-based exports. I adjusted the NumberInput component to parse both floats and integers, and I added custom labels for each compute type to provide context-specific information such as displaying "base" for logarithmic operations.

  On May 2nd, I implemented the first iteration for passing values to the next frame through Export and Import nodes using a Zustand store. I created the NodeContextMenu component with initial functionality allowing for simple node duplication and deletion. The following day, I collaborated with Philipp Wendt on the SelectionContextMenu with functionality to duplicate and delete multiple nodes simultaneously.

  I enhanced the KeyPress functionality on May 4th by adding key press types for key down and released events to the key store and KeyPress node. I added highlighting to the KeyPress node when a key is pressed down, and I configured the MathFloat node to default to a specific compute type. On May 5th, I changed the time store behavior to use callback time functions instead of set values for improved performance.

  I added the first unit test on May 7th using Jest for MathNode type consistency verification. The next day, I added the ability for Export and Import nodes to select from a list of gameobjects to export to, and I implemented functionality so that the data store storing gameobject handles and their data is initialized on level load. On May 9th, I started removing useEffect dependencies for better performance optimization.

  I created an EditLabel component for the group node on May 10th, allowing users to change its label. I rewrote parts of the ReactFlow logic so that Group nodes are always prepended to the node list, and I reworked the group resizing logic. The following day, I added functionality to the group node so that it resizes in all directions when a child node is moved. I implemented separate set and get handles for export and import nodes, making their attributes either read or write only. I added functionality to math, keypress, import, export, value and switch nodes so that internal state is copied on node duplication.

  On May 12th, I added contributing guidelines to the readme. I began implementing node loops on May 13th by creating a new loop store tracking all loops and their handles, and I created For Loop start and end nodes. I added a loop status parameter to the compute function so that loop start and end nodes can share state.

  I implemented the main loop logic in the node store on May 14th, where loop start nodes indicate the beginning of a loop by saving their index into a loop object. After computing a loop end node, computation resumes at the saved index, enabling nested loops. On May 15th, I added functionality to the iterations NumberInput field of the node loops and styled the loop connector edges. I added a ConnectorHandle component for use in loops to indicate which loop start and end nodes belong together.

  I performed a loop functionality rewrite on May 16th to ensure correct sorting in the node map sorting algorithm. I added functionality for loops to be created and deleted correctly, implemented the ability for nodes to be added into loops, and together with Leo Kling established the functionality that nodes can only be interconnected when in the same loop. On May 17th, I added helper functions to create single nodes and for loops, and I implemented helper functions for loop edges to have custom colors based on their loop ID.

  I continued development on May 18th by refactoring the GamePopup component, which I later renamed to LevelDialog, using RadixUI. This involved creating a new CustomDialog component and implementing a dialog system displaying multiple messages in the LevelDialog. The following day, I added functionality to remove all edges connected to export or import nodes when they change.

  On May 20th, I created a node-setter store, which I later renamed to flow-store. I designed this store to save all React Flow nodes and added functions for highlighting and resetting node highlighting. I used the node-setter store to highlight nodes with cyclic connections for better user feedback.

  I added an initial multiselection dropdown menu to the import node on May 22nd to enable functionality for exporting and importing values to and from multiple gameobjects. I implemented the functionality for the multiselection dropdown menu and wrote a helper function to get an intersection of gameobject handles for multiple selected gameobjects. This intersection is displayed when more than one gameobject is selected in the import or export node.

  On May 23rd, I focused on styling the multiselection dropdown menu and refactored it into its own component. I then added the multiselection dropdown to the export node. The next day, I extended the functionality of handle add and delete operations for multiselection in both export and import nodes.

  I extended the DocsNodeEditor on May 26th to display for loop nodes and replaced the NodeEditor AddMenu with the right-click AddMenu component. I added the ability for each level to specify available nodes and created dummy export and import nodes for the documentation pages.

  On May 27th, I added documentation for multiple node types including Export, ForLoop, Switch, MathFloat, KeyPress, and Import nodes. I created the MousePosition node that exports the mouse position in the game window and added correct viewport behavior so the camera always follows the player. I also created a help menu that displays level hints.

  I created the initial gamehelper file on May 28th containing functions for adding gameobjects and backgrounds to a level, and I added documentation for the Group node. The following day, I fixed the level cleanup logic so levels can now properly be quit, rewrote the logic to switch to the next level, and added custom success messages when a level is completed.

  On May 30th, I added functionality to load full solutions from JSON files to the help menu, enabling the help menu to add nodes and edges to the node editor. I renamed the node-setter store to flow-store and configured it to also save ReactFlow edges.

  I refactored the help menu on May 31st using the RadixUI Popover component at the suggestion of Leo Kling and added a center panel to the node editor allowing users to navigate to neighboring levels and home. I also added the ability to continue levels after completion. On June 1st, I collaborated with Leo Kling to remake the landing page with a level carousel, and I reworked the level reset button functionality.

  Formal time logging commenced on June 2. According to the algorithm detailed in @jonathan_est_tracked_efforts, the cumulative time estimated for the aforementioned untracked development work amounts to approximately 100 hours. It is important to note that this estimate does not account for time spent on background activities such as researching or reviewing documentation.

  In comparison, the `git-hours` algorithm estimates a total of 61.65 hours for the period from June 2 to July 11, while my formally logged development time during that interval amounts to 37.65 hours. Although this represents a significant overestimation, I consider it reasonable given the substantial amount of time spent reading documentation and conceptualizing solutions to complex problems.

  Consequently, I regard the estimated 100 hours for my programming efforts between April 22 and June 2 as a justified and realistic approximation.

  I continued development into June with focused work sessions tracked by hours spent. On June 2nd, I added logical operators to the math node, including AND, OR, and similar operations (0.25h). The following day, I added documentation strings to all node components and the node store, and implemented toast notifications for wrong loop connections (2h).

  On June 4th, I implemented auto saving and loading for all Zustand stores, which required significant development time (3.3h). This involved creating data serialization for all stores, implementing saving to localstorage at regular intervals, and loading correct level store data from localstorage on level load. Two days later, I created a new level reset button, implemented saving and loading of level completion state, and added display of level completion state on the homepage (0.5h).

  I added functionality for levels to spawn initial nodes on first level load on June 8th (0.5h). On June 9th, I collaborated with Leo Kling on a flow-store undo redo implementation (2.5h), followed by further collaboration on a node deletion rewrite to support the undo redo functionality on June 10th (1.5h).

  I continued undo redo development on June 11th while also fixing the mouse position node with correct coordinate transformations and adding inverse trigonometric functions to the math node (3h). On June 12th, I added unit tests for level definitions (0.25h).

  I added the ability for gameobjects to run functions on export node compute on June 14th and used this functionality to create an inverse kinematics level (1.5h). The following day, I and Leo Kling further developed the inverse kinematics level by adding a level solution and creating a WorldToLocal node for easier 2D coordinate transformations (1.5h).

  On June 17th, I implemented saving functionality for group node edit labels (0.5h). I added functionality to unit tests to use localstorage and reworked the linear time transformation level on June 20th (2h). The next day, I further developed and finished the linear time transformation level, including level solution, hints, and dialog (1.5h).

  I created assets for the joints present in the inverse level on June 22nd and added level solutions for multiple levels including bounce, calculator, parenting, sitting, and move (2h). On June 23rd, I created a looping level and added level descriptions (1h).

  I added functionality for level solutions to load data-store data to support custom gameobject handles on June 24th, implemented hints for some levels, and created level guides for inverse and looping levels (1.5h). On June 26th, I filled the FAQ page with entries. I added explainer videos to the tutorial dialog and filled the getting started documentation page on June 27th (1.5h). Finally, on June 29th, I added unit tests for flow- and loop-store (1h).

  During development on GitHub, new features were integrated through pull requests originating from dedicated feature branches. These pull requests required thorough review; however, as not all team members considered this task to be within their area of responsibility, I devoted a significant amount of time to this process. My contributions included providing meaningful suggestions for code improvements or refactoring, verifying the functionality of new features, and identifying implementation errors.

  It is also worth mentioning the additional effort I invested in maintaining the overall quality and consistency of the project. This included tasks such as removing temporary files that had been inadvertently committed to the main branch, restoring accidentally deleted but necessary code, as well as addressing minor issues related to logging statements or styling.

  === Documentation
])
