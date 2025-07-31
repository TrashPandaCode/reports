#import "../lib.typ": *
#import "../utils.typ": *

= Abstract<abstract>
#blurb[
  _This project investigates the prediction of reverberation time (RT60) from single images of office rooms at Cologne University of Applied Sciences (TH Köln). Two AI models based on Microsoft's ResNet50 architecture are introduced._

  _The large model was trained on a dataset combining real-world measured data and synthetically generated data labled with simulated RT60 values. The synthetic RT60 values were computed using the Treble simulation software. The combined dataset, consisting of approximately 3500 samples, was found to be insufficient for achieving accurate RT60 estimation across all considered frequency bands._

  _The small model was trained exclusively on synthetic data representing empty, rectangular "shoebox" rooms with frequency-independent RT60 values. This model demonstrated accurate predictions and strong generalization capabilities across several orders of magnitude of room volume. While these results do not constitute formal proof of the approach, they provide a promising foundation for further research and do not contradict the initial hypothesis._
]

#col[
  = Introduction & Motivation<introduction>
  Reverberation refers to the persistence of sound in an environment after the sound source has ceased, caused by numerous reflections from surfaces such as walls, ceilings, and furniture. These reflections overlap and decay gradually as energy is absorbed by the environment. In contrast to discrete echoes reverberation forms a dense, continuous sound field. It is a natural phenomenon occurring in both enclosed spaces and reflective outdoor environments @garcia-lazaroSensoryPerceptualDecisional2024.

  Former research has shown reverberation as a crucial auditory cue which shapes how we perceive both sound sources and the surrounding environment. It influences spatial hearing, speech intelligibility, and distance perception by altering the spectral, temporal, and spatial characteristics of the sound reaching our ears @shinn-cunninghamBarbaraShinnCunningham2015. Inaccurate reproduction of auditory parameters, mainly reverberation, of the listening room can violate the expectations of the listener @schaabDemonstratorAuralizationControl2017.

  The so called _room divergence effect_ describes such a divergence between the listening room and the synthesized scene. Greater divergence lessens the systems plausibility @lubeckBinauralReproductionMicrophone2025.

  Reverberation times are traditionally measured by exciting a room with a loud sound signal and recording its acoustic response for subsequent analysis, as described in @rev_man_meas. This procedure is time-consuming, which limits its applicability in scenarios requiring real-time or near real-time acoustic processing, such as _augmented reality_ (AR), _mixed reality_ (MR), or _extended reality_ (XR) applications @jambrosicReverberationTimeMeasuring2008, as discussed further in @reverberation_time.

  Current approaches address this issue by pre-recording a room's reverberation time. However, this limits their flexibility and adaptability, as such measurements are tied to specific locations and static room configurations @zotterAmbisonicsPractical3D2019. Modern _head-mounted displays_ (HMDs) are typically equipped with front-facing cameras capable of capturing images of the environment. Leveraging this capability, we propose to use artificial intelligence to predict reverberation times directly from single images of a given space. The objective is to simplify and accelerate the estimation process for reverberation times. For reasons of complexity and feasibility, this work focuses specifically on predicting frequency-dependent reverberation times for office rooms at TH Köln.
]
