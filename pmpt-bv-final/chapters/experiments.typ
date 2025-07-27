#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

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

  To ensure comprehensive documentation of our experimental progress, we implemented a systematic tracking methodology using a _Google Sheets_ (@time_tracking) spreadsheet to meticulously record all experimental configurations and outcomes. This approach allowed us to maintain a detailed log of model versions, hyperparameter settings, training configurations, and corresponding performance metrics across all frequency bands. Each experimental run was assigned a unique version identifier, referencing a git commit, facilitating easy reference and comparison between different model iterations.

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

#col[
  This section presents the results of our systematic experimentation process, which involved 11 major experimental iterations (v1.0 through v1.11) spanning approximately two months of development. Each experiment was designed to explore different aspects of the RT60 prediction problem, from architectural choices to training methodologies and data augmentation strategies.

  == Experimental Framework

  Our experimental approach followed a structured methodology with comprehensive tracking of hyperparameters, architectural decisions, and performance metrics. All experiments were version-controlled using Git, with commit hashes recorded for reproducibility. The primary evaluation metric used throughout was Mean Squared Error (MSE) on the validation set, supplemented by visual inspection of prediction distributions and R² scores where applicable.

  The experiments can be broadly categorized into three phases: initial baseline establishment (v1.0-v1.2), architectural and training optimizations (v1.3-v1.8), and advanced techniques exploration (v1.9-v1.11).

  == Phase 1: Baseline Development (v1.0-v1.2)

  === Initial Baseline (v1.0)
  Our first experiment established the foundational architecture using ResNet50 pretrained on Places365, chosen for its relevance to scene understanding tasks. The model employed a hybrid training strategy, utilizing both synthetic and real data during training and evaluation phases.

  The synthetic dataset initially comprised samples from Leo Kling (scenes 1-10) and Jonathan Kron (scenes 1-6, 9), representing a diverse set of room configurations. This baseline achieved an MSE of $0.1076$, providing our initial performance benchmark.

  === Dataset Expansion (v1.1-v1.2)
  Building upon the baseline architecture, v1.1 expanded the synthetic dataset to include contributions from additional team members: Milan (scenes 1-4), Markus (scenes 1-10), and David (scenes 1-3), alongside the original Leo and modified Jonathan datasets. This expansion improved performance to an MSE of $0.0934$, representing a $13.2%$ improvement over the baseline.

  However, v1.2 demonstrated the importance of data quality over quantity. Adding Jonathan's remaining scenes (6, 7, 8) actually degraded performance to an MSE of $0.1144$, indicating that indiscriminate dataset expansion can be counterproductive.

  == Phase 2: Architecture and Training Optimization (v1.3-v1.8)

  === Simulation Method Analysis (v1.3)
  Version 1.3 investigated the impact of different acoustic simulation methodologies by partitioning the synthetic training data into "hybrid" and "Image Source Method (ISM) and Ray-Radiosity (RR)" categories. Three separate training runs were conducted:

  - Hybrid-only training: MSE = $0.1128$
  - Non-hybrid-only training: MSE = $0.1078$
  - Combined training: MSE = $0.1114$

  The results revealed that hybrid simulation methods did not yield superior performance, with only a $4.4%$ difference between approaches—likely within the margin of experimental error. This finding simplified our data preparation pipeline by eliminating the need for simulation method stratification.

  === Data Augmentation Enhancement (v1.4)
  Version 1.4 focused on improving data augmentation strategies, implementing more aggressive techniques including random perspective transformations, enhanced cropping, and increased rotation ranges. This approach yielded a modest improvement to MSE = $0.0973$, representing a slight but consistent enhancement over v1.3.

  === Ensemble Methods Investigation (v1.5)
  Our exploration of ensemble methods in v1.5 involved training three separate models and combining their predictions. Individual model performances were remarkably consistent:
  - Ensemble model 1: MSE = $0.0923$
  - Ensemble model 2: MSE = $0.0923$
  - Ensemble model 3: MSE = $0.0930$
  - Combined ensemble: MSE = $0.0925$

  While achieving our best performance to date, the ensemble approach came with significant computational overhead. The combined model size of 327.244 KB exceeded our 250MB soft limit, making this approach impractical for deployment scenarios requiring model efficiency.

  === Architecture Scaling Experiments (v1.6-v1.8)
  We systematically investigated the trade-offs between model complexity and performance through architecture scaling experiments:

  *ResNet18 (v1.6):* Implementing gradient accumulation, improved learning rate scheduling with OneCycleLR, enhanced early stopping criteria, and gradient clipping, we achieved MSE = $0.1022$ with a significantly reduced model size (~50MB). This represented only a marginal performance decrease while providing substantial computational benefits.

  *ResNet50 Comparison (v1.7):* Using identical training procedures as v1.6 but with ResNet50 architecture resulted in MSE = $0.1283$, unexpectedly worse than the smaller ResNet18 variant, suggesting potential overfitting or suboptimal hyperparameter scaling.

  *Progressive Resolution Training (v1.8):* Experimenting with progressive resolution scaling (224px → 320px → 448px) yielded MSE = $0.1114$, indicating that the standard 224px resolution was sufficient for our task requirements.

  == Phase 3: Advanced Techniques and Alternative Approaches (v1.9-v1.11)

  === Multi-Domain Training Challenges (v1.9)
  Version 1.9 attempted to bridge the domain gap between synthetic and real data by simultaneously training on both data types. This approach resulted in significant training instability, with MSE = $0.2803$ (best checkpoint: $0.157$). The training exhibited erratic loss behavior and convergence difficulties, highlighting the challenges of multi-domain learning without proper domain adaptation techniques.

  === Alternative Architecture Exploration (v1.10-v1.11)
  Our final experimental phase explored alternative architectural approaches:

  *Single Model Refinement (v1.10):* Returning to the v1.5 architecture without ensemble methods, we achieved MSE = $0.0919$, slightly improving upon the single-model performance from v1.5. However, qualitative analysis revealed concerning prediction behavior, with the model consistently predicting similar RT60 values regardless of input variations.

  *Backbone Architecture Survey (v1.11):* Our most comprehensive architectural exploration evaluated multiple pretrained backbones:
  - DINOv2: Validation loss = $0.1758$, R² = $0.3687$
  - OpenCLIP (ViT-B-32): Validation loss = $0.1789$, R² = $0.3312$
  - OpenCLIP (ViT-L-14): Validation loss = $0.1799$, R² = $0.3635$
  - Additional variants including ConvNext and EfficientNet were tested

  These results demonstrated that while alternative architectures could achieve reasonable performance, they did not substantially outperform our optimized ResNet-based approaches.

  == Performance Summary and Key Findings

  Our experimental campaign yielded several critical insights:

  1. *Optimal Performance:* The best single-model performance was achieved in v1.4 with MSE = $0.0973$, representing a $9.6%$ improvement over our initial baseline.

  2. *Architecture Efficiency:* ResNet18 (v1.6) provided an excellent balance between performance (MSE = $0.1022$) and computational efficiency (~50MB), making it suitable for deployment scenarios.

  3. *Data Quality Over Quantity:* Version 1.2 demonstrated that dataset expansion must be carefully considered, as additional data does not automatically improve performance.

  4. *Ensemble Limitations:* While ensemble methods achieved marginally better performance, the computational overhead and minimal gains made single-model approaches more practical.

  5. *Domain Adaptation Challenges:* Direct multi-domain training (v1.9) proved problematic, emphasizing the need for sophisticated domain adaptation techniques when working with mixed synthetic and real data.

  6. *Architectural Robustness:* Multiple backbone architectures achieved similar performance levels, suggesting that the core challenge lies in the data domain rather than architectural limitations.

  The experimental progression demonstrates a systematic approach to model development, with each iteration building upon previous insights to refine our understanding of the RT60 prediction problem from single images.

]

