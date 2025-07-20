#import "../lib.typ": col
#import "@preview/big-todo:0.2.0": *
#pagebreak()
#col[
  == Contributions of Markus Heming

  I was the one who came up with the initial idea for this project eventhough I declined to take the project lead. As we decided to mainly devide the project into two main parts, the node team and the game development team, I decided to put my main effort into the game development part as I I found it more suiting to my skills and interests.

  Besides the work packages that were assigned to the whole group I was mainly responsible for the `Game Design` and `Game Creation` part. So this was about the concept and design of the game, the development of the game itself and filling it with story. Later during the process I was also working on making the game as user-friendly as possible.

  Especially in the beginning I was kind of reliant on the progress of the node team in order to dive deeper into the game development part. This led to an uneven distribution of work in the beginning, which I had to compensate later on. Additionally to the higher time effort the main weight of the game progress was on my shoulders, due to the fact that members of the game development team had to work on other parts of the project, which was necessary and understandable as well and some lack of communication.

  In the following sections especially the @markus_dev_phase I'll focus more on the progress and the work I put into the project. This includes challenges I faced and also learnings I made during the project.

  === Time Tracking Methodology <markus_time_methodology>

  Similar to the other team members I tried to not overestimate my time spent on tasks and rather focus on actual time spent. For example as I was responsible for the game design part I tried to not count the time I spent on thinking about the game design in general, but rather only the time I spent on actually writing down the design and concept. This way I tried to get a more realistic view of my time spent on tasks.
  Due to this approach I also tried to not count the time spent on discussions with other team members when not actively working on the project.

  Later during the project the whole team agreed on using a `google sheet` to track our time and the tasks we worked on during that time. This made it easier to keep track of your own time and also to see what other team members are currently working on. Additionally it made it easier to see how much time was spent on each task and to identify potential bottlenecks in the project.

  At the end I also used the the same `Git-based time tracking tool`, described in @jonathan_time_methodology, to track my time spent on the programming and documentation tasks.

  === Time Management<markus_time_management>

  My plan was to spend a few hours almost each day a week instead of only working like one day a week but the whole day.

  As mentioned in the @markus_dev_phase section , the first weeks were difficult to manage properly. But I was able to catch up on that time schedule at the beginning of May and therefore had to make a couple more hours in order to catch up the time I missed before.
  At that point I already started with the game development part so It was always easy to get stuff done and not have to search for tasks. This was especially due to the fact that we used Github issues to track our tasks and their importantness. This made it easier to prioritize tasks and to see what needs to be done next and who is currently assigned to which task.

  Later in the project while having meetings with Mr. Grünvogel about the project progress we also discussed our time tracking methods and came to the conclusion that actual time tracking by using a google sheet for example could help us a lot in order to keep track of how much time we spent in general and on which tasks.
  This was especially helpful for me to have actual numbers on the time spent.
  It might sound silly but it also kind of motivated me to work more on the project so I can type in more hours into the sheet, also because I had the comparison to the other team members.

  Especially at the end of June I decided to work a lot more hours than inteded per week in order to pre-work for my missing time during the summer school. This way I spend over 30 hours on a single week regarding the google docs sheet which of course was kind of tight respecting the other project and also my personal schedule. But this was important to me as I knew Im going to miss a couple weeks of the project and my team would have to be fine without me for that time.

  The one thing I couldn't make up for was the final presentation which was prepared and held right in the middle of the summer school program. I wanted to be part of the presentation as a part of the team but unfortunately wasn't able to attend it.

  When coming back at the middle of July I was not deeply involved in the documentation part yet as descibed in the @markus_documentation section.
  So I wanted to make sure that I can contribute a significant amount of time to the project in order to catch up on the documentation part as well as this was meant to be done by the whole team until the end of July.

  At that time the project was already declared as finished so I was able to spend all my working time left on the documentation part.

  === Project Planning<markus_project_planning>

  I was deeply involved in the project planning phase, being part of all sections including project schedules, setting up work packages and so on. I was also participating in online meetings and the in-person presentations of the project plan.

  === Concept and Design<markus_concept_design>

  At the beginning of the concept and design phase I started creating a first `wireframe` showing an example of the landing page and the level selection screen. This was mainly to get a first idea of how the game preview could look like and to have a starting point for further discussions with the team. This was then developed further by Leo Kling and Jonathan Kron, who created more detailed wireframes and mockups for the home and the level selection screen. I tried as much feedback as possible as I was responsible for the game design part and had to think about the level structure. Therefore I was also deeply involved in the discussion about whether to make a 2D or 3D game.

  Later in this phase I was mainly contributing regarding the `level content` itself, the `story` of the game and how to connect those two aspects of the game. After setting up initial levels I was also responsible on working out and designing `tutorial levels` to introduce the player to the game mechanics and also help him navigate within the system. This was a very important part of the game design, as it was crucial to make the game `user-friendly` and easy to understand for the player.

  When we had first user tests we realized that we should give a better introduction outside of the game itself. Therefore I designed a `tutorial section` that goes through the main elements of the game, like buttons, the game and editor window, the node system and so on.

  For the assets I was mainly involved in the discussion about which assets to use and how to integrate them into the game but less involved in the actual creation of the assets.

  Other than that I was somewhat involved in the `styling` of the landing page and the game window when necessary.

  === Development<markus_dev_phase>

  ==== Landing Page, Level Selection and Kaplay
  The development was kind of rough and slow in the beginning, which for me was mainly due to two reasons: First, during the project planning phase we as a team agreed on setting up the development environment all together so everyone knows how to setup the project on his computer and so all team members are certain about the architecture of the project. However, due to the lack of communication this didn't work out as planned. The second reason I was slow on the game development at the beginning was because I was part of the game design and game creation time but not the node team. This meant that I had to wait for the node team to get basic functionality in nodes done in order to be able to test the game node interaction.

  However, I used the time to work my self into the `kaplay game engine` to get a better understanding of how to use it and how to make it interact with the nodes. This also gave me a perspective on what levels are actually possible and how to implement them. Furthermore I already started setting up a level document with the game development team to have a first `overview of the levels` we wanted to create, how they should be structured and what nodes would be needed. This also helped us figuring out which `tutorial levels` we should implement in order to explain certain, more complex, nodes.

  In the first weeks of development I also tried to give feedback and work on the `landing page` including the `level selection` part. I for example worked on the level navigation and made sure that the levels are displayed correctly. Simultaneously I was working on smaller parts of the landing page such as the visual feedback when hovering over certain elements such as buttons. This was at the end of April.

  ==== Introduction and Navigation of the Game

  Two weeks later I started creating a `raccoon dialog popup` which is shown when the player first enters a level. This dialog is meant to introduce the player to the game and also to the main character of the game, the raccoon.
  It would start a `conversation` with the raccon that would give a hint on how to start and what the current `level goal` is. This was very important for the player in order to get a little bit of `guidance` right at the beginning of the game. At this time I also implemented an information popup that would reshow the conversation and also the level goals, this was reworked later though as you will see further down below.

  After that at the middle of May I started a first `testing level` in which I tried to implement basic movement and object collision. This was important in order to see the interaction of different game objects.

  Besides that I used some time to make the kaplay game window `responsive` so objects wouldn't change their position when resizing the window or having different resolutions.
  On the same day, the 20th of May, I started making the `level complete dialog` which is shown when the player completed a level. This would open another conversation with the raccoon and after that also give the player the option to go back to the main menu (the landing page) or to continue to the next level. This made it easier for the player to navigate through the game and give a more connected experience.
  This task took a lot of time as me and other team members faced a lot of issues when it came to properly navigating through all the levels.

  ==== Levels, Features and Polishing

  When this feature was done I started to rework the `testing level` to make an actual first `tutorial level` out of it. At that time we were already planning on doing like 3-4 of them, each introducing basic game mechanics and interaction with the node system.
  So the first level I made was an `math based level` where the player had to solve a simple math problem in order to complete the level. This was meant to introduce the player into using first nodes and how to do computations with them. This level was also the first prototype level to show to the customer as what is possible and how the player could interact with the game.

  The second tutorial level I created was focused on `game object positioning`. In this level, players had to manipulate the raccoons position and put him into a filled trashcan in order to complete the level.

  On May 30th while cleaning up the other levels and also filling them with dialog content I started working on the `bounce level`. This would introduce the player to the `if node`. For this case I created two trashcans, one filled with trash and one empty. The player had to use the if node to check whether the raccoon is in the filled trashcan or not. The goal is that the raccoon jumps into the filled trashcan everytime they randomly switch positions.

  Having different game objects that wouldn't be needed in every level made me restructure the `game object system` a little bit. From now on you would have `constants` which are game objects that are always present in every level, like the raccoon and `level game objects` which are only present in a specific level, like the two trashcans in the bounce level. This made it easier to manage the game objects and also to create new levels.

  As we also wanted to implement movement for the raccoon I started on expanding our `movement animation system` for the raccoon on the 1st of June.
  This was important as I wanted to have different movement modes. So dependent on the level I either wanted to raccoon movement to be implemented `manually` by the player via the node system or to have `pre-implemented keyboard movement` or to have the raccoon move `automatically in a certain way`. This was important to have different levels of complexity and also serve the needs of each individual level.

  With this being done and adjusting it for each already excisting level I started with a `movement level` and a `time-transformation level` those were the first two non tutorial levels.

  During that time (beginning of June) I was a little bit involved in the `documentation` part even though I was not assigned to it. I checked for content and typos and put in a little bit of content myself, the most part was done by Leo Kling though.
  Aditionally I filled the landing page with some text content so it'd be easier to understand for the first user tests coming up.
  Therefore I also added player and camera clamping so the player wouldn't get lost outside of the level area. Meanwhile I always tried to focus on not limiting the player too much in his actions within the game, so he could still explore the levels in its own way and find a unique solution for the goal that is given by the game.
  I tried making the game experience more fun in giving the player more options than just moving sideways by adding ladders the player could interact with by climbing up and down.

  We're now at the 5th of June when I started setting up a `parenting level` which would give the player the task to implement parenting in the node system. As this is also one of the base concepts of the Computer Animation course which this game is based on, it was very important to find a good engaging solution that is understandable for the player. So I tried to figure out a good solution that would make sure that the player uses parenting properly in order to complete the level.

  This period of time was a lot of back and forth between the levels, cleaning them up, adding dialog texts and making sure that the player can actually complete the levels.

  On the 8th of June I decided to rework the `information popup` or better said, delete it and create a `goals dialog` instead.
  This dialog would always be shown in the game window after completing the introduction dialog with the raccoon. This allows the player to have a better overview of what the current task is. I also decided to make it draggable and snappable so the player can move it around as he likes and the dialog wouldn't block the view on important parts of the game.

  Right before that we've had some first user tests with the game and due to the feedback we realized that another short guidance through the elements of the game and node window would be very helpful in order to understand that the player has two separate windows that interact with each other and that he gets a first overview of the functionality of the buttons for example.
  Therefore I created a whole `tutorial guidance` that would be shown when you first enter the game. It guides you through different sections of the game and explains key elements supported with images or short videos. I also added the option to skip the tutorial and mark a checkbox to not show it again in the future.

  The next days after this until the 17th of June I spend more time on the already excisting levels, adding victory conditions to the movement level for example and setting up a `looping level` where the player has to use the for loop node in order to do some looping algorithm to complete the level.
  This was supposed to be the last of the tutorial levels, that was not originally planned but decided to be necessary for a better understanding of this node in specific.

  With the 17th of June my development phase was done as we planned to finish the whole game by the end of June and I was going to leave for the summer school program in Japan for the whole rest of June and the beginning of July.

  In the @markus_documentation section I will describe my work on the documentation part of the project after I returned.

  === Organization<@markus_organization>

  During the development phase (@markus_dev_phase), I always tried to keep everyone updated about my current progress and what I was working on. This was mainly done via the `GitHub issues` and separate `Github branches` for bigger tasks I was working on.
  It made the work flow a lot easier to instantly create a new issue once you find a bug or have an idea for a new feature or task that needs to be done.
  Creating an individual branch for huge tasks made sure that I don't mess up the main branch and that I can work on the task without having to worry about other changes that might happen in the main branch. This also gave the opportunity for other team members to review my code and give feedback. It not only helped me to improve my code but also made sure that the code is more readable and understandable for others.

  Therefore I also tried to write short comments so me and others can understand what the code is doing when reviewing it later on.

  === Documentation<markus_documentation>

  I was taking part in the documentation part of the draft for the final web report and contributed a solid amount of work to this task. After that we then decided to already start with the main documentation phase in order to write the final reports for the project. At that time I was not deeply involved in the documentation as we still had to finish the levels of the game. Later in June I had to leave my team for a couple weeks due to the summer school program in Japan. Therefore I was not able to contribute to the project in any way during that time.
  This was already agreed with the rest of the team at the beginning of the project, so eventhough it was kind of rough to have one less team member during that time, we had to make it work.
  This led to me having to manage my time differently to the other team members which you can read in the @markus_time_management section.

  As I spend more time on the project before the summer school, I also wanted to catch up on the documentation part after I came back. Therefore I tried to spend as much time as possible during the last weeks of the project as we as a team agreed on finishing the project including the poster and the final reports by the end of July. This was a very tight schedule, but we wanted to make it work.
]
