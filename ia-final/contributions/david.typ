#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *
#pagebreak()
#col[
== Contributions of David Klein
// More intro

During the planning phase of the project I vocalized that I wanted to be part of the game development team and also wanted to work on the design of the website. I was consequently assigned to these work packages: `Proof of Concept`, `UI/UX Overall`, `Game Design`, `Game Creation`, `Unit Test`, `User Testing` and `Help Tool`.

=== Planning Phase
// Project planning
// participated in meetings and tried contributing ideas and brainstorming
// helped define workpackages
// did not have any contributions on my own during this time

=== Concept and Design Phase
The plan for the team working on the `UI/UX Overall` workpackage was to create a mini style guide for the website, that was supposed to include a color scheme and also font choices. The workpackage also included building the web pages inside of react and creating a theme and assets for the game. Due to requirements for the WEB side of the project we had to build a working wireframe for the website. The team responsible for that came up with multiple different approaches including a well thought out design for the landing page. This left me a bit stumped on how to proceed, as I felt creating a style guide at this point would be redundant and I wasn't sure how we would handle the tech stack and get started with the development. However I did not communicate my uncertainties with the rest of the team, which lead to me not contributing on some crucial decisions on the tech stack and the set up of the website.

=== Development
I started working on the website on April, 26th. I edited the `init-game` page, trying to set up some basic game mechanics with the default sprite, to get used to the game engine. I also edited one of the the assets created in Figma by the prototype team to create a back button,  which I added to our game window.

Over the next week I spent time looking for other fonts for our website, which I shared with the team and figured out how to import and use custom fonts with Tailwind. During this time the team was heavily focused on the node editor and creating nodes, so I spent time changing some of the styling of the dropdown menus and I added a basic search function to the right-click context menu. I also had an idea for the search bar, to be able to add the math nodes already in the correct state (e.g. searching for "Add" would spawn a math node with the add function already selected). However I did not implement this myself and left it for somebody else, as I was still trying to work myself into typescript and felt like other people would be better at implementing it than me. I think this was a terrible mindset which repeated multiple times during the project and lead to other people having to pick up after me.

On May, 11th and 12th I started creating our raccoon character using Krita. I researched how to animate game objects in Kaplay, found a plugin to easily export the animations I drew in Krita as spritesheets and built some basic logic that defined the different animations and made them useable. I also did this for the trashcan and the finish flag.

During the next week I added functionality to correctly play and orient the animations. I also came up with a pipeline to create our backgrounds, which I also shared with the team. To avoid having to paint the entire background I created a 3D scene in Blender, which I then rendered out in a low resolution and painted over to fix small issues. I imported this background into the playground level and also set up some logic that would trigger the correct animations, when the raccoon moves. All of the logic I implemented was directly implemented into the playground level at this point. We had talked about collecting statistics on user behaviour during the user tests before, so I also created a branch to work on that. I added the `TelemetryStore` to our Zustand stores, with functionality to log a level ID and the nodes used by the user.

During the week starting May, 26th I fixed an issue where the game timer would keep running while the game is paused. While some other members were already working on levels we realised, that the monitor resolution greatly affects, how the level is displayed in the users browser, so I changed the scaling constants of the background and other assets, so that their relation to each other is more consistent and added functionality for our camera to scale with the users monitor resolution. I also added another input to the `addBackground` function, to simplify the background offset for each level. II continued working on the `TelemetryStore`, adding functionality to track time spent by the user and wether he skipped the levels dialog. I also added the possibility to save the collected telemetry data into a JSON file and download it.

During the week starting June, 2nd Jonathan brought up an issue with the raccoon slightly jumping around when switching walking direction, so I did some small changes to the raccoon's sprite sheet. We also decided, that one in-game unit should be close to the size of the raccoon, so I adjusted the related constants and made a few changes to the first three levels we had at that point, to account for the new scaling. I also added a small function to the `gameHelper` componenet to handle an issue we had with resetting the level. To fill the landing page I used some of the previously created assets, to make three images to introduce the project with some quirky texts. On the telemetry branch I added functionality to log full solutions, when the user completes a level.


// Originally assigned to UI/UX Overall, Game Design, Game Creation

// Development
// Initial ideas for the character were created by multiple members including me using generative ai
// I ended up drawing the character and some basic assets like the trash can and a flag
// spent time looking into kaplays api
// figured out how animations work
// built
// Came up with a pipeline for background creation
]