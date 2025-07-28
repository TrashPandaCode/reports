#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Project Planning

#col[
  The project planning phase for the Ertsi project encompassed a comprehensive definition of all critical project components including schedule development, risk assessment, and quality assurance frameworks to ensure systematic progress and adherence to established quality requirements. This neural network development project, designed to estimate frequency-dependent reverberation time (RT60) from single room images, required careful coordination between data collection methodologies, machine learning model development, and evaluation protocols. The planning methodology specifically addressed the interdisciplinary nature of combining computer vision techniques with acoustic modeling, necessitating specialized consideration of both synthetic and real-world data acquisition strategies.

  == Project Organization<project_organization>

  The project team comprised six members, with five members participating in both PMPT and BV course components and one member (David Klein) contributing exclusively to the BV portion, resulting in reduced time allocation for that participant. Jonathan Kron was designated as Project Lead, responsible for document submissions and serving as the primary contact with supervising professors and stakeholders. Leo Kling assumed the role of Report Writer, as we would have to maintain meeting protocols at bi-weekly intervals. Besides that each team member was assigned responsibility for at least one work package.

  The organizational framework encompassed equipment requirements for real-world data collection activities and established protocols for version control and communication through GitHub and other collaborative platforms. Resource allocation considerations included access to measurement equipment and specialized software tools necessary for synthetic data generation and analysis.

  == Project Structure

  The project was decomposed into nine work packages organized according to a functional project structure plan, initially distributed across five main phases: Data Collection, Model Development, Evaluation & Testing, Optimization, and Application & Interface. Through iterative refinement, Model Optimization (WP-7) and Final Evaluation (WP-8) were redistributed to more appropriate phases, while the User Interface (WP-9) was classified as a stretch goal with reduced priority. This restructuring resulted in four primary development phases that filled our Gantt chart and is described in more detail in the sections below.

  === Dataset Phase<dataset_phase>

  This phase encompassed synthetic data generation (WP-1) and real-world data collection (WP-2). The synthetic data component required room generation using *Blender* followed by RT60 value calculation using *Treble*. Real-world data collection necessitated coordination with Professor Reiter for access to TH Köln office facilities and procurement of specialized measurement equipment. Both work packages required careful timing coordination to maximize utilization of available resources and software trial periods.

  === CNN Phase<cnn_phase>

  The convolutional neural network development phase consisted of three work packages: Neural Network Architecture Development (WP-3), Hybrid Training Approach (WP-4), and Model Optimization (WP-7). This phase represented the core BV (image processing) module component, focusing on establishing the fundamental CNN architecture, implementing weight initialization and pretraining procedures, and developing hybrid training methodologies that integrate both synthetic and real-world datasets. The optimization component addressed hyperparameter tuning and implementation of regularization strategies including dropout, batch normalization, and data augmentation techniques.

  === Evaluation Phase<eval_phase>

  The evaluation phase comprised three distinct work packages: Performance Evaluation (WP-5) for measuring model accuracy in RT60 estimation across defined frequency bands; Real-World Testing (WP-6) involving model validation with real-world images from measured rooms and comparison with actual measured RT60 values; and Final Evaluation (WP-8) for comprehensive model performance assessment in terms of accuracy, speed, and operational limitations. This phase was designed to provide comprehensive validation of model performance across multiple evaluation criteria.

  === UI Phase (optional)

  This optional phase included the User Interface (WP-9) work package, designed to provide result visualization and user testing environment capabilities. This component was designated as a stretch goal to be implemented if project timeline permitted.

  === Project Schedule

  Our project schedule is visualized by our two Gantt charts (@gantt_initial and @gantt_actual) that show the comparison of the initial planning and how it actually turned out. The first Gantt chart was developed during the project planning phase and follows the work package durations and dependencies as initially declared. The second one was created at the end of the project to give an overview of the actual durations and dependencies of the work packages and phases.
  //The comparison of both might give a hint on where challenges occurred.

  == Requirements and Solutions

  A comprehensive requirements analysis was conducted, establishing specific technical and operational requirements with corresponding solution approaches. This analysis provided systematic mapping between project needs and implementation strategies. Examples include the requirement for visual explanation of model predictions addressed through Grad-CAM implementation to highlight contributing image regions, and validation requirements on unseen rooms addressed through strategic dataset partitioning to establish proper training and validation sets.


  == Risk Assessment and Mitigation

  The project planning phase identified multiple categories of potential risk factors that could impact successful project completion. These risks were systematically analyzed and categorized into data-related, model-related, and general project risks, with each category requiring specific mitigation strategies.

  #colbreak()

  *Data Collection and Quality Risks* encompassed insufficient data volume for proper model training, dataset bias, labeling errors, and potential loss of access to critical software tools such as Treble for RT60 calculations. Mitigation strategies included diversified data collection approaches, rigorous quality control procedures, and backup software solutions to ensure continuity of synthetic data generation capabilities.

  *Model Development and Performance Risks* included overfitting, inaccurate RT60 estimation, excessive computational requirements, and extended inference times that could compromise practical applicability. These risks were addressed through implementation of regularization techniques, comprehensive validation protocols, performance monitoring throughout development, and optimization strategies to balance accuracy with computational efficiency.

  *General Project Risks* encompassed library deprecation, legal considerations regarding data usage, potential data loss, and integration challenges between project components. Mitigation approaches included version control best practices, legal compliance review, comprehensive backup strategies, and modular development approaches to minimize integration dependencies.

  Each identified risk was evaluated for potential impact on project success, enabling prioritized resource allocation for mitigation efforts and development of contingency plans for high-priority risk scenarios.
]

