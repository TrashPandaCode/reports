#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

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
The Sabine @sabineReverberation1922 and Eyring @eyringREVERBERATIONTIMEDEAD1930 formulas are two of the most widely used methods for calculating RT60. The Sabine formula is based on the assumption that sound energy is uniformly distributed in a room, while the Eyring formula accounts for the absorption of sound by surfaces in the room. Both formulas provide a way to estimate RT60 based on the volume of the room and the absorption coefficients of its surfaces. It should be noted that these formulas only approximate the RT60, as they do not account for all factors that influence sound decay in a room. The Sabine formula is often used for rooms with high absorption coefficients, while the Eyring formula is more suitable for rooms with lower absorption coefficients.

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