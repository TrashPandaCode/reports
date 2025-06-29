#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

= Requirements
#col[
  == Product Use Cases
  === Use Case Diagrams
  === Product Use Case List
  === Individual Product Use Cases
  == Functional Requirements
  
  // == Data Requirements
  
  == Performance Requirements
  === Speed and Latency Requirements
  The product is a browser-based logic editor built with React and Zustand, designed for real-time interaction with a node-based interface. Performance expectations center around responsiveness during user interaction, smooth dragging and connecting of nodes, real-time simulation feedback (via Kaplay), and quick state updates.

  The following performance aspects are especially important:
    - *Editor Responsiveness:* Node movement, zooming, and canvas navigation must feel immediate.
    - *State Updates:* Zustand state changes (e.g., node creation, edge updates) should propagate with no noticeable lag.
    - *Simulation Speed:* Kaplay-based nodes should simulate logic or visuals in near real time.
    - *Initial Load Time:* Application should load and be usable within a short timeframe on a typical broadband connection.
    - *Undo/Redo Latency:* Actions such as undoing a node move should feel instantaneous.

  To maintain a fluid and interactive experience that encourages exploration, especially in an educational or demo-based environment. Any lag or delay may disrupt the user’s focus or create confusion about the system state

  *Examples:*
    - The editor canvas shall respond to node drag interactions within 16 milliseconds, to assure usage with 60 frames per second
    - State updates (e.g., creating/deleting a node) shall complete within 50 milliseconds.
    - The application shall show first meaningful content within 1 second ad shall become fully interactive within 2 seconds on standard desktop browsers.
    - Kaplay simulations shall start within 250 milliseconds of triggering a node interaction.
    - Undo/redo operations shall complete within 30 milliseconds achieving no visible delay.

  *Fit Criterion:*
    - 95% of node interactions shall respond in under 50ms.
    - 90% of UI updates (state or DOM changes) shall occur in under 100ms. 99% of UI updates shall occur in under 200ms.
    - The application shall be usable (DOM rendered and interactivity available) within 2 seconds on a 10 Mbps connection. First Contentful Paint shall occur within 1 second in 75% of cases.
    - No simulation response shall take longer than 500 milliseconds.
  
  *Considerations:*\
  The project prioritizes interactivity over batch processing. While it is not a hard real-time system, smoothness and perceived responsiveness are critical for user satisfaction. Optimization efforts should focus on React performance tuning, minimizing React Flow redraws, and ensuring Zustand store selectors are tightly scoped.

  === Precision or Accuracy Requirements
  The product is a visual logic editor where users manipulate and simulate node-based logic using tools like Kaplay for visualization. Precision in this context refers not to scientific or monetary precision, but to the accuracy of state representation, simulation behavior, and node evaluation.

  The following accuracy requirements apply:
    - Node states must consistently reflect user-defined configurations.
    - Simulation outputs from Kaplay nodes must reliably correspond to the current graph structure and state.
    - Positioning of nodes and edges should be rendered with pixel-level precision to maintain layout clarity.

  Accurate representation of logic and state is essential to support valid learning, debugging, and experimentation. Inaccurate node behavior or misrepresented connections could mislead users, especially in educational contexts or when revisiting saved work.

  *Examples:*\
    - All node positions shall be accurate to the nearest pixel.
    - Boolean logic simulated via Kaplay must produce consistent outputs for identical inputs.
    - Saved states (including undo/redo) shall restore nodes and connections with 100% fidelity.
    - Node parameters shall retain precision up to the granularity specified by the input method (e.g., step size or slider).

  *Considerations:*\
  The system is not subject to numerical rounding errors in most cases, as logic nodes typically use discrete (e.g., Boolean) values. However, visual accuracy and state consistency are critical. Where floating point values are used (e.g., for animations or calculations), standard JavaScript precision (~15 decimal digits) is acceptable.
  
  Unit conventions are not applicable here beyond internal consistency in coordinate systems and timing. No timezone or currency-specific logic is required.
  
  === Capacity Requirements
  The product is a web-based logic editor built with modern front-end technologies including React, React Flow, Zustand, Radix UI, and Kaplay. It is designed primarily for individual or small-group academic use, hosted via Vercel. Therefore, the capacity requirements focus on the number of nodes, edges, and sessions it can support effectively within a single instance.

  *Requirements:*
    - The editor shall support logic graphs containing up to 200 nodes and 400 edges without a noticeable drop in performance.
    - The system shall support saving and restoring project states with full fidelity up to the above graph size.
    - A single session should be capable of handling at least one hour of continuous use without a need for manual memory management or reset.
    - Although real-time collaboration is not currently supported, the product must be responsive and performant for one active user per session, as expected under educational and demo contexts.

  While high concurrent usage is not expected due to the educational and individual-focused deployment model, the editor must support large enough graphs to enable meaningful experimentation and teaching scenarios. In particular, the capacity to store and render complex logical structures without freezing or performance degradation is essential to maintain usability.

  *Fit Criterion:*\
    - A graph with 200 nodes and 400 edges shall be loaded, simulated, and edited on a mid-range consumer device (e.g., 8GB RAM, recent browser) with no operation taking longer than 1 second to respond.
    - A memory profile test using Chrome DevTools shall show that memory usage does not exceed 300MB during active editing of a maximum-sized project.
  
  *Considerations:*\
  If demand or deployment expands beyond the original scope (e.g., to collaborative or real-time multi-user editing), these capacity requirements may need to be revisited to ensure horizontal scalability and backend state synchronization support.
  
  // == Dependability Requirements
  // === Reliability Requirements
  // === Availability Requirements
  // === Robustness or Fault-Tolerance Requirements
  // === Safety-Critical Requirements
  // == Maintainability and Supportability Requirements
  // === Maintenance Requirements
  // === Supportability Requirements
  // === Adaptability Requirements
  // === Scalability or Extensibility Requirements
  // === Longevity Requirements
  // == Security Requirements
  // === Access Requirements
  // === Integrity Requirements
  // === Privacy Requirements
  // === Audit Requirements
  // === Immunity Requirements

  == Usability and Humanity Requirements
  
  === Ease of Use Requirements
  The client aspires for the product to be intuitive and straightforward for its intended users, who are primarily students and educators engaging with an educational software tool. The product's usability is designed to accommodate users with varying degrees of technical knowledge, from novices to those with intermediate experience in programming and interactive learning tools.

  Key usability goals include:
    - *Efficiency of Use:* Users should be able to quickly understand and navigate the interface to complete tasks, such as solving equations or creating node-based logic, without unnecessary delays.
    - *Ease of Remembering:* The product will minimize the cognitive load on users by providing clear instructions, consistent interaction patterns, and visible contextual help, so users do not need to memorize complex sequences.
    - *Error Rates:* The software aims to reduce user errors by providing real-time feedback, input validation, and undo options, ensuring that errors are easily identified and corrected.
    - *Overall Satisfaction:* The product should be engaging and visually appealing to encourage regular use during coursework and personal learning, fostering a positive user experience.
    - *Feedback:* Immediate and clear feedback will be provided after user actions, such as node connections or level completion, to build user confidence and reinforce correct usage.

  *Fit Criteria:*
    - At least 80% of a test group of students aged 20-30 (typical university age) shall be able to complete specified tasks within 15 minutes during usability testing.
    - A post-use survey shall indicate that 75% of users feel confident using the product independently.
  #todo("wollen wir uns hier wirklich festlegen auf irgendwelche zahlen bei user testing?")
  // P: I would not go with specific numbers and rather more vague descriptions like above. This might change when we do more user testing.
  //L: get the point, but they prob. want us the specify as a basis for evaluation
  
  === Personalization and Internationalization Requirements
  The product currently offers minimal personalization and does not support internationalization features. The design focuses on providing a consistent experience for a primarily English-speaking academic audience, with limited options for user customization or language selection.

    - *Personalization:* User configuration options are minimal. There are no settings for language preferences, themes, or interface customization. The product delivers a fixed user interface optimized for straightforward educational use without individual adjustments.
    - *Internationalization:* The product supports only English, with no provisions for other languages, spelling variants, or cultural conventions. As it is intended primarily for in-house educational use within a specific linguistic context, internationalization is not a priority for this release.

  Given the scope and target user base of the project—students and faculty within an English-speaking university setting—extensive personalization and internationalization features are not required. The simplicity of the interface and language minimizes complexity in development and maintenance while adequately serving the needs of its intended users.

  *Considerations:*
    - Future versions may incorporate additional personalization or internationalization options depending on user feedback or a broader deployment context.
    - The absence of these features reduces development overhead and allows focus on core functionality and usability within the current target audience.
    
  === Learning Requirements

  The product is designed to be gradually learnable and accessible, with an emphasis on easing users into both the interaction model and conceptual understanding through a structured, level-based progression. It includes detailed documentation covering node functionality, general concepts, and getting started guidance.

  Rather than expecting users to learn everything up front, the product introduces mechanics incrementally. Each level is designed to build upon knowledge from the previous one, allowing users to explore and internalize concepts at a comfortable pace. Documentation is provided both as a reference and as an integrated part of the learning experience.

  *Fit Criteria:*
    - 90% of new users should be able to complete the introductory level without consulting external help.
    - At least 75% of users should be able to locate and understand relevant documentation for a node within 1 minute.
    - In usability testing, users should report feeling "confident" or "mostly confident" in using the editor after 3 levels.

  Because the system is intended for educational use and casual demonstration, learning should occur naturally through use. The combination of embedded instruction, progressive level design, and external documentation supports a low-friction onboarding process without sacrificing depth for advanced users.

  *Considerations:*
    - Users are not expected to undergo training but benefit from contextual in-product guidance.
    - The editor avoids overwhelming users by progressively revealing complexity.
    - Clear written resources are always available to support self-directed exploration.

  // === Understandability and Politeness Requirements
  === Accessibility Requirements
  The product includes basic accessibility accommodations to ensure it remains usable for a broad audience, including users with mild to moderate visual or motor impairments. 
  
  Key considerations include:
    - *Color contrast:* The interface avoids red-green dependent cues and uses a blue-orange palette, which is generally distinguishable even for colorblind users (e.g., red-green color vision deficiency).
    - *Semantic HTML and ARIA attributes:* The system uses accessible HTML markup where possible, with ARIA roles and labels added to interactive elements to improve screen reader compatibility.
    - *Keyboard navigation:* Interactive nodes and UI elements are designed to be navigable via keyboard, allowing use by individuals who may have limited dexterity or cannot use a mouse.
    - *Clear focus states:* Custom focus outlines and tab indices ensure users can track navigation visually when tabbing through the interface.

  While the product is primarily designed for demonstration and educational use, it still aims to be inclusive by respecting common accessibility guidelines (e.g., WCAG 2.1 AA). This not only improves usability for people with disabilities but also enhances the experience for all users.

  *Considerations:*
      - The product is not fully optimized for screen reader users but includes semantic structure to support basic accessibility tools.
      - Text alternatives and descriptions are available for non-text content where feasible.
      - Future versions may include font resizing or theme toggling for enhanced readability.

  *Fit Criteria:*
    - Critical interface elements such as text, the nodes themselves and their connections maintain a minimum contrast ratio of 4.5:1.
    - A screen reader test confirms that node names and connections are identifiable via accessible labels in 80% of common use cases.

  #todo("bei den fit criteria gucken ob das so wirklich realistisch ist, dass wir die sachen einhalten")
  // P:  Screenreader Thingy makes me anxious, would remove this point if we cant implement the required accessibility
  //L: yess honestly good point, maybe exchange for a different criteria?
  
  
  // === User Documentation Requirements
  // === Training Requirements
  
  == Look and Feel Requirements
  === Appearance Requirements
  
  The product is designed with a playful and modern visual style, suitable for engaging students and casual users in an educational, game-like environment. The aesthetic aims to support learning by being visually appealing without overwhelming the user with complexity.
  
  *Requirements include:*
      - Soft, desaturated colors and clear contrast between interface elements to support readability and interaction.
      - A friendly, cartoony visual tone, especially in levels involving characters (e.g., the raccoon), to create a lighthearted, welcoming atmosphere.
      - A consistent visual design across all screens and nodes, including:
          - Rounded corners
          - Smooth transitions
          - Consistent iconography
          - Legible sans-serif fonts
  
  There is no formal corporate branding requirement, but the product intentionally avoids dry or overly technical visual styles to remain accessible to a general audience. The design supports the product's goal of making abstract technical concepts feel intuitive and unintimidating, particularly for new learners or people exploring node-based tools for the first time.
  
  *Fit Criteria:*
      - A usability test group of 10 users unfamiliar with node editors shall describe the appearance as "approachable" or "playful" in post-interaction surveys.
      - No more than 1 user in 10 shall report confusion related to interface layout or visual consistency.
  
  *Considerations:*\
  The appearance requirements were developed iteratively through design mockups and internal testing, with an emphasis on aligning visual language with the playful narrative structure of the levels and characters.
  
  === Style Requirements
  The product is designed to be approachable, creative, and slightly whimsical, with a style that emphasizes exploration, curiosity, and light gamification. This aligns with its educational purpose and audience of students and learners engaging with complex, abstract concepts through interactive, visual storytelling.
  
  *Style elements include:*
      - A narrative-driven structure, where users progress through learning levels with the guidance of friendly characters (e.g., a raccoon companion), contributing to a storybook-like experience.
      - Minimalist but colorful design, avoiding clutter while maintaining visual interest.
      - Playful tone in interface cues, tooltips, and dialogue, intended to reduce user intimidation and make technical learning feel fun and casual.
      - Micro-interactions and animated transitions to encourage active engagement, supporting an interactive, touch-and-experiment design philosophy.
  
  This product is not distributed in physical form, so no packaging considerations apply.
  
  The goal is to make the system feel like an invitation to explore, rather than a formal educational tool. This is particularly important for novice users or those with limited prior exposure to programming or visual logic editors. A casual, friendly style helps promote user retention and reduces cognitive friction.
  
  *Fit Criteria:*
  
      - At least 80% of test users should describe the product style using words like "fun", "easy", "inviting", or "engaging" in post-use surveys.
      - During usability testing, at least 75% of users should complete the introductory level without needing external instruction or abandoning the task due to interface intimidation.
  
  *Considerations:* \
  Style decisions were made with inclusivity and beginner-friendliness in mind, prioritizing user comfort and the psychological accessibility of complex topics. The style reinforces the product's purpose as an educational playground, not a high-stakes or professional tool.
]



// == Operational and Environmental Requirements
// === Expected Physical Environment
// === Requirements for Interfacing with Adjacent Systems
// === Productization Requirements
// === Release Requirements
// == Cultural and Political Requirements
// === Cultural Requirements
// === Political Requirements
// == Legal Requirements
// === Compliance Requirements
// === Standards Requirements