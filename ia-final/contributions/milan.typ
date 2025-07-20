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
In the second half of April I started working on development. My first contribution to development was together with Leo where we thought about the practicality of our routing. We came to the conclusion that we needed to send the different routes only when they were specifically requested by the user. This way we ensure that the user does not have to wait for unnecessary data to be loaded (e.g. loading the game route when the user wants to look at the documentation). Before coming to this conclusion we had set up some rudimentary routes which were then scrapped and Leo implemented implemented React-Router in such a way that we could package each route individually.

In the end of April i then started work on some early nodes. First of which was the display node. The display node enables the user to display any value they connect to it. I designed this to help the user debug their graphs or simply display values they want to see. Working on the display node the realization struck, that we needed to abstract the styling and layout of the nodes. This is where I started working on the node Layout. To do this I created three components: Header, Body and Footer. The Header held the title and some meta data about the node, the Body held the content of the node and the Footer was mostly a placeholder. After this i did some maintenance and structuring work on the code base. From which i returned to the display node, refining it's layout and styling. Which then led me to do the same for our new addition and value nodes, that existed at that point and did not yet use our node components.

After this I spend the remaining days of April touching up styling where needed and ensured consistency across the nodes, our homepage and the UI for selecting multiple nodes with shift and mouse drag. The only little detour i took was to help Philipp with the proper placement of a node when spawned via the node editors context menu.

==== May<milan_dev_may>


#todo("add development phase")

=== Documentation<milan_documentation>
#todo("add documentation")

=== Time Tracking Methodology <milan_time_methodology>
#todo("add time tracking methodology")

]