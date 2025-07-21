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
= Related Work

#col[
  Traditionally, RT estimation relied on the analysis of room impulse responses, which are often difficult to obtain in practical scenarios @kuttruffRoomAcoustics2006. This limitation has motivated the development of blind or non-intrusive methods that estimate RT directly from recorded audio, particularly speech.

  Early non-intrusive approaches exploited statistical properties of speech or energy decay characteristics. For example, maximum likelihood estimation and linear prediction methods were used to model the decay rate of the reverberant tail in speech @ratnamBlindEstimationReverberation2003. While effective under controlled conditions, these methods often struggle with background noise or highly non-stationary speech.

  With the rise of machine learning, more advanced techniques have been introduced. Several studies have combined handcrafted features—such as modulation spectra, spectral decay distributions, and energy-based features—with classical machine learning algorithms like support vector machines (SVMs) and random forests @lollmannImprovedAlgorithmBlind2010 @pregoBlindEstimatorsReverberation2015. These approaches have shown improved robustness and accuracy, especially when trained on diverse datasets representing a variety of acoustic environments.

  Recently, deep learning has gained traction for RT estimation. Deep neural networks, including convolutional and recurrent architectures, have been used to learn complex mappings from audio features to RT values @falconMachinelearningbasedEstimationReverberation2019 @pratesBlindEstimationReverberation. These data-driven methods have demonstrated strong performance, particularly in challenging acoustic conditions, but often require large labeled datasets and significant computational resources.



  The selection of input features is particularly important when estimating RT from images a room. Recent work by #cite(<perezMachinelearningbasedEstimationReverberation>, form: "prose") has demonstrated approaches that utilize only a single room with rearranged furniture as input, relying on 360-degree panoramic images and 3D representations to capture spatial and structural changes reflected in these visual modalities. These methods leverage spatial cues from panoramic images or 3D room models to enhance the prediction of reverberation characteristics, as these formats provide a comprehensive view of the room's geometry and surface materials. This approach of using spatially rich features from a single physical space with varying furniture arrangements to improve estimation accuracy and robustness differs significantly from our methodology, which focuses on images captured from a single viewpoint from various rooms.

  Despite these advances, robust RT estimation across diverse real-world conditions remains challenging. Factors such as background noise, speaker variability, and multiple sound sources can degrade performance. Ongoing research continues to explore novel feature representations, improved learning architectures, and data augmentation strategies to enhance generalization and reliability @singhImage2ReverbCrossModalReverb2021.

  In summary, the field has progressed from statistical and signal processing-based methods to sophisticated machine learning and deep learning approaches, with increasing emphasis on perceptually motivated features. The integration of auditory-inspired features with modern machine learning, as explored by #cite(<perezMachinelearningbasedEstimationReverberation>, form: "prose") and #cite(<singhImage2ReverbCrossModalReverb2021>, form: "prose"), represents a promising direction for advancing non-intrusive reverberation time estimation from images.
]

#include "chapters/dataset.typ"
// move this to its desired location whenever
#include "chapters/synth-vs-real-data.typ"

#pagebreak()

= Experimental Methodology

== Evaluation Metrics

=== Mean Squared Error & Mean Absolute Error

=== R#super[2]

=== Grad-CAM

=== t-SNE

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
