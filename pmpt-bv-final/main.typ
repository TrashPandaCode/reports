#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": gls, glspl, make-glossary, print-glossary, register-glossary

#show: island.with(
  lang: "en",
  title: "ertsi",
  authors: (
    (name: "Markus Heming", matnr: "11160720"),
    (name: "David Klein", matnr: "11150408"),
    (name: "Jonathan Kron", matnr: "11158145"),
    (name: "Milan Jezovsek", matnr: "11152836"),
    (name: "Philipp Wendt", matnr: "11158135"),
    (name: "Leo Kling", matnr: "11158198"),
  ),
  subheading: "Final Report",
  primary: rgb("#ffa808"),
  semester: "SoSe 2025",
  show-title-page: true,
  img: none,
  show-outline: true,
  bibliography: bibliography("reverbaration_estimation.bib"),
)

#set heading(numbering: "1.")

// Problem Statement
//     What is RT60 and why is it important?
//     Motivation for predicting RT60 from images.
//     Use cases: architectural acoustics, AR/VR, scene analysis, accessibility.
// Challenges
//     Acoustic properties are not directly visible.
//     Scarcity of labeled real data.
//     High variability in room design and materials.
// Goals of the Project
//     Predict full-band RT60 values from a single room image.
//     Use synthetic data to improve learning in low-data real scenarios.
//     Evaluate performance and generalization.

#include "chapters/abstract-introduction.typ"
#include "chapters/fundamental-concepts.typ"

#pagebreak()
= Dataset

#col[
  Creating the dataset represented one of the most substantial undertakings of this project, which led us to dedicate approximately 50% of our time to this  task.

  Before describing our dataset, it is important to discuss the existing datasets available in the literature. While the audio research community has access to numerous large-scale datasets, such as the VCTK Corpus @veauxVoiceBankCorpus2013 and EARS @richterEARSAnechoicFullband2024, none specifically address our particular requirements for reverb (or impulse response) and image pairs.

  The OpenAIR dataset @shelleyOpenAIR129thAudio2010 does contain an extensive collection of impulse responses alongside images; however, these images prove unsuitable for our purposes as they primarily feature outdoor scenes or cathedral-type environments rather than typical room interiors.

  This data scarcity represents a well-documented challenge in the field, as highlighted by #cite(<singhImage2ReverbCrossModalReverb2021>, form: "author"). Their approach involved aggregating data from multiple sources, including the OpenAIR dataset @shelleyOpenAIR129thAudio2010, various online libraries, and web scraping techniques. Due to limited availability of properly labeled data, they relied heavily on weak supervision, supplementing gaps with plausible data as determined by their research team.

  We determined this methodology was not appropriate for our specific requirements, as we needed a dataset focused exclusively on room images. Additionally, we identified significant concerns regarding data ownership, given the copyright complications frequently associated with web-scraped content. Consequently, we made the decision to develop our own proprietary dataset, which we detail in the following section.

  == Data Sources

  To address the absence of suitable existing datasets, we undertook our own data collection efforts. Recognizing that capturing sufficient real-world data for effective model training would be impractical, we adopted a hybrid approach that combines authentic measurements with synthetically generated images and impulse responses to supplement our real-world dataset.

  The real-world portion contains room images paired with RT60 values across multiple frequency bands, with the acoustic data stored in CSV format. This data was collected from various spaces throughout TH Köln, with a primary focus on office environments. However, the dataset also includes several outlier room types, such as server rooms, laboratories, and a motion capture studio.

  The acoustic measurements were conducted following the methodology outlined in @rev_man_meas. To enhance efficiency, we partially automated this process through a custom Python script that accepts the room name as input, performs a frequency sweep, and automatically saves the resulting impulse response, RT60 values, and generates plots for visual verification. Images were captured using a range of mobile devices, including a Google Pixel 8, iPhone 13, Samsung Galaxy S10, and iPad Mini. All photographs were taken from the doorway threshold at approximately head height (1.7m to 1.9m).

  #todo("check devices")
  #todo("go more in depth about analyzing recordings")

  To ensure comprehensive coverage, multiple measurements and images were recorded in each room, with the objective of capturing diverse acoustic and visual conditions. Throughout the data collection process, we took care to avoid capturing room modes or other acoustic artifacts that could introduce bias into our results.

  #todo("add amounts of data collected, some stats")

  The synthetic component of our dataset was developed through a three-stage pipeline. Initially, room environments were generated using the Blender software @foundationBlenderorgHomeBlender, which enabled us to create diverse room geometries and material properties while simultaneously rendering corresponding images of these virtual spaces.

  #todo("add more details about blender process")

  In the second stage, we generated impulse responses based on the room parameters extracted from Blender. These parameters encompassed the vertices defining the room's ground plane, the quantity of furniture elements such as chairs and desks, and the material properties of walls, ceilings, and floors. All rooms maintained a consistent height of 3 meters. These extracted parameters were subsequently processed through Treble @Treble, an acoustic simulation platform, which computed the corresponding impulse responses for each virtual room.

  The final stage involved deriving RT60 values from the generated impulse responses. This process utilized the pyfar @PyfarPyfar2025 and pyrato @PyfarPyrato2025 libraries, maintaining consistency with our methodology for processing the real-world acoustic data.
]

// Data Sources
//     Description of real and synthetic datasets.
//     Image and CSV file structure.
//     Frequency bands considered (after cutoff <100 Hz).
// Preprocessing
//     Filtering out low frequencies.
//     Capping long RT60s (>4s) with local interpolation.
//     Splitting strategy: room-wise, train/val/test.
// Data Augmentation
//     Applied transformations (flip, jitter, rotation, blur, etc.).
//     Justification.

#pagebreak()

= Experimental Methodology

// Evaluation Metrics
//     MSE / RMSE per frequency band.
//     Overall MAE / correlation.
// Implementation Tools
//     PyTorch, torchvision, DVC for reproducibility.

#pagebreak()

= Experiments and Results
// Baseline performance (v1.1?)

// Model Architecture
//     Pretrained backbone (e.g., ResNet).
//     Regression head for multi-output prediction (per-band RT60).
// Training Pipeline
//     Stage 1: Pretraining on synthetic data.
//     Stage 2: Finetuning on real data.
//     Loss function and optimizer.
//     Compile API for performance boost.

#pagebreak()

= Discussion

// Insights
//     How well can images predict RT60?
//     Strengths and limitations of the approach.
// Challenges Faced
//     Domain shift from synthetic to real.
//     Variability in real image quality.
// Potential Improvements
//     Multi-view inputs.
//     Hybrid audio-visual models.
//     Adding material classification.

#pagebreak()

= Conclusion
// Summary of the work.
// Key findings.
// Relevance and potential applications.
// Recommendations for future work.

#pagebreak()

= Project Planning
