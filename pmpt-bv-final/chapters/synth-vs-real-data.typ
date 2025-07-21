#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *
#col[
= Real vs. Synthetic Data 
Our project employed a hybrid dataset approach, combining synthetic and real-world images to train our model. The dataset comprised two distinct components: 3773 synthetic datapoints generated through complex computer simulation and 300 real-world datapoints collected from measured office spaces at Cologne University of Applied Sciences, equaling approximately 70 measured rooms. The primary motivation for incorporating synthetic data was to address the fundamental challenge of data scarcity in the real-world domain; thus, synthetic augmentation represented a necessary compromise to achieve sufficient training data volume.

== Data Collection
=== Real Data Collection
The real dataset consisted of manually measured RT60 values from various office environments, captured using our acoustic measurement setup/*add reference*/. The setup included a microphone, an omnidirectional speaker, and a laptop running our custom measurement software/*reference leos python script*/. Despite comprising only 300 datapoints across approximately 70 rooms, this dataset provided crucial ground truth validation and represented authentic acoustic-visual relationships that exist in practical environments.

The limited size of the real dataset was primarily constrained by practical considerations, including the substantial time investment required for proper manual RT60 measurement procedures and logistical limitations in accessing sufficient diverse office spaces within the university. Manual RT60 measurements, while providing high accuracy, require controlled conditions and our specialized equipment, making large-scale data collection prohibitively resource-intensive./*include time reference if deemed necessary*/

=== Synthetic Data Generation 
The synthetic dataset was created using a sophisticated custom pipeline combining Blender for 3D rendering and Treble for acoustic simulation. The Blender environment enabled systematic randomization of key visual parameters including exterior environments visible through windows, ceiling configurations, chair arrangements, table placements, wall materials, and camera parameters. This parametric approach ensured comprehensive coverage of potential office room configurations while maintaining computational efficiency.

For acoustic accuracy, Treble's hybrid simulation algorithm /*add reference*/ was employed to calculate RT60 values, particularly optimized for improved performance in low-frequency bands where traditional geometric methods often fall short./*Is this needed information or irrelevant?*/ This dual-system approach provided both visually realistic room renderings and acoustically accurate reverberation time measurements, creating a substantial training set that would be impractical to collect manually.

== Domain Gap Considerations
A significant challenge encountered in this hybrid approach was the presence of a substantial domain gap between synthetic and real images. The synthetic images, despite sophisticated rendering techniques, exhibited characteristic artifacts and stylistic differences that distinguished them from real photography—including lighting models, material appearance, geometric precision, and subtle environmental factors that are difficult to replicate synthetically. 

This domain gap likely created confusion within the neural network during training/*I believe to remember not actually having any data to back this claim up, so this is mostly speculation*/, as the model struggled to generalize effectively across the two distinct visual domains, potentially degrading overall prediction accuracy and robustness.

== Implications for Model Performance
The integration of synthetic and real data created a complex training environment where the model needed to generalize between two distinct visual domains while learning consistent acoustic prediction principles. Despite our synthetic data augmentation efforts, the total of approximately 4073 datapoints remained insufficient /*Is this in place? I feel like this would be addressed elsewhere in more detail*/ for robust CNN training on complex acoustic-visual relationships. This data insufficiency likely contributed to training instability and limited generalization capabilities, suggesting that significantly larger datasets would be necessary for optimal model performance.
]