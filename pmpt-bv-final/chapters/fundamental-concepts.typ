#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Fundamental Concepts
#col[
  == Reverberation Time (RT60)

  Reverberation time quantifies the temporal characteristics of sound decay within an enclosed acoustic environment. This parameter serves as a fundamental metric in architectural acoustics, significantly influencing the acoustic behavior and perceptual quality of enclosed spaces @sabineCollectedPapersAcoustics1922. The most prevalent measurement standard is RT60, which defines the time required for sound pressure level to decay by 60 decibels from its initial value. This measurement exhibits frequency-dependent characteristics, with RT60 values varying substantially across different frequency bands due to the frequency-selective absorption properties of boundary materials @longArchitecturalAcoustics2006.

  Alternative decay metrics include RT20 and RT30, which measure decay times for 20 dB and 30 dB reductions, respectively, with values extrapolated to estimate RT60. These shorter decay measurements are often employed when signal-to-noise ratios are insufficient for reliable 60 dB decay measurements, with the initial 5 dB of decay typically ignored to exclude early reflections that may compromise measurement uniformity @ISO3382220082008. RT20 and RT30 values are typically extrapolated to estimate RT60, though this extrapolation may introduce measurement uncertainties in acoustically complex environments.

  The 60 dB threshold represents a logarithmic reduction corresponding to one-thousandth of the initial sound pressure level, or equivalently, one-millionth of the initial sound intensity. This substantial reduction provides a practical and perceptually significant measurement point for acoustic decay analysis.

  RT60 can be determined through direct measurement, computational simulation, or predictive calculation methodologies, with machine learning approaches increasingly being employed for complex acoustic modeling.

  === Theoretical Calculation Methods

  Direct measurement of RT60 requires considerable instrumentation and temporal resources, whereas theoretical calculation demands minimal equipment but extensive parameter determination @beranekConcertHallsOpera2010. Calculation-based approaches necessitate manual acquisition of room-specific variables, including volumetric dimensions, boundary surface areas, and absorption coefficients of constituent materials. Multiple theoretical frameworks exist for RT60 estimation, including the Sabine, Norris-Eyring, and Millington-Sette equations @longArchitecturalAcoustics2006. These formulations demonstrate that reverberation time increases proportionally with room volume and inversely with total acoustic absorption.

  Research indicates that the Sabine equation provides the most accurate RT60 estimation among commonly employed theoretical methods @kuttruffRoomAcoustics2006. Due to its minimal parametric requirements, the Sabine approach also offers superior computational efficiency for practical RT60 calculation.

  *Sabine Formula* @sabineReverberation1922:
  $
    "RT"_60 approx 0.161 (V/sum(alpha_i A_i))
  $
  where:
  - $V$ = Volume of the room ($"m"^3$)
  - $A_i$ = Surface area of each boundary ($"m"^2$)
  - $alpha_i$ = Absorption coefficient of each boundary

  The Sabine formula assumes uniform sound energy distribution throughout the acoustic volume and is typically applied to spaces with varying absorption characteristics @cremerPrinciplesApplicationsRoom1982. It is crucial to recognize that this formulation provides an estimation rather than an exact calculation, as it does not account for all physical phenomena influencing sound decay, including diffraction effects, coupled volumes, and non-uniform absorption distributions @kuttruffRoomAcoustics2006.

  // What is Lundeby's Method? I have read this https://akutek.info/Papers/IW_Uncertainties.pdf and many other websites, but I am still not sure what it is.
  === Manual Measurement (Lundeby's Method)<rev_man_meas>
  Manual measurement of RT60 typically involves capturing the impulse response (IR) of a room using a microphone and a sound source. The impulse response is then analyzed to determine the decay time of the sound, which is used to calculate RT60.

  #figure(
    image("../images/audio-installation-to-evaluate-reverberation-properties.png"),
    caption: "A Sketch of a setup for measuring RT60 using Lundeby's Method. Source: https://vocal.com/dereverberation/methods-of-rt60-estimation/",
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
  Reverberation Time (RT60) varies significantly depending on a room's purpose, size, geometry, and surface materials. In general, speech-focused spaces such as classrooms, offices, and conference rooms aim for shorter RT60s — typically between 0.4 and 0.8 seconds — to maintain clarity and speech intelligibility. Music rehearsal rooms and small performance spaces may target 0.8 to 1.2 seconds, allowing for a balance between clarity and some musical fullness. Large performance venues such as concert halls often aim for RT60s of 1.8 to 2.2 seconds, providing a sense of spaciousness, richness, and blend for orchestral music. In contrast, cathedral-like spaces or very large halls can exhibit RT60s exceeding 4-6 seconds, creating a grand and immersive effect, but at the cost of speech clarity.

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

  #todo("Abstract for nns in general")

  == Convolutional Neural Networks // Is this to brief?
  Convolutional Neural Networks (CNN's) represent a specialized class of deep learning neural networks particularly well-suited for processing grid-like data structures such as images. The fundamental architecture of CNN's leverages three key principles: local connectivity, parameter sharing, and translation equivariance, which make them highly effective for computer vision tasks such as our reverberation time estimation from images. Unlike traditional fully connected networks, CNN's employ convolutional layers that apply learnable filters across input data, enabling the network to detect local features such as edges, textures and spatial patterns while maintaining computational efficiency.

  The typical CNN architecture consists of alternating convolutional and pooling layers followed by fully connected layers for classification or regression tasks. Convolutional layers perform feature extraction through the application of multiple filters, each learning to detect specific patterns in the input data. Pooling layers (commonly max pooling or average pooling) reduce the spatial dimensions while preserving important features, contributing to the network's robustness to small translations and reducing computational overhead. This hierarchical feature learning allows CNN's to capture both low-level features (e.g., edges, corners) in early layers and increasingly higher-level semantic information (e.g., object parts, textures) in deeper layers.

  === Transfer Learning and Pre-trained Models
  Transfer learning has emerged as a crucial technique in modern deep learning, particularly when dealing with limited training data or computational resources. The core principle involves leveraging knowledge gained from training on large-scale datasets and applying it to related target tasks.

  Pre-trained models, such as ResNet architectures trained on ImageNet or specialized datasets like Places365, provide robust feature representations that capture fundamental visual patters. Places365-trained models are particularly relevant for architectural and spatial understanding tasks, as they have been trained on scene recognition data that includes various indoor and outdoor environments. This makes them well-suited as backbone networks for applications involving room analysis or spatial acoustic modelling, where understanding environmental context is crucial.

  The implementation of transfer learning for CNN's can follow different strategies: feature extraction, where pre-trained layers are frozen and used as fixed feature extractors, or fine-tuning, where the entire network or selected layers are updated with a lower learning rate. The choice between these approaches depends on the similarity between source and target domains, the amount of available training data and computational constraints.

  //Not sure about this section. It feels like its a bit brief and not really adding much value, even if formulated in a much larger context. It was listed in the outline in the corresponding git issue, so I included it here.
  === Loss Functions for Regression
  In regression tasks, the choice of loss function significantly impacts model performance and training dynamics. Mean Squared Error (MSE) remains the most commonly used loss function for regression problems due to its mathematical properties and ease of optimization, computing the average squared difference between predicted and target values.
  For multi-dimensional regression outputs, such as predicting reverberation times across multiple frequency bands, individual frequency band losses can be monitored separately while the overall loss represents the aggregate error across all dimensions. The selection of appropriate optimizers like AdamW, which incorporates weight decay regularization, and learning rate scheduling techniques such as ReduceLROnPlateau help achieve better convergence and avoid overfitting.
]