#col[
  == Simple Experiment

    #figure(caption: [],  table(
      columns: (1fr, 1fr),
      [*Dimensions (m)*],[*RT60 (s)*],
      [3$times$3$times$3],[2.008],
      [8$times$4$times$3],[4.823],
      [6$times$7$times$3],[5.171],
      [8$times$10$times$3],[6.635],
      [15$times$12$times$3],[9.838],
      [30$times$25$times$3],[9.788],
    ))
  #figure(caption: [], image("../images/simple_example.jpg"))
]

== Experimental Results Summary

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, 1fr),
    align: (left, left, left, center, center, left),
    table.header([*Version*], [*Date*], [*Owner*], [*MSE*], [*Architecture*], [*Key Changes*]),

    [v1.0], [27/05/25], [Leo Kling], [0.1076], [ResNet50], [Initial baseline with hybrid training],
    [v1.1], [28/05/25], [Leo Kling], [0.0934], [ResNet50], [Expanded synthetic dataset],
    [v1.2], [28/05/25], [Leo Kling], [0.1144], [ResNet50], [Added more synthetic scenes],
    [v1.3], [30/05/25], [Jonathan Kron], [0.1114], [ResNet50], [Simulation method analysis],
    [v1.4], [30/05/25], [Jonathan Kron], [0.0973], [ResNet50], [Enhanced data augmentation],
    [v1.5], [31/05/25], [Jonathan Kron], [0.0925], [ResNet50], [Ensemble of 3 models],
    [v1.6], [01/06/25], [Leo Kling], [0.1022], [ResNet18], [Gradient accumulation, OneCycleLR],
    [v1.7], [01/06/25], [Leo Kling], [0.1283], [ResNet50], [Same as v1.6 with ResNet50],
    [v1.8], [01/06/25], [Leo Kling], [0.1114], [ResNet18], [Progressive resolution training],
    [v1.9], [05/06/25], [Leo Kling], [0.2803], [ResNet50], [Mixed synthetic and real training],
    [v1.10], [06/06/25], [Leo Kling], [0.0919], [ResNet50], [Single model from v1.5 ensemble],
    [v1.11], [06/06/25], [Leo Kling], [—], [Various], [Multiple backbone comparison],
    [v1.12], [06/06/25], [Jonathan Kron], [0.0973], [ResNet50], [Backbone architecture survey],
    [v1.13], [09/06/25], [Philipp Wendt], [0.1233], [ResNeXt50], [ResNeXt architecture test],
    [v1.14], [06/10/25], [Milan Jezovsek], [0.0993], [ResNet50], [Spatial attention mechanism],
    [v1.15], [11/06/25], [Milan Jezovsek], [0.0975], [ResNet50], [Enhanced spatial attention],
    [v1.16], [12/06/25], [David Klein], [0.0946], [U-Net], [U-Net with improved bottleneck],
    [v1.10.1], [29/06/25], [David Klein], [—], [ResNet50], [Real vs. synthetic data analysis],
    [v1.4.1], [28/06/25], [Philipp Wendt], [1.0948], [ResNet50], [Frozen backbone experiment],
  ),
  caption: [Summary of all experimental iterations showing version, date, responsible team member, MSE performance, architecture used, and key methodological changes. The best performing model were v1.4 (MSE = 0.0973).],
)


#todo(
  "Jonathan: add simple experiment (w Leo), add custom backbone experiments, add random weight backbone experiments",
)
