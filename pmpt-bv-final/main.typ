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
#include "chapters/dataset.typ"

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
