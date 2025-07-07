#import "lib.typ": *
#import "utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#import "@preview/glossarium:0.5.4": make-glossary, register-glossary, print-glossary, gls, glspl

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
  bibliography: bibliography("reverbaration_estimation.bib")
)

#set heading(numbering: "1.")

// =================================================================

= Introduction & Motivation

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

#col[
  // ich würde hier etwas weiter ausholen und erstmal bei nachhallzeit genrell anfangen (vlt wie bei wiki https://en.wikipedia.org/wiki/Reverberation). wir haben ja echt viel platz und können das ruhig etwas ausfühlicher machen.
  RT60 is the time it takes for sound to decay by 60 decibels in a space after the source has stopped. It’s a key measure of reverberation, indicating how "live" or "dead" a room sounds. In acoustics, especially for recording studios, classrooms, or concert halls, RT60 helps assess speech intelligibility and musical clarity. An optimal RT60 varies depending on the room’s purpose—shorter for speech-focused spaces and longer for music. Controlling RT60 improves audio quality, listener comfort, and overall room performance.

  // unser aufhänger generell war ja auch eher die bedeutung von nachhall für AR/XR/VR anwendungen. ich würde auch nicht sagen das für die messung specialized equipment benötigt wird (mikro und lautsprecher reichen ja), sondern dass es aufwändiger ist und länger dauert
  // a little bit much slop maybe
  But despite its usefulness, measuring RT60 is often more complex and time-consuming than it needs to be, typically requiring specialized equipment and controlled conditions. This creates a barrier for everyday users who could benefit from understanding a room’s acoustics. Since RT60 values are valuable for optimizing audio setups, improving speech clarity, and enhancing overall acoustic design, simplifying the measurement process can make this information more accessible.


]

#pagebreak()

= Background

// Reverberation Time (RT60)
//     Definition and frequency dependence.
//     Measurement methods. (sabine & eyring, manual measurement (capturing of ir, Lundeby's Method), simulation methods (image source ray, raytracing, wave-based))
//     Typical ranges and what influences them.
// Room Acoustics and Image-based Prediction
//     Why predicting RT60 from images is plausible (visual cues: size, materials, layout).
//     Prior work (if any): vision-based acoustics inference.
// Machine Learning & CNNs
//     Brief overview of CNNs.
//     Transfer learning and augmentation.
//     Loss functions for regression.
// Synthetic vs. Real Data
//     Use of simulation to augment learning.
//     Domain gap considerations.

#pagebreak()

= Dataset
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