#v(.5cm)
#figure(caption: [Gantt chart as initially planned], image("../images/initial_gantt.png"))<gantt_initial>
#v(.5cm)
#figure(caption: [Gantt chart reflecting actual progress], image("../images/maybe_actual_gantt.png"))<gantt_actual>

#col[
  == Resource Allocation and Capacity Planning

  The project utilized existing equipment resources, eliminating hardware acquisition costs. Software expenses were also avoided through utilization of open-source tools and the two-week free trial of Treble software for RT60 calculations. As described in the @project_organization section we would have five of six members participating in both courses of the project with 360 hours each and one person only participating in the BV course with 180 hours. This makes up a total of 1980 hours during the whole project.
  == Quality Assurance

  A comprehensive quality assurance framework was established encompassing seven distinct quality dimensions: Accurate RT60 Estimation, Visual Input Robustness, Inference Speed, Model Size, Label Quality for synthetic data, Scalability & Maintainability, and Stakeholder Satisfaction. Each quality goal was associated with specific measurable criteria, quality assurance pathways, and control mechanisms.

  Quality criteria were defined with quantitative metrics to enable objective assessment of requirement fulfillment. Where appropriate, minimum acceptance thresholds and target values were established to differentiate between acceptable and optimal performance levels. For RT60 estimation accuracy, minimum acceptance was defined as error rates below 50%, while target performance was established at 5-10% error rates.

  The quality framework emphasized practical usability, ensuring model robustness to input variations and computational efficiency suitable for real-world applications. Documentation and maintainability requirements were prioritized to facilitate future development and ensure project sustainability beyond the initial development phase.

  == Conclusion

  The project planning phase established a robust framework for the systematic development of the Ertsi neural network system. The structured approach to work package decomposition, risk assessment, and quality assurance provided clear pathways for successful project completion while maintaining flexibility to adapt to evolving technical requirements.
  The planning methodology emphasized comprehensive data collection strategies, rigorous model development protocols, and thorough evaluation procedures to ensure both technical accuracy and practical applicability of the resulting system. The comparative analysis between planned and actual execution timelines provided valuable insights into the challenges inherent in machine learning project estimation and demonstrated the effectiveness of adaptive project management in research-oriented development contexts.
]


