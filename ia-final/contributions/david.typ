#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *

#pagebreak()
#col[
== Contributions of David Klein
During the planning phase of the project I vocalized that I wanted to be part of the game development team and also wanted to work on the design of the website. I was consequently assigned to these work packages: `Proof of Concept`, `UI/UX Overall`, `Game Design`, `Game Creation`, `Unit Test`, `User Testing` and `Help Tool`.

During the course of this project I ended up spending most of my time on the game design, the creation of the game assets and the development of the game and it's levels. I also contributed to the documentation and user testing. I struggled a lot with integrating myself into the project, which lead to me not contributing as much as I could have. I tried to consistently contribute to the project, but already early on I was not happy with the amount and the quality of my contributions, which also started to affect my confidence regarding the project.

Because of this I did not end up spending any time on the `Unit Testing` and the `Help Tool` work packages, even though I was assigned to them. 

=== Planning Phase
During the planning phase of our project, we spent a significant amount of time collaborating as a group through Discord calls. I made an effort to be consistently present and to contribute actively to idea generation and group brainstorming sessions. Additionally, I contributed to the creation of work packages, helping to structure the tasks and break down responsibilities.

=== Concept and Design Phase
At this point we were still unsure about using Kaplay, three.js or Babylon.js, so I looked a bit more into them, so I would be able to contribute to the discussion about them. We had a team meeting on April, 9th where we talked about different concepts for the game and discussed the prospect of 2D vs 3D. I brought up some isometric and top down view games, but the concensus was that they would complicate the coordinate system too much. We took multiple votes and ended up going with a 2D side scroller in Kaplay.

The plan for the team working on the `UI/UX Overall` workpackage was to create a mini style guide for the website, that was supposed to include a color scheme and also font choices. The workpackage also included building the web pages inside of react and creating a theme and assets for the game. Due to requirements for the WEB side of the project we had to build a working wireframe for the website. The team responsible for that came up with multiple different approaches including a well thought out design for the landing page. This left me a bit stumped on how to proceed, as I felt creating a style guide at this point would be redundant and I wasn't sure what our next steps wouold be towards getting started on the developmemt. However I did not communicate my uncertainties with the rest of the team, which lead to me not contributing on some crucial decisions on the tech stack and the set up of the website and game engine.

=== Development
I started working on the website on April, 26th. First I started trying to set up some basic game mechanics with the default sprite, to get familiar to the game engine's API. I also edited one of the the assets created in Figma by the prototype team to create a back button,  which I added to our game page.

Over the next week I spent time looking for other fonts for our website, which I shared with the team and figured out how to import and use custom fonts with Tailwind. During this time the team was heavily focused on the node editor and creating nodes, so I spent time changing some of the styling of the dropdown menus and I added a basic search function to the right-click context menu. I also had an idea for the search bar, to be able to add the math nodes already in the correct state (e.g. searching for "Add" would spawn a math node with the add function already selected). However I did not implement this myself and left it for somebody else, as I was still trying to work myself into typescript and felt like other people would be better at implementing it than me. I think this was a terrible mindset which repeated multiple times during the project and lead to other people having to pick up after me.

On May, 11th and 12th I started creating our raccoon character using Krita. I researched how to animate game objects in Kaplay, found a plugin to easily export the animations I drew in Krita as spritesheets and built some basic logic that defined the different animations and made them useable. I also did this for the trashcan and the finish flag. While trying to load the assets into the game I had an issue where the assets would show up when loaded inside of our `init-game` function, but not when loaded inside of our levels itself. With some help from Leo, I was able to eventually fix it.

During the next week I came up with a pipeline to create our backgrounds, which I also shared with the team. To avoid having to paint the entire background I created a 3D scene in Blender using CC0 licensed and self created assets and textures , which I then rendered out in a low resolution and painted over in Krita, to fix small issues. I gathered feedback from the other team members while creating the first background and then later imported it into the playground level. To pick up again where I left off the previous week, I added functionality to correctly play and orient the raccoons animations and set up some logic that would trigger the correct animations when the raccoon moves. All of the logic I implemented was directly implemented into the playground level at this point. We had also talked about collecting statistics on user behaviour during the user tests before, so I created a branch to work on that. I added the `TelemetryStore` to our Zustand stores, with functionality to log a level ID and the nodes used by the user.

During the week starting May, 26th I fixed an issue where the game timer would keep running while the game is paused. While some other members were already working on levels we realised, that the monitor resolution greatly affects, how the level is displayed in the users browser, so I changed the scaling constants of the background and other assets, so that their relation to each other is more consistent and added functionality for our camera to scale with the users monitor resolution. I also added another input to the `addBackground` function, to simplify the background offset for each level. II continued working on the `TelemetryStore`, adding functionality to track time spent by the user and wether he skipped the levels dialog. I also added the possibility to save the collected telemetry data into a JSON file and download it.

