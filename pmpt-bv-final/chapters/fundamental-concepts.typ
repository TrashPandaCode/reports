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

Sabine's formula @sabineReverberation1922: \
$
"RT60 (seconds)" approx 0.161 dot V / A \
V = "Volume of the room in cubic meters" \
A = "Total absorption area in square meters"
$

Eyring expanded on Sabine as follows @eyringREVERBERATIONTIMEDEAD1930: \
$
"RT60 (seconds)" approx 0.161 dot V / (A' + 4"mV") dot s \
"A'" = S_"tot" [-2.30 log_10(1-alpha_"ey")] dot m^2 \
alpha_"ey" = (accent(alpha_T, ´) dot S_T + accent(alpha_R, ´) dot S_R + sum accent(alpha_i, ´) dot S_i) / S_"tot"
$


// What is Lundeby's Method? I have read this https://akutek.info/Papers/IW_Uncertainties.pdf and many other websites, but I am still not sure what it is.
=== Manual Measurement (Lundeby's Method)
Manual measurement of RT60 typically involves capturing the impulse response (IR) of a room using a microphone and a sound source. The impulse response is then analyzed to determine the decay time of the sound, which is used to calculate RT60.

#figure(
  image("../images/audio-installation-to-evaluate-reverberation-properties.png"),
  caption: "A Sketch of a setup for measuring RT60 using Lundeby's Method. Source: https://vocal.com/dereverberation/methods-of-rt60-estimation/"
)

=== Simulation Methods (Image Source Ray, Raytracing, Wave-based)
Simulation methods for estimating RT60 include image source, ray tracing and wave-based approaches. These methods use computer simulations to model how sound behaves in a room, taking into account the geometry of the space and the materials present. By simulating the propagation of sound waves, these methods can provide accurate estimates of RT60 without the need for physical measurements.

==== Image Source Method @RoomImpulseResponsea
This geometric approach models each reflection as if it were emitted by a virtual “image” of the sound source, mirrored across room boundaries. It effectively captures early reflections by tracing straight-line paths from these image sources to the listener. Although computationally efficient for early-arrivals in shoebox or simple rectangular geometries, its complexity grows exponentially with reflection order.

*Extensions & optimizations:* Modern implementations leverage GPU acceleration (e.g., gpuRIR), making large-scale batch simulation feasible—especially useful for ML dataset generation or real-time VR/AR acoustics . Hybrid variants incorporate directivity models (via spherical harmonics) and anchor-point image sources to simulate asymmetric or directional sound sources.

*Use cases:* Ideal for predicting RT60 and early reflection patterns in moderate-sized rooms, design iterations during architectural planning, and audio rendering in VR avatars or AR headsets.

==== Ray Tracing @RoomImpulseResponse
This method emits numerous rays from the source, tracing their bounces off surfaces with absorption and scattering taken into account. It excels at modeling late, dense reflections, and is well-suited for complex geometries where clean mirror paths are insufficient.

*Advantages & limitations:* While flexible and able to integrate statistical models for diffusion, ray tracing typically neglects diffraction and wave effects. Hybrid approaches combine early reflection models (via image-source) with stochastic ray tracing for diffuse tails to enhance realism.

*Use cases:* Best for large, irregular spaces—think concert halls, industrial complexes, game engines with procedural acoustics, and commercial acoustic simulation tools.

==== Wave-based Methods @wittebolHybridRoomAcoustic2024
Unlike geometric models, wave-based simulations solve the full physical wave equation, capturing diffraction, interference, and low-frequency modal behaviors. Common techniques include Finite Difference Time Domain (FDTD), Boundary Element Methods (BEM), and Discontinuous Galerkin (DG) solvers.

*Advantages & limitations:* These methods achieve high accuracy across frequencies, especially at bass and transitional ranges, but are compute- and memory-intensive—limited to small volumes or coarse meshes. Recent hybrid methods integrate wave solvers for low frequencies with geometric simulations for high frequencies to balance accuracy and efficiency.

*Use cases:* Critical for performance spaces where low-frequency clarity matters (e.g., studios, auditoria), acoustic research, or validation benchmarks for faster models.

=== Typical Ranges and Influences
Reverberation Time (RT60) varies significantly depending on a room’s purpose, size, geometry, and surface materials. In general, speech-focused spaces such as classrooms, offices, and conference rooms aim for shorter RT60s—typically between 0.4 and 0.8 seconds—to maintain clarity and speech intelligibility. Music rehearsal rooms and small performance spaces may target 0.8 to 1.2 seconds, allowing for a balance between clarity and some musical fullness. Large performance venues such as concert halls often aim for RT60s of 1.8 to 2.2 seconds, providing a sense of spaciousness, richness, and blend for orchestral music. In contrast, cathedral-like spaces or very large halls can exhibit RT60s exceeding 4–6 seconds, creating a grand and immersive effect, but at the cost of speech clarity.

Several key factors influence RT60:

- *Room volume:* Larger volumes tend to result in longer reverberation times due to the increased distance sound must travel and the greater energy retention in air and surfaces.

- *Surface materials:* Hard, reflective surfaces like concrete, glass, or marble reflect sound and increase RT60, while absorptive materials such as carpets, curtains, acoustic panels, and upholstered furniture reduce it.

- *Furnishings and occupancy:* A furnished room with people present can significantly reduce RT60, especially at mid-to-high frequencies, compared to an empty, unfurnished one.

- *Room geometry:* Irregular shapes or features that scatter sound (e.g., diffusers or bookshelves) can alter reflection patterns and influence decay characteristics.

- *Air absorption and humidity:* At higher frequencies, air absorption becomes more significant, and environmental factors like humidity can affect decay times, especially in very large or high-frequency-sensitive spaces.

=== RT60's Influence on the Acoustic Feel of a Room
RT60 plays a fundamental role in shaping the acoustic perception or "feel" of a space. A short RT60 (e.g., under 0.5 seconds) creates a dry, intimate, and controlled acoustic environment. This is ideal for activities requiring speech clarity or precision, such as in broadcast studios, lecture halls, or control rooms. In such environments, sound does not linger, making individual words or transient sounds stand out clearly and preventing masking.

Conversely, a long RT60 (e.g., over 2 seconds) creates a lush, reverberant, and enveloping experience. This can be desirable in certain musical contexts, where sustained notes blend smoothly and create a sense of grandeur. However, excessively long reverberation can muddy speech or fast musical passages by overlapping sounds over time, resulting in poor articulation and intelligibility.

Listeners are often subconsciously aware of RT60 even without precise measurements. A room that "feels echoey" or "boomy" often has a high RT60, while one that feels "dead" or "flat" may have been over-treated with absorption. Thus, tailoring RT60 to the intended function of a space is one of the most critical decisions in acoustic design. Getting this balance right enhances comfort, usability, and overall auditory experience.

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