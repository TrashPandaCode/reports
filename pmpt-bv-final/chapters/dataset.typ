#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Dataset

#col[
  Creating the dataset represented one of the most substantial undertakings of this project, which led us to dedicate approximately 50% of our time to this task.

  Before describing our dataset, it is important to discuss the existing datasets available in the literature. While the audio research community has access to numerous large-scale datasets, such as the VCTK Corpus @veauxVoiceBankCorpus2013 and EARS @richterEARSAnechoicFullband2024, none specifically address our particular requirements for reverb (or impulse response) and image pairs.

  The OpenAIR dataset @shelleyOpenAIR129thAudio2010 does contain an extensive collection of impulse responses alongside images; however, these images prove unsuitable for our purposes as they primarily feature outdoor scenes or cathedral-type environments rather than typical room interiors.

  This data scarcity represents a well-documented challenge in the field, as highlighted by #cite(<singhImage2ReverbCrossModalReverb2021>, form: "author"). Their approach involved aggregating data from multiple sources, including the OpenAIR dataset @shelleyOpenAIR129thAudio2010, various online libraries, and web scraping techniques. Due to limited availability of properly labeled data, they relied heavily on weak supervision, supplementing gaps with plausible data as determined by their research team.

  We determined this methodology was not appropriate for our specific requirements, as we needed a dataset focused exclusively on room images. Additionally, we identified significant concerns regarding data ownership, given the copyright complications frequently associated with web-scraped content. Consequently, we made the decision to develop our own proprietary dataset, which we detail in the following section.

  == Data Sources

  To address the absence of suitable existing datasets, we undertook our own data collection efforts. Recognizing that capturing sufficient real-world data for effective model training would be impractical, we adopted a hybrid approach that combines authentic measurements with synthetically generated images and impulse responses to supplement our real-world dataset. Reseach in the machine learning field has shown such hybrid approaches to be effective @yangDepthAnythingUnleashing2024.

  === Real-World Measurements

  The real-world portion contains room images paired with RT60 values across six frequency bands, with the acoustic data stored in CSV format. This data was collected from various spaces throughout TH Köln, with a primary focus on office environments. However, the dataset also includes several outlier room types, such as server rooms, laboratories, and a motion capture studio.

  The acoustic measurements were conducted following the methodology outlined in @rev_man_meas. To enhance efficiency, we partially automated this process through a custom Python script that accepts the room name as input, performs a frequency sweep, and automatically saves the resulting impulse response, RT60 values, and generates plots for visual verification. Images were captured using a range of mobile devices, including a Google Pixel 8, iPhone 13, Samsung Galaxy S10, and iPad Mini. All photographs were taken from the doorway threshold at approximately head height (1.7m to 1.9m).

  #todo("check devices")
  #todo("go more in depth about analyzing recordings")

  To ensure comprehensive coverage, multiple measurements and images were recorded in each room, with the objective of capturing diverse acoustic and visual conditions. Throughout the data collection process, we took care to avoid capturing room modes or other acoustic artifacts that could introduce bias into our results.

  #todo("add amounts of data collected, some stats")

  === Synthetic Data Generation

  The synthetic component of our dataset was developed through a three-stage pipeline. Initially, room environments were generated using the Blender software @foundationBlenderorgHomeBlender, which enabled us to create diverse room geometries and material properties while simultaneously rendering corresponding images of these virtual spaces.

  In the first stage of our synthetic data pipeline, we constructed a wide range of virtual room environments using Blender. To enable controlled variability and reproducibility, we employed a hybrid approach combining manual asset design with procedural placement via Blender's geometry nodes system. A set of modular wall segments was created to support diverse architectural configurations, including plain walls, walls with cable runs, integrated pillars, and window elements with variable blind heights. Each wall asset was standardized to a length of 1 meter, facilitating grid-based layout along the perimeter of a manually constructed floor plan. The base floor mesh was created using common mesh modeling techniques such as plane extrusion, loop cuts, and edge manipulations. Geometry nodes were then used to scatter wall elements along the outer edge loop of the floor plan in 1-meter increments. The orientation of surface normals was used to determine a primary window-facing wall, along which window assets were distributed. One randomly selected wall segment was replaced with a door asset. The ceiling was created by duplicating the floor mesh and translating it upwards, maintaining a constant room height of 3 meters. Wall surfaces were consistently assigned a concrete material, while the ceiling alternated between concrete and absorptive acoustic materials.

  To introduce variability in lighting, furnishings, and surface appearance, each rendered frame involved randomized scene parameters. These included the choice and rotation of HDRI environment maps for global illumination, ceiling material selection, wall paint color, and the position and rotation of chairs. Three distinct table types were modeled, featuring variations such as integrated computers or power outlets, and each table was assigned one of three surface materials: white plastic, dark plastic, or wood. A single chair model was reused throughout but varied in position and rotation for each instance. Custom table generator node systems were implemented to procedurally instantiate sets of tables with accompanying chairs, based on manually positioned control nodes. This semi-procedural furnishing strategy allowed us to retain realistic room configurations while achieving a high degree of diversity across synthetic samples. The resulting Blender-generated scenes provided both high-quality image renderings and complete 3D geometry and material metadata, which served as input for the subsequent acoustic simulation stage.

  In the second stage, we generated impulse responses based on the room parameters extracted from Blender. These parameters encompassed the vertices defining the room's floor plan, the quantity of furniture elements comprised of chairs and desks, and the material properties of walls, ceilings, and floors. All rooms maintained a consistent height of 3 meters. Using the Treble SDK @Treble, an acoustic simulation platform, allowed us to generate a simplified virtual model of the room from these extraced parameters and compute the corresponding impulse responses for each virtual room.

  The final stage involved deriving RT60 values from the generated impulse responses. This process utilized the pyfar @PyfarPyfar2025 and pyrato @PyfarPyrato2025 libraries, maintaining consistency with our methodology for processing the real-world acoustic data.

  == Data Structure

  The dataset is divided into two primary directories: one containing real-world measurements and another housing synthetically generated data.

  Both the real and synthetic datasets follow an identical organizational structure, facilitating seamless integration and processing within the same computational pipeline. The dataset is divided into two primary directories: one containing real-world measurements from TH Köln and another housing synthetically generated data.

  Each room, whether real or synthetic, is assigned its own dedicated folder with a consistent naming convention. Every room folder contains two essential components:

  - An `images` subfolder containing multiple images of the room (photographs for real rooms, rendered images for synthetic rooms)
  - A CSV file storing the corresponding RT60 values across different frequency bands for that specific room

  == Preprocessing

  When calculating RT60 values, we initially considered 11 bands ranging from 50 Hz to 8 kHz. However, we ultimately decided to exclude the lower frequency bands (up to 250 Hz) due to the susceptibility to interference from low-frequency noise and other artifacts. Consequently, our final dataset comprises five frequency bands: 250 Hz, 500 Hz, 1 kHz, 2 kHz, 4 kHz and 8 kHz.

  Due to some outliers in the dataset, we capped RT60 values exceeding 4 seconds by applying local linear interpolation. This adjustment was necessary to ensure that the model could effectively learn from the data without being skewed by extreme values.

  #figure(caption: [], image("../images/rt60_outlier_curves.png"))

  #figure(caption: [], image("../images/rt60_outlier_boxplot.png"))

  The dataset was then split into training, validation, and test sets, with the split performed on a room-wise basis, with 10% for validation, 20% for testing, and the remaining 70% for training. This approach ensures that all images and RT60 values for a given room are consistently assigned to the same set, preventing data leakage and ensuring that the model is evaluated on unseen rooms.

  // == Data Augmentation
  // move augmentation to experiments

  #todo("add example datapoints from real and synth")

]

// Data Sources
//     Description of real and synthetic datasets.
//     Image and CSV file structure.
// Preprocessing
//     Frequency bands considered (after cutoff <100 Hz).
//     Filtering out low frequencies.
//     Capping long RT60s (>4s) with local interpolation.
//     Splitting strategy: room-wise, train/val/test.
// Data Augmentation
//     Applied transformations (flip, jitter, rotation, blur, etc.).
//     Justification.
