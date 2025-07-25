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
#include "chapters/machinelearning-cnns.typ"

#pagebreak()

= Experimental Methodology

#col[

  == Evaluation Metrics

  When evaluating the performance of our estimation model, we employed a comprehensive set of metrics to assess its accuracy and generalization capabilities. The primary evaluation metrics will be briefly described in the following sections.

  === Mean Squared Error & Mean Absolute Error

  Mean Squared Error (MSE) and Mean Absolute Error (MAE) serve as fundamental regression metrics for quantifying the accuracy of RT60 predictions. MSE penalizes larger prediction errors more heavily due to its quadratic nature, making it particularly sensitive to outliers, while MAE provides a more robust measure of average prediction deviation. In the context of RT60 estimation, these metrics are calculated per frequency band, allowing for detailed analysis of model performance across the acoustic spectrum @goodfellowDeepLearning2016 @MeanAbsoluteError2025 @MeanSquaredError2025.

  === R#super[2] Coefficient of Determination

  The R#super[2] coefficient quantifies the proportion of variance in the measured RT60 values that is predictable from the input images. This metric provides insight into how well the model captures the underlying acoustic-visual relationships present in the data. An R#super[2] value approaching 1.0 indicates strong predictive capability, while values closer to 0 (or even negative values) suggest limited model effectiveness. For RT60 estimation tasks, R#super[2] values are particularly valuable when evaluated per frequency band, as acoustic behavior varies significantly across the frequency spectrum due to material absorption characteristics and room geometry effects @CoefficientDetermination2025.

  === Grad-CAM Visualization

  Gradient-weighted Class Activation Mapping (Grad-CAM) @selvarajuGradCAMVisualExplanations2016 provides interpretable visualizations of which regions in input images contribute most significantly to RT60 predictions. This technique leverages gradients flowing into the final convolutional layer to generate localization maps highlighting important visual features. In our acoustic estimation context, Grad-CAM reveals whether the model appropriately focuses on acoustically relevant features such as room geometry, surface materials, and furnishing density. This interpretability is crucial for validating that the model learns meaningful acoustic-visual correlations rather than spurious dataset artifacts.

  === t-SNE Analysis

  t-distributed Stochastic Neighbor Embedding (t-SNE) enables visualization of high-dimensional feature representations learned by our CNN model in a reduced 2D (or 3D) space. By analyzing the clustering patterns of room images in this reduced feature space, we can assess whether the model learns to group acoustically similar environments together. Effective clustering would indicate that the model captures underlying acoustic properties that correlate with visual characteristics, providing additional validation of the learned representations beyond numerical accuracy metrics @geronHandsonMachineLearning2023.

  == Experimental Design and Execution

  Our experimental approach emphasized reproducibility, systematic evaluation, and methodical documentation throughout the research process. The experimental methodology was designed to enable rigorous comparison between different model configurations while maintaining scientific rigor in our analysis.

  === Model Version Control and Tracking

  To ensure comprehensive documentation of our experimental progress, we implemented a systematic tracking methodology using a _Google Sheets_ #todo("reference to appendix") spreadsheet to meticulously record all experimental configurations and outcomes. This approach allowed us to maintain a detailed log of model versions, hyperparameter settings, training configurations, and corresponding performance metrics across all frequency bands. Each experimental run was assigned a unique version identifier, referencing a git commit, facilitating easy reference and comparison between different model iterations.

  The version control system enabled us to track the evolution of our models systematically, documenting not only quantitative performance metrics but also qualitative observations about training behavior, convergence patterns, and model stability. This methodical approach proved essential for identifying promising research directions and avoiding the repetition of unsuccessful configurations.

  We also utilized _sciebo_ for additional storage and backup of our experimental data, like plots and model weights. Initially, we used _DVC_ for version control of our data and model weights, but later switched to _sciebo_ as it provided a more user-friendly interface, without the need to onboard all team members to a new tool.

  === Architecture Exploration

  Our experimental design incorporated systematic exploration of multiple CNN backbone architectures to identify the most suitable foundation for RT60 estimation. We evaluated several pretrained architectures, including different variants of ResNet (ResNet18, ResNet34, ResNet50), EfficientNet models, and Vision Transformer architectures. Each backbone was assessed based on its capacity to learn meaningful acoustic-visual relationships while maintaining computational efficiency for our specific task requirements.

  The architecture exploration phase involved careful consideration of model complexity versus performance trade-offs, with particular attention to overfitting tendencies given our limited dataset size. We systematically documented the performance characteristics of each architecture across different frequency bands, enabling informed decisions about the optimal balance between model capacity and generalization capability.

  === Hyperparameter Optimization

  We conducted extensive hyperparameter optimization experiments covering learning rates, batch sizes, optimizer configurations, regularization parameters, data augmentation strategies, and learning rate schedules.

  Additionally, we investigated various regularization techniques including dropout rates, weight decay parameters, and early stopping criteria to prevent overfitting on our limited dataset.

  === Documentation of Learnings

  Throughout the experimental process, we maintained detailed documentation of insights and lessons learned from each experimental iteration. This included observations about training dynamics, identification of promising research directions, and documentation of unsuccessful approaches to guide future research efforts.
]

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
