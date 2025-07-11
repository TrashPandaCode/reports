#pagebreak()
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

The algorithm used to estimate version controlled efforts was first implemented by Kimmo Brunfeldt under the name `git-hours` #footnote([https://github.com/kimmobrunfeldt/git-hours]). As taken from the official repository the algorithm works as follows @githubGitHubKimmobrunfeldtgithours:

+ Go through all commits and compare the difference between them in time.
+ If the difference is smaller or equal then a given threshold, group the commits to a same coding session.
+ If the difference is bigger than a given threshold, the coding session is finished.
+ To compensate the first commit whose work is unknown, we add extra hours to the coding session.
+ Continue until we have determined all coding sessions and sum the hours made by individual authors.

The actual implementation (`jikyuu` #footnote([https://github.com/Nate-Wilkins/jikyuu])) used to analyze the `dumpster` repository was a reimplementation in Rust by Ruin0x11 #footnote([https://github.com/Ruin0x11]) and Nate-Wilkins.

==== Formal Time Logging

As explained in @jonathan_time_methodology my goal was to not overestimate my time spend. My approach to the formal time logging represents this mindset, which emphasizes the recording of periods of focused and productive work on specific tasks. Consequently, for example, during a five-hour meeting, only one to two hours of concentrated effort were documented.

=== Project Planning<jonathan_plan_phase>

=== Concept and Design<jonathan_des_phase>

=== Development<jonathan_dev_phase>

The month of April marked the initial development stages of the project. I started on the 22nd of April by writing a simple Kaplay initializer function. I then created a game initializer function that calls the Kaplay initializer, establishing the early foundation for the game engine integration. I further developed the user interface to support resizing using the ReactResizePanel component within the Game route which houses a canvas element and the NodeEditor component.

I established a folder structure for node React components and created a debug solution containing initial nodes for testing purposes. I designed the NodeEditor as a controlled component with callbacks for user interactions. I developed an AddNode menu component to display available node types, allowing users to add nodes to the editor. I implemented the first node interactivity using React state changes, where I enabled nodes to save their state to an internal value and react to changes from connected nodes. This approach was cumbersome to use and maintain.

On April 23rd, I created a NumberInput component for node based user input and the CustomHandle component to simplify styling, which I later renamed to BaseHandle. The following day, I integrated the NumberInput into Add node handles and I created the LabelHandle component that extends BaseHandle with descriptive labels. I achieved the first successful game-node interaction through the Display Node that I configured to show state information saved to a debug store in Kaplay. I implemented a KeyPress node using ReactFlow key listeners, and I enhanced the NumberInput to display connected values. I created a Multiply node based on the Add node architecture and I added a non-functional test dropdown menu to the KeyPress node.

On April 25th, I consolidated the NodeHeader, NodeBody, and NodeFooter components into a single NodeContent component for improved maintainability. The next day, I extracted the dropdown menu into its own component and I developed the MathFloatNode with supporting math types and compute constants. I modified the node editor's delete keyboard shortcuts, and I added input constants to determine which inputs are enabled for different math compute types. I removed the Add and Multiply nodes in favor of the more flexible MathFloatNode. I updated the NumberInput parser to handle negative numbers, and I adjusted the game initializer for React strict mode compatibility. I created two data exchange nodes: ExportToGameobject and GetFromGameobject (which was later renamed ImportFromGameobject).

On April 27th, I implemented functionality for multiple outgoing handles for increased node flexibility. The most significant development occurred on April 29th when I performed a complete rewrite of the node execution system. I implemented a node store containing a map of custom node classes that track node-inputs, -outputs, and -state, along with functions for adding and removing nodes and edges. I designed the system to automatically update input and output maps when connections change, and I created helper functions for parsing and creating ReactFlow edge IDs. I implemented node tree sorting using depth-first search, and I created a compute tree function to process all nodes in the correct order.

I completed the final implementation on April 30th by rewriting node state updates for the new execution system. I configured each node to store a compute function that receives inputs and results as parameters, and I created a getInput helper function providing access to connected node results. I added cyclic connection detection to prevent infinite loops. I expanded the MathFloatNode with additional compute types, including comparison operations. I created an IfNode (later named Switch) for conditional logic based on boolean inputs. I integrated delta time into the time node and time store, and I configured the node tree to be computed each frame in the game initializer function.

On May 1st, I added functionality for the MathFloat node to have an initial compute type and began preparing the Export Node for level-based exports. I adjusted the NumberInput component to parse both floats and integers, and I added custom labels for each compute type to provide context-specific information such as displaying "base" for logarithmic operations.

On May 2nd, I implemented the first iteration for passing values to the next frame through Export and Import nodes using a Zustand store. I created the NodeContextMenu component with initial functionality allowing for simple node duplication and deletion. The following day, I created the SelectionContextMenu with functionality to duplicate and delete multiple nodes simultaneously.

I enhanced the KeyPress functionality on May 4th by adding key press types for key down and released events to the key store and KeyPress node. I added highlighting to the KeyPress node when a key is pressed down, and I configured the MathFloat node to default to a specific compute type. On May 5th, I changed the time store behavior to use callback time functions instead of set values for improved performance.

I added the first unit test on May 7th using Jest for MathNode type consistency verification. The next day, I added the ability for Export and Import nodes to select from a list of gameobjects to export to, and I implemented functionality so that the data store storing gameobject handles and their data is initialized on level load. On May 9th, I started removing useEffect dependencies for better performance optimization.

I created an EditLabel component for the group node on May 10th, allowing users to change its label. I rewrote parts of the ReactFlow logic so that Group nodes are always prepended to the node list, and I reworked the group resizing logic. The following day, I added functionality to the group node so that it resizes in all directions when a child node is moved. I implemented separate set and get handles for export and import nodes, making their attributes either read or write only. I added functionality to math, keypress, import, export, value and switch nodes so that internal state is copied on node duplication.

On May 12th, I added contributing guidelines to the readme. I began implementing node loops on May 13th by creating a new loop store tracking all loops and their handles, and I created For Loop start and end nodes. I added a loop status parameter to the compute function so that loop start and end nodes can share state.

I implemented the main loop logic in the node store on May 14th, where loop start nodes indicate the beginning of a loop by saving their index into a loop object. After computing a loop end node, computation resumes at the saved index, enabling nested loops. On May 15th, I added functionality to the iterations NumberInput field of the node loops and styled the loop connector edges. I added a ConnectorHandle component for use in loops to indicate which loop start and end nodes belong together.

I performed a loop functionality rewrite on May 16th to ensure correct sorting in the node map sorting algorithm. I added functionality for loops to be created and deleted correctly, implemented the ability for nodes to be added into loops, and together with Leo Kling established the functionality that nodes can only be interconnected when in the same loop. On May 17th, I added helper functions to create single nodes and for loops, and I implemented helper functions for loop edges to have custom colors based on their loop ID.

// May 18
=== Documentation