During the week starting June, 2nd Jonathan brought up an issue with the raccoon slightly jumping around when switching walking direction, so I did some small changes to the raccoon's sprite sheet. We also decided, that one in-game unit should be close to the size of the raccoon, so I adjusted the related constants and made a few changes to the first three levels we had at that point, to account for the new scaling. I also added a small function to the `gameHelper` componenet to handle an issue we had with resetting the level. I created some more images from akready existing assets to fill the landing page and started working on the second background for our gamne. On the telemetry branch I added functionality to log a full solution when the user completes a level.

In the next week I made some changes to finalise the second background, which was needed for Markus' time levels. I also used this background to start working on a kinematics level. My original idea was for the level to require the user to implement a CCD algorithm with the mouse as a target. After spending an evening in the node editor trying to implement the CCD algorithm I concluded that it would not make sense to have the user build it from scratch, because it would be to complex and big. Jonathan later spent some time on it and added another node, that simplified the required coordinate transformations for the CCD to work. Looking at his solution made me realise that my solution could've already been far simpler and that I overcomplicated the algorithm because I didn't understand the interactions between the import/export nodes and the for-loop well enough. It also made me realise that I could've solved the problem myself, if I hadn't pretty much given up after two days of trying.

In the last two weeks of June I turned my original kinematics level into a level covering forwards kinematics. After some discussions about what the CCD level could look like, we decided on a level where the user has to pet the raccoon. Jonathan had already implemented his solution in a seperate level, so I just had to load the necessary assets and implement a timer for the win condition so that the user has to pet the raccoon for multiple seconds. Some more changes had to be made to this level by other team members later on because some of my choices were not really thought through. For example giving the raccoon `WASD` movement meant the user could just move the kinematic arm using the value nodes and win.

Our goal was to be done with the development phase by the time of the milestone presentation, so I picked up the Gravity level which was one of the last few planned levels remaining. I came up with a concept and implemented it. The goal was to teach the user both about velocity-based movement and gravity. After finishing the Gravity level I wrote the level guide for it and also added solutions to the Gravity and the Forwards level. At this point my mental state had already declined by a lot and I started making a lot of mistakes that me and other members had to pick up after. I had to correct the level guide and the solution for the Gravity level multiple times and even now the solution to this level is partially incorrect. The kinematic arms in my Forwards level are also still just placeholders, because I did not make any other assets for them.

=== Documentation <david_doc>
Looking back at the Development Phase I was really dissappointed with myself and the work I had put towards the project. In an attempt to regain my focus and put a more adequate amount of time into the documentation I decided to start tracking my time sepereately and focus more on myself. Watching other team members get back on track and contribute more consistently after some of the changes we made, while I was still struggling with the same issues was really frustrating and I thought this change would help mitigate that.

At the start of July I came up with a rough structure for the documentation and we started the writing process on some of the sections. I wrote some texts, trying to expand on what we already had for the didactic concept and started writing abou the implementation of the game. 

On July, 13th we had a team meeting where we talked more in depth about the structure. We decided to change some of the already existing sections to fit more into our new structure and also ended up removing some parts. We changed the section about the implementation to inculde Challenges and Solutions, so I revised some of the texts I had already written and added more sections to it. I ended up writing the sections from `Game` to `Node Editor`. I also wrote a small section in the `Unit Testing` section about tracking player behaviour.

Throught the Documentation Phase I also spent time reviewing texts written by other team members and giving feedback on them. 

=== Time Tracking Methodology
I had a similar approach to time tracking as the rest of the team. For each session I tried to be honest with myself and only log time, which was actually spent working on an issue. Time spent discussing topics with other team members and also most untracked efforts were be ignored.

Since we only started to actively track time in June, I also used the same git-based time tracking algorithm mentioned in @jonathan_time_methodology for all previous development. This method however does not account for the time spent on creating the assets. To estimate the time spent in Blender I checked the time at which the project file was created and then the time at which I saved the last image for that session. I also used progress images which I shared with other team members to estimate the time of these sessions. To account for potential breaks I substracted at least 25% off of the estimated time. Even more if there could've been a break for lunch or dinner. The time I spent in Krita is quite easily accounted for, as the software automatically tracks time spent actively working for each project #footnote([https://docs.krita.org/en/user_manual/working_with_images.html#author-and-description]).

As metioned in @david_doc, my time spent in July was tracked seperately from our shared Google Sheet in an attempt to focus on myself and not compare myself too much with the other team members. For the sake of accountability I also transfered all of this into the shared Google Sheet before the end of the project. //planning to do this on saturday

// jikyuu time tracking
// time spent on design is not considered by this
// for backgrounds estimating time spent by checking creation date of the projects and creation date of the final product
// subtracting at least 25% for more realistic time
// subtracting even more if the session lasts throughout lunch/dinner
// for drawings krita time
// time spent researching these topic is not considered as i did not track them at the time and don't want to make random guesses
// 
// time spent in july was tracked seperately as to focus on myself
// tracked time was transfered into the shared google sheet for accountability

=== Time


// Originally assigned to UI/UX Overall, Game Design, Game Creation

// Development
// Initial ideas for the character were created by multiple members including me using generative ai
// I ended up drawing the character and some basic assets like the trash can and a flag
// spent time looking into kaplays api
// figured out how animations work
// built
// Came up with a pipeline for background creation
]