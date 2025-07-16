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

// =================================================================
= Abstract
// this is subject to change
This project explores the prediction of reverberation time (RT60) from single images of office rooms at Technische Hochschule Köln. RT60 is a key parameter in room acoustics, influencing sound clarity and spatial audio rendering in applications like AR and XR. Traditional measurement methods are complex and time-consuming, limiting their use in real-time scenarios. By leveraging computer vision and deep learning, we aim to predict RT60 values using visual cues from room images, enhancing the realism of virtual environments. Our approach combines synthetic data augmentation with real-world validation to address challenges in acoustic property estimation.

#v(1cm)
= Introduction

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
  // bessser?
  // würde noch bisschen mehr auf unser problem hinten, vlt bisschen weniger technisch hier und mehr beschreiben wie wichtig reverberation time für den raumklang/eindruck ist damit man dann später sagen kann das ist der grund warum wir nur RT estimaten
  Reverberation, or reverb, is the persistence of sound in a space after the original source has stopped, caused by multiple reflections off surfaces like walls, ceilings, and furniture. These reflections overlap and gradually decay as they are absorbed by materials in the room, with their amplitude decreasing until they fade completely. Unlike distinct echoes, which are heard with a delay of 50 to 100 milliseconds, reverberation consists of closely spaced reflections arriving within about 50 milliseconds of each other. Reverberation occurs naturally in enclosed and even outdoor reflective environments and can also be artificially produced using digital or mechanical effects. While it can enhance the sense of space in music or recordings, excessive reverberation—especially in noisy environments—can reduce speech clarity and hinder both human and machine understanding. The duration of reverberation, known as reverberation time, is typically measured using RT60 (or T60), which represents the time it takes for sound to decay by 60 decibels. Because reverberation is frequency-dependent, accurate measurement often involves analyzing multiple frequency bands, making it important to specify the frequency range when reporting RT60 values.

  // Übergang verbessern?
  Measuring RT60 is often too complex, as it typically requires specific equipment and controlled conditions, making the process cumbersome and time-consuming. This complexity limits its usability in applications that rely on real-time or near real-time audio processing, such as AR or XR. In these contexts, accurate RT60 estimates can greatly improve spatial audio rendering by making virtual environments sound more realistic and immersive, with audio characteristics that match the simulated space.
  However, with the described limitations of current measurement methods, AR and XR applications are forced to either determine their RT60 values ahead of time or use simplified models that do not accurately reflect the acoustic properties of the environment. Determining RT60 values in advance means that the applications are forced to have static environments, which limits the dynamic nature of these applications. Using simplified models means that the applications are forced to use approximations that do not accurately reflect the acoustic properties of the environment, which can lead to a less immersive experience for the user.

  To address these issues, our goal is to simplify and accelerate the RT60 estimation process by using artificial intelligence to predict reverberation times from single images of environments. For complexity and time reasons, we focus on predicting RT60 values of office rooms at Technische Hochschule Köln.
]

= Motivation
#pagebreak()

= Fundamental Concepts
// Reverberation Time (RT60)
//     Definition and frequency dependence.
//     Measurement methods. (sabine & eyring, manual measurement (capturing of ir, Lundeby's Method), simulation methods (image source ray, raytracing, wave-based))
//     Typical ranges and what influences them.
#col[
== Reverberation Time (RT60)
Reverbaration Time describes the Time it takes for sound to decay in a given environment. It is a crucial parameter in acoustics, influencing how sound behaves in an environment. The most prolific measurement method is the RT60, which measures the time it takes for sound to decay by 60 decibels. This measurement is frequency-dependent, meaning that RT60 values can vary significantly across different frequency bands. The RT60 can be measured using various methods, including manual measurements, simulation methods, and machine learning approaches.

The 60 decibel threshold is chosen because it represents a significant reduction in sound energy, making it a practical point for measuring decay. A Falloff of 60 dB also corresponds a to a thousandth of the inital sound pressure level or a millionth of the initial sound intensity.

=== Sabine & Eyring
The Sabine and Eyring formulas are two of the most widely used methods for calculating RT60. The Sabine formula is based on the assumption that sound energy is uniformly distributed in a room, while the Eyring formula accounts for the absorption of sound by surfaces in the room. Both formulas provide a way to estimate RT60 based on the volume of the room and the absorption coefficients of its surfaces. It should be noted that these formulas only approximate the RT60, as they do not account for all factors that influence sound decay in a room. The Sabine formula is often used for rooms with high absorption coefficients, while the Eyring formula is more suitable for rooms with lower absorption coefficients.

Sabine's formula: \
$
"RT60 (seconds)" approx 0.161 dot V / A \
V = "Volume of the room in cubic meters" \
A = "Total absorption area in square meters"
$

Eyring expanded on Sabine as follows: \
$
"RT60 (seconds)" approx 0.161 dot V / (A' + 4"mV") dot s \
"A'" = S_"tot" [-2.30 log_10(1-alpha_"ey")] dot m^2 \
alpha_"ey" = (accent(alpha_T, ´) dot S_T + accent(alpha_R, ´) dot S_R + sum accent(alpha_i, ´) dot S_i) / S_"tot"
$


// What is Lundeby's Method? I have read this https://akutek.info/Papers/IW_Uncertainties.pdf and many other websites, but I am still not sure what it is.
=== Manual Measurement (Lundeby's Method)
Manual measurement of RT60 typically involves capturing the impulse response (IR) of a room using a microphone and a sound source. The impulse response is then analyzed to determine the decay time of the sound, which is used to calculate RT60.

=== Simulation Methods (Image Source Ray, Raytracing, Wave-based)
Simulation methods for estimating RT60 include image source, ray tracing and wave-based approaches. These methods use computer simulations to model how sound behaves in a room, taking into account the geometry of the space and the materials present. By simulating the propagation of sound waves, these methods can provide accurate estimates of RT60 without the need for physical measurements.

=== Typical Ranges and Influences
Typical RT60 values can vary widely depending on the type of environment. For example, small rooms may have RT60 values as low as 0.1 seconds, while large auditoriums can have values exceeding 2 seconds. Factors influencing RT60 include room size, shape, surface materials, and furnishings. Hard surfaces like concrete or glass tend to increase RT60, while soft materials like carpets and curtains reduce it.

// Room Acoustics and Image-based Prediction
//     Why predicting RT60 from images is plausible (visual cues: size, materials, layout).
//     Prior work (if any): vision-based acoustics inference.
//

== Room Acoustics and Image-based Prediction

=== Plausibility of Predicting RT60 from Images
Predicting RT60 from images is plausible because visual cues in a room’s appearance often correlate strongly with its acoustic characteristics. Key visual indicators such as room size, shape, surface materials, and furnishing density provide valuable information for estimating reverberation time. For instance, large rooms with hard, reflective surfaces like bare concrete or glass typically have longer RT60s, while smaller, carpeted spaces with soft furnishings tend to have shorter RT60s. The presence of diffusive elements, ceiling height, and spatial openness also contribute to acoustic behavior and are often clearly visible in images. With the increasing power of computer vision and deep learning, models can learn to associate such visual patterns with measured RT60 values, making image-based prediction a promising and intuitive approach to room acoustics analysis.

=== Prior Work in this Field

//
// Machine Learning & CNNs
//     Brief overview of CNNs.
//     Transfer learning and augmentation.
//     Loss functions for regression.
// Synthetic vs. Real Data
//     Use of simulation to augment learning.
//     Domain gap considerations.
// Evaluation Metrics
]

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
