#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Contributions

#col[
  == Markus Heming
  ===

  == David Klein


  == Jonathan Kron
  === Project Phase
  // - created the room generator in Blender
  //   - modelling of chair, tables and other assets explained in @synth_data_gen
  //   - wrote scripts to export room data (for use in Treble)
  //   - wrote script to make adjusting the room generator easier
  // - 10 Räume generiert
  // - 7 official model experiments as listed in @exp_result_summary
  //   - some smaller experiments regarding resolution that didn't go anywhere
  // - collaborated with Leo on the "simple experiment"
  //   - adjusted the room generator
  //   - generated the entire new dataset
  //   - together with leo adjusted model, train and evaluate scripts, as well as wrote the simulation script for the new roomtypes as explained in @simple_experiment
  //
  During the project phase, I was primarily responsible for the creation and implementation of the synthetic room generator in Blender. This included the detailed modeling of various assets such as chairs, tables, and wall assets, as documented in @synth_data_gen. To enable further processing, I developed scripts that export the generated room data in formats compatible with Leo Kling's Treble script. Additionally, I authored a script that facilitates quick adjustments to the room generator's parameters and configuration, streamlining dataset creation.

  In total, I generated 10 distinct room configurations. I conducted seven official experiments with neural network models as listed in the @exp_result_summary. In parallel, I also explored minor experiments involving image resolution; however, these did not lead to conclusive results.

  I collaborated closely with Leo on the "simple experiment" subproject. My contributions included adapting the room generator for the newly defined room types and generating the corresponding dataset in its entirety. Together with Leo, I modified the model architecture and updated the training and evaluation scripts accordingly. We also co-developed a new simulation script tailored to the specific requirements of the simplified room configurations, as detailed in the @simple_experiment documentation.

  === Documentation Phase

  // - wrote major parts of the documentation including:
  //   - collaborated with Milan on the abstract
  //   - wrote Introduction and motivation
  //   - collaborated with Milan on fundamental-concepts regarding reverberation time
  //   - co-authored dataset, contributing to the synthetic generation explaination
  //   - co-authored the simple experiment
  //   - contributed to the experiemnts section
  //   - wrote t-sne section
  //   - created the gantt charts

  In the documentation phase, I was responsible for substantial portions of the final report. I collaborated with Milan on the abstract and co-authored the section on fundamental concepts of reverberation time. I also wrote the Introduction and Motivation section.

  Regarding the dataset, I co-authored the corresponding documentation, focusing on the synthetic data generation process. I also co-authored the section describing the simple experiment and contributed to the broader discussion in the experiments section. Additionally, I was responsible for writing the subsection on the t-SNE visualizations used to evaluate feature-space clustering. Finally, I designed and created the Gantt charts used to visualize our project timeline.

  == Milan Jezovsek
  === Project Phase
  - been involved in the real world data collection
  - generated synthetic data using Jonathan's tooling
  - experimented with the models architecture

  === Documentation Phase
  - contributed to the documentation by initializing the fundamental concepts section and fleshing out the parts for Reverberation Time. Laying the groundwork for the section on Reverberation Time which has then been restrucutred and expanded by other team members and myself

  == Philipp Wendt
  === Project Phase

  During the project implementation phase, my contributions included the comprehensive collection and curation of real-world acoustic and image data, establishing a foundation for the reverberation time estimation system. This involved systematic gathering of room impulse responses and corresponding RT60 measurements across diverse office rooms. Following data collection, I conducted data analysis to ensure the data was not faulty.

  The model training phase constituted a significant portion of my technical contributions, where I implemented and optimized convolutional neural network architectures. This involved systematic experimentation with various CNN configurations, including transfer learning approaches utilizing pre-trained models such as Places365-trained ResNet architectures. Additionally, I conducted comprehensive model analysis to evaluate performance and robustness, including systematic assessment of prediction accuracy across different captured environments.

  === Documentation Phase

  My documentation contributions included both theoretical exposition and analysis presentation. I provided comprehensive explanations of neural network fundamentals and deep learning principles. I contributed significantly to the structural organization of the technical report and, in collaboration with Leo, co-authored the dataset section documenting data collection procedures and preprocessing methodologies.

  Additionally, I focused on comprehensive explanation of experimental procedures and results. I contributed to expanding the related works section through literature review of relevant research in acoustic parameter estimation and machine learning applications in room acoustics. Finally, I made contributions to the discussion section, providing critical analysis of results, identification of limitations, and suggestions for future research directions.



  == Leo Kling
  - script für aufnahmen
  - Datenaufbereitung
  - Datenanalyse
  - Modelltraining
  -

]
