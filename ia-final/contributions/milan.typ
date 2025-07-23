#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *
#pagebreak()
#col[
== Contributions of Milan Jezovsek
#todo("introduce contributions of Milan Jezovsek")

=== Project Planning<milan_project_planning>
#todo("add project planning")

=== Concept and Design<milan_concept_design>
#todo("add concept and design")

=== Development<milan_dev_phase>
==== April<milan_dev_april>
In the second half of April I started working on development. My first contribution to development was together with Leo where we thought about the practicality of our routing. We came to the conclusion that we needed to send the different routes only when they were specifically requested by the user. This way we ensure that the user does not have to wait for unnecessary data to be loaded (e.g. loading the game route when the user wants to look at the documentation). Before coming to this conclusion we had set up some rudimentary routes which were then scrapped and Leo implemented React-Router in such a way that we could package each route individually.

In the end of April I then started work on some early nodes. First of which was the display node. The display node enables the user to display any value they connect to it. I designed this to help the user debug their graphs or simply display values they want to see. Working on the display node the realization struck, that we needed to abstract the styling and layout of the nodes. This is where I started working on the node Layout. To do this I created three components: Header, Body and Footer. The Header held the title and some meta data about the node, the Body held the content of the node and the Footer was mostly a placeholder. After this I did some maintenance and structuring work on the code base. From which I returned to the display node, refining it's layout and styling. Which then led me to do the same for our new addition and value nodes, that existed at that point and did not yet use our node components.

After this I spend the remaining days of April touching up styling where needed and ensured consistency across the nodes, our homepage and the UI for selecting multiple nodes with shift and mouse drag. The only little detour I took was to help Philipp with the proper placement of a node when spawned via the node editors context menu.

As with my work on routing which has been improved by Leo Kling, most of this work is not present in the current version of the code base anymore, as it was reworked by different members of the team. Noteably the addition note has been scrapped and replaced with a math node, written by Jonathan Kron. The other mentioned nodes have either been adjusted or were scrapped all together. The node layout has been reworked and is now only one component called NodeContent.

==== May<milan_dev_may>
I started of May, by writing a custom dropdown component for our `Math` node's `computeType` selection menu. This component would put each category of `computeTypes` into a submenu inside of the `Math` node's dropdown menu. I did this to in my opinion simplyfy the flow of searching a node. Instead of having to look through a long list of nodes, the user could now open a dropdown and only search the category they want to look at.

On the 4th of May I worked to include `computeTypes` into the `PaneContextMenu`'s search functionality. This way the user could type in the name of a `computeType` and it would show up in the search results. And when the user selected it, it would be added to the `NodeEditor` as a `Math` node with the corresponding `computType` selected. And I also wrote some first drafts of content for the documentation of the `Display` and `Time` node.

The 5th of May marked the start of my journey into the `Group` node. I started by writing a `Group` node that would allow the user to group nodes together by dragging them into the `Group` node. This was a first draft and purely aesthetic. However, I hoped to gain knowledge about the grouping behaviour of `react-flow` and how that might translate into a node that would allow the user to loop certain parts of their graph.

On the 6th of May I had a first version of the logic that handles adding, removing, moving inside as well as between `Group` nodes. As hinted by this being a first version, it was not yet perfect and I had to revisit this code numerous times during the project's development.

On the 10th of May I continued working on the `Group` node, this time focusing on the UI. I adjusted our `NodeContent` component to show a different background color when the node is a group, to ensure that nodes are visually identifieable inside the group. I also made the `Group` node resizable, using `react-flow`'s resize component's and added a hint while the group is empty. All of this was to ensure that the user could easily identify a group node, understand how to use it and adjusts it to their liking.

// both went our own ways? cant think of a better phrase rn
In between these workdays I had consulted with Jonerthan Kron about our approach to implementing a loop node. After we brainstormed a bit and exchanged ideas on how the loop node should look and behave, we both went our own ways again. And when I returned Jonerthan had built the `ForLoop` which consists of the `ForStart` and `ForEnd` nodes.

On the 15th of May I reworked the UI of the `FoorLoop`.

// mention everything that was scrapped or changed
// However, this component was scrapped as it introduced more clicks to the user flow and broke the keyboard navigation of the dropdown menu with no straight forward fix available.
// rework of of the computeTypes in search

==== June<milan_dev_june>



=== Documentation<milan_documentation>
#todo("add documentation")

=== Time Tracking Methodology <milan_time_methodology>
#todo("add time tracking methodology")

]