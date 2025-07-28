#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *
#pagebreak()
#col[
  == Contributions of Markus Heming

  I was the one who came up with the initial idea for this project eventhough I declined to take the project lead. As we decided to mainly devide the project into two main parts, the node team and the game development team, I decided to put my main effort into the game development part as I found it more suiting to my skills and interests.

  Besides the work packages that were assigned to the whole group I was mainly responsible for the `Game Design` and also part of the `Game Creation` work package. So this was about the concept and design of the game, the development of the game itself and filling it with story. An important part of my work was to try making the game `engaging` and `user-friendly`.

  Eventhough those two work packages would take most of my time I also worked myself into other parts of the project from time to time. Therefore I participated in parts of the `landing page` content, a very small part in the `game documentation` and also the `final report` of the project. Not all of the work made it into the final project and I will describe this in more detail in the following sections.

  Especially in the early and towards the end of the project I struggled with my own time management as well as general communication problems within the whole team.

  In the following sections especially the @markus_dev_phase I'll focus more on the progress and the work I put into the project. This includes challenges I faced and also learnings I made during the project as you can read in @markus_personal_conclusion.

  === Time Tracking Methodology <markus_time_methodology>

  Similar to the other team members I tried to not overestimate my time spent on tasks and rather focus on actual time spent. For example as I was responsible for the game design part I tried to not count the time I spent on thinking about the game design in general, but rather only the time I spent on actually writing down the design and concept. This way I tried to get a more realistic view on my time spent on tasks.
  Due to this approach I also tried to not count the time spent on discussions with other team members when not actively working on the project.

  Later during the project the whole team agreed on using a `google sheet` to track our time and the tasks we worked on during that time. This made it easier to keep track of your own time and also to see what other team members are currently working on. Additionally it made it easier to see how much time was spent on each task and to identify potential bottlenecks in the project.

  At the end I also used the the same `Git-based time tracking tool`, described in @jonathan_time_methodology, to track my time spent on the programming and documentation tasks. But as described at the end of @philipp_time_methodology, it turned out that this tool wasn't able to track the time properly as I was just like Philipp Wendt working on a task the whole day and only doing like one or two commits per day. This behaviour of me was not only problematic for the tool but more importantly made it sometimes difficult to see what I did within one commit and sometimes caused problems that were harder to fix later on as it was to much code of different tasks in one commit. Thats something I tried to change later on in the project.

  === Time Management<markus_time_management>

  My plan was to spend a few hours almost each day a week instead of only working like one day a week but the whole day.

  As mentioned in the @markus_dev_phase section , the first weeks were difficult to manage properly. But at the beginning of May I was able to provide proper weekly working hours and also tried making more hours here and there in order to at least compensate a little bit for the time I lost in the beginning.

  At that point I already started with the game development part so it was always easy to have something to do and not have to search for tasks. This was especially due to the fact that we used Github issues to track our tasks and their importantness. This made it easier to prioritize tasks and to see what needs to be done next and who is currently assigned to which task. I started using that tool more frequently to give updates on my current state and report bugs I found or features I wanted to implement.

  When having meetings with Mr. Grünvogel about the project progress we also discussed our time tracking methods because of concerns named by Leo Kling and Jonathan Kron. We came to the conclusion that actual more precise time tracking by using a google sheet for example could help us a lot in order to keep track of how much time we spent in general and on which tasks.
  This was especially helpful for me to have actual numbers on the time spent.
  It might sound silly but it also kind of motivated me to spend more time on the project so I can type in more hours into the sheet, also because I had the comparison to the other team members.

  At the end of May I tried to work more hours than the normal workload per week in order to pre-work for my missing time during the summer school I was going to attend. Which was difficult considering I was still behind time schedule. I was working way more in comparison to the weeks before, to try being as fair as possible as I would be missing for 3 weeks and the team would have to work without me during that time.

  Unfortunately I also had to move out of my apartment at the middle of June, which consumed a lot of time, more than I wanted to spend on it. Therefore this caused a deficit in my time effort for the project during the week right before the summer school.

  I wasn't part of the final presentation which was prepared and held right in the middle of the summer school program. I wanted to be part of the presentation as a part of the team but sadly wasn't able to attend it.

  When coming back at the 10th of July I first had to move into my new apartment which also consumed a lot of time, leading to another deficit in my time effort for the project during that week. But after this was finished I spent as much time as possible so we would be able to finish the project in time and also to try providing the working hours I had to make up for.

  I wasn't deeply involved in the documentation part at that point as described in the @markus_documentation section.
  So I wanted to make sure that I can contribute a significant amount of time within the last two weeks of July in order to be involved in the documentation part as well as the whole project was meant to be done by the end of July.

  At this point in time the project itself was already declared as finished and only the documentation was missing. So the last two weeks I only spent on the documentation part starting with my personal contributions.

  === Project Planning<markus_project_planning>

  I was deeply involved in the project planning phase, being part of all sections including project schedules, setting up work packages and so on. I was also participating in online meetings and the in-person presentations of the project definition and project plan.

  === Concept and Design<markus_concept_design>

  For me this phase not only describes the first period of time where we discussed key concepts and designs on figma, but also conceptional and design decisions throughout the whole project.

  At the beginning of the concept and design phase I started creating a first `wireframe` showing a very simple example of a home screen for the game and a level selection screen. This was mainly to get a first idea of how the game preview could look like and to have a starting point for further discussions with the team. This was then developed further by Leo Kling and Jonathan Kron, who created more detailed wireframes and mockups for the home and the level selection screen.

  After that I was involved in the discussion where we chose the design of our website and whether the game should be in 2D or 3D. As me being responsible for the game design part this was an important decision that would highly influence the workflow of the game and the graphical design.

  My first idea was to have a learning puzzle game in which you play a character that has no skills at all so he isn't even able to walk right at the beginning. So as a player you need to teach everything to the character which would be done by some kind of coding using the concepts of the computer animation course. Therefore this would be one continuous level that gets harder and more complex and requires more features and skills such as jumping or pushing objectives for example in order to continue.
  However, during the process of discussing and developing it became more and more a game of distinct levels, each teaching a specific concept and being mostly independent of the other levels as for example movement is already pre-implemented in the levels after if reasonable but its not necessary to complete the movement level beforehand in order to have that feature in the next levels. The main reason for this was that we wanted to start with some very simple levels instead of having to implement something complex like movement right at the beginning.

  Later in this phase I was contributing regarding the `level content` itself, the `story` of the game and how to connect those two aspects of the game. After setting up initial levels I was also involved in working out and designing `tutorial levels` to introduce the player to the game mechanics and also help him navigate within the system. This was a very important part of the game design, as it was crucial to make the game `user-friendly` and easy to understand for the player.

  When we had first user tests we realized that we should give a better introduction outside of the game itself. Therefore I designed a `tutorial section` that goes through the main elements of the game, like buttons, the game and editor window, the node system and so on. This was then further developed into its final state by Leo Kling and Jonathan Kron.

  For the assets I was involved in the discussion about which assets to use and how to integrate them into the game but less involved in the actual creation of the assets.

  Other than that I was somewhat involved in minor `styling` of the landing page and the game window when necessary.

  === Development<markus_dev_phase>

  ==== Landing Page, Level Selection and Kaplay

  As mentioned at the beginning of my contribution section, the development phase started kind of rough for me. We as a team agreed on setting up the development environment together so everyone is included and knows how to set up the project on his computer. However, due to miscommunication this didn't work out as planned. This led to me being a little bit lost in the beginning and not knowing what to do next, which is of course also my fault. I found it hard to start with the game development part right away which caused my start to be very slow.

  However, I started using a little bit of time to work my self into the `kaplay game engine` to get a better understanding of how to use it and how to make it interact with the nodes. This also gave me a perspective on what levels are actually possible and how to implement them. Furthermore I also started setting up a level document with the game development team to have a first `overview of the levels` we wanted to create, how they should be structured and what nodes would be needed. This also helped us figuring out which `tutorial levels` we should implement in order to explain certain, more complex, nodes.

  In the first weeks of development I also tried to give feedback and did small parts on the landing page. In specific this included minor `hover effects` on buttons and the `dropdown` menu in the `level selection` part. Furthermore I worked on level `transitions` and a `scrolling effect`. This was at the end of April.
  The landing page was reworked later on though by Leo Kling and Jonathan Kron.

  ==== Introduction and Navigation of the Game

  Two weeks later I started creating a `raccoon dialog popup` which is shown when the player first enters a level. This dialog is meant to introduce the player to the game and also to the main character of the game, the raccoon.
  It would start a `conversation` with the raccon that would give a hint on how to start and what the current `level goal` is. This was very important for the player in order to get a little bit of `guidance` right at the beginning of the game. At this time I also implemented an information popup that would reshow the conversation and also the level goals, this was reworked later though as you will see further down below.

  After that at the middle of May I started a first `testing level` in which I tried to implement basic movement and object collision. This was important in order to see the interaction of different game objects.

  Besides that I used some time to make the kaplay game window `responsive` so objects wouldn't change their position when resizing the window or having different resolutions. Later during the project other team members such as David Klein and Leo Kling also worked on this part of the project.
  On the same day, the 20th of May, I started making the `level complete dialog` which is shown when the player completed a level. This would open another conversation with the raccoon and after that also give the player the option to go back to the main menu (the landing page) or to continue to the next level. This made it easier for the player to navigate through the game and give a more connected experience.
  This task took a lot of time as me and other team members faced a lot of issues when it came to properly navigating through all the levels.

  ==== Levels, Features and Polishing

  When this feature was done I started to rework the `testing level` to make an actual first `tutorial level` out of it. At that time we were already planning on doing like 3-4 of them, each introducing basic game mechanics and interaction with the node system.
  So the first level I worked on was a `math based level` where the player had to solve a simple math problem in order to complete the level. This was meant to introduce the player into using first nodes and how to do computations with them. This level was also the first prototype level to show to the customer as what is possible and how the player could interact with the game.

  The second tutorial level I worked on was focused on `game object positioning`. In this level, players had to manipulate the raccoons position and put him into a filled trashcan in order to complete the level.

  On May 30th while cleaning up the other levels and also filling them with dialog content with Leo Kling, I started working on the `bounce level`. This would introduce the player to the `switch` node. For this case I created two trashcans, one filled with trash and one empty. The player had to use the switch node to check whether the raccoon is in the filled trashcan or not. The goal is that the raccoon jumps into the filled trashcan everytime they randomly switch positions.

  Having different game objects that wouldn't be needed in every level made me restructure the `game object system` a little bit. From now on you would have `constants` which are game objects that are always present in every level, like the raccoon and `level game objects` which are only present in a specific level, like the two trashcans in the bounce level. This made it easier to manage the game objects and also to create new levels.

  As we already implemented basic movement for the raccoon I started on expanding our `movement animation system` for the raccoon on the 1st of June.
  This was important as I wanted to have different movement modes. So dependent on the level I either wanted to raccoon movement to be implemented `manually` by the player via the node system or to have `pre-implemented keyboard movement` or to have the raccoon move `automatically in a certain way`. This was important to have different levels of complexity and also serve the needs of each individual level.

  During that time (beginning of June) I was a little bit involved in the `documentation part` by writing the `overview section` even though I was not assigned to it, the rest of the documentation was done by Leo Kling and Jonathan Kron. I also checked for content and typos.

  Additionally I filled the landing page with some text so it'd be a little bit more filled with content for the first user tests coming up.
  Therefore I also added player and camera `clamping` so the player wouldn't get lost outside of the level area. Meanwhile I always tried to focus on not limiting the player too much in his actions within the game, so he could still explore the levels in its own way and find a unique solution for the goal that is given by the game.
  I tried making the game experience more fun in giving the player more options than just moving sideways by adding ladders the player could interact with by climbing up and down. This feature was removed later on as it wasn't needed.

  We're now at the 5th of June when I started setting up a `parenting level` which would give the player the task to implement parenting in the node system. As this is also one of the base concepts of the Computer Animation course which this game is based on, it was very important to find a good engaging solution that is understandable for the player. So I tried to figure out a good solution that would make sure that the player uses parenting properly in order to complete the level.

  This period of time was a lot of back and forth between the levels, cleaning them up, adding dialog texts and making sure that the player can actually complete the levels.

  On the 8th of June I decided to rework the `information popup` or better said, delete it and create a `goals dialog` instead.
  This dialog would always be shown in the game window after completing the introduction dialog with the raccoon. This allows the player to have a better overview of what the current task is. I also decided to make it draggable and snappable so the player can move it around as he likes and the dialog wouldn't block the view on important parts of the game.

  Right before that we've had some first user tests with the game and due to the feedback we realized that another short guidance through the elements of the game and node window would be very helpful in order to understand that the player has two separate windows that interact with each other and that he gets a first overview of the functionality of the buttons for example.
  Therefore I created a whole `tutorial guidance` that would be shown when you first enter the game. It guides you through different sections of the game and explains key elements supported with images or short videos. I also added the option to skip the tutorial and mark a checkbox to not show it again in the future. Other team members such as Leo Kling also contributed to this feature.

  The next days after this until the 10th of June I was working on the already existing levels and adding victory conditions to the movement level.

  With the 10th of June my development phase was done as we planned to finish the whole game by the end of June and I was going to leave for the summer school program in Japan for the rest of June and the beginning of July.

  In the @markus_documentation section I will describe my work on the documentation part of the project after I returned.

  === Organization<markus_organization>

  During the development phase (@markus_dev_phase), I was trying to keep everyone updated about my current progress and what I was working on. This was mainly done via the `GitHub issues` and separate `Github branches` for bigger tasks I was working on.
  It made the work flow a lot easier to instantly create a new issue once you find a bug or have an idea for a new feature or task that needs to be done. Giving it a level of importance also helped figuring out which tasks to work on first.

  Creating an individual branch for huge tasks made sure that I don't mess up the main branch and that I can work on the task without having to worry about other changes that might happen in the main branch. This also gave the opportunity for other team members to review my code and give feedback. Big thanks at that point to Jonathan Kron and Leo Kling who spend a lot of time on reviewing my code and giving feedback. It not only helped me to improve my coding but also made sure that the code is more readable and understandable for others.

  Therefore I also tried to write short comments so me and others can understand what the code is doing when reviewing it later on.

  === Documentation<markus_documentation>

  The main documentation phase for the project was planned to take place in July, as mentioned in other sections before I was only working on the documentation within the last two weeks of July. I started working on my own contributions part as I wanted to have this section mainly done first and then work on the other sections of the documentation.

  Throughout this process, I collaborated closely with my teammates to ensure consistency across all documentation sections and to coordinate our writing efforts. I actively participated in team meetings where we established guidelines to define what content still needed to be written and how it should be structured. During that duration I was also reviewing written sections from other team members to give feedback and working on the poster.

  We wanted to have the documentation and also the poster done by the end of July.

  === Personal Conclusion<markus_personal_conclusion>

  Looking back at the project, one of the main challenges I personally faced was the way of communication within the whole team during the project. When I first started building the initial levels, I sometimes found it difficult to clearly understand how everything was meant to come together.
  At times, this left me feeling a bit on my own in terms of direction and expectations. As for example at the beginning I was expecting to make `one continous level` that gets harder and harder (which was the initial idea) and therefore the character needs to learn new `abilities` in order to progress instead of `multiple distinct levels` with each explaining a specific concept independent of the other levels. I want to emphasize that this is not meant as a complaint, but rather as a reflection on where better coordination could have helped improve the process, at least for me.

  Another aspect I noticed throughout the project was that certain features or design elements I had worked on were later `reworked` or `replaced` - which in itself is completely fine and part of a normal development process. However, these changes were not always communicated clearly, which occasionally made it hard for me to keep up with the current status or understand the reasons behind some decisions. It should be mentioned that this behaviour grew out of frustation due to the lack of communication and commitment from the rest of the team, me included.

  That being said, I still learned a lot throughout this project. It taught me how to adapt to changing plans, how to work more independently when needed, and how important ongoing and transparent communication is within a team. I also gained experience working with `collaborative tools` like GitHub more effectively, especially when it came to sharing progress, handling feedback, and keeping track of tasks.

  Finally, I’d like to give a special thanks to `Jonathan Kron` and `Leo Kling` for their continuous support, their patience, helpful feedback, and all the time they spent reviewing my code, as well as the enormous time they spent on the project in general. Their input not only improved the overall quality of the game but also helped me improve my own skills during this project.

]
