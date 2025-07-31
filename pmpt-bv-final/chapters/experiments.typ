#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Experimental Methodology #bv <experimental_methodology>

#col[

  == Evaluation Metrics <evaluation_metrics>

  When evaluating the performance of our estimation model, we employed a comprehensive set of metrics to assess its accuracy and generalization capabilities. The primary evaluation metrics will be briefly described in the following sections.

  === Mean Squared Error & Mean Absolute Error <mse_mae>

  Mean Squared Error (MSE) and Mean Absolute Error (MAE) serve as fundamental regression metrics for quantifying the accuracy of RT60 predictions. MSE penalizes larger prediction errors more heavily due to its quadratic nature, making it particularly sensitive to outliers, while MAE provides a more robust measure of average prediction deviation. In the context of RT60 estimation, these metrics are calculated per frequency band, allowing for detailed analysis of model performance across the acoustic spectrum @goodfellowDeepLearning2016 @MeanAbsoluteError2025 @MeanSquaredError2025.

  === R#super[2] Coefficient of Determination <r2_coefficient>

  The R#super[2] coefficient quantifies the proportion of variance in the measured RT60 values that is predictable from the input images. This metric provides insight into how well the model captures the underlying acoustic-visual relationships present in the data. An R#super[2] value approaching 1.0 indicates strong predictive capability, while values closer to 0 (or even negative values) suggest limited model effectiveness. For RT60 estimation tasks, R#super[2] values are particularly valuable when evaluated per frequency band, as acoustic behavior varies significantly across the frequency spectrum due to material absorption characteristics and room geometry effects @CoefficientDetermination2025.

  === Grad-CAM Visualization <gradcam>

  Gradient-weighted Class Activation Mapping (Grad-CAM) @selvarajuGradCAMVisualExplanations2016 provides interpretable visualizations of which regions in input images contribute most significantly to RT60 predictions. This technique leverages gradients flowing into the final convolutional layer to generate localization maps highlighting important visual features. In our acoustic estimation context, Grad-CAM reveals whether the model appropriately focuses on acoustically relevant features such as room geometry, surface materials, and furnishing density. This interpretability is crucial for validating that the model learns meaningful acoustic-visual correlations rather than spurious dataset artifacts. An example Grad-CAM visualization is shown in @grad_cam_example, where the model's attention is directed towards the absorbers, which are critical for reverberation characteristics.

  #figure(caption: [Grad-CAM example], image("../images/gradcam_combined_img4.png"))<grad_cam_example>

  === t-SNE Analysis <tsne_analysis>

  t-distributed Stochastic Neighbor Embedding (t-SNE) is a nonlinear dimensionality reduction technique widely used for visualizing high-dimensional data in a low-dimensional space (typically 2D or 3D). Unlike linear methods such as Principal Component Analysis (PCA), t-SNE aims to preserve local neighborhood relationships rather than global structure @caiTheoreticalFoundationsTSNE2022. It does so by converting pairwise similarities in high-dimensional space into joint probabilities and minimizing the divergence between these and their low-dimensional counterparts @andrewsDimensionReductionPCA.

  Importantly, t-SNE visualizations have limitations: the absolute values of the X and Y coordinates are not meaningful, and distances between distant points cannot be reliably interpreted. However, close proximity between points is highly informative and often reveals significant local structure. Unlike PCA, which assumes linear relationships and can blur local structures, t-SNE excels at highlighting small-scale patterns and nonlinear separations, which is particularly useful when visualizing clustered or manifold-structured data @andrewsDimensionReductionPCA.

  We chose t-SNE over PCA for our analysis because it better handles the nonlinear and potentially hierarchical structure in our data. Specifically, we were interested in identifying whether our convolutional neural network (CNN) learns to encode acoustically meaningful visual features. Initial experiments applying t-SNE to the high-dimensional feature representations of our ground truth (gt) data revealed clear groupings that appeared to correspond to different room types as seen in @tsne_gt. Motivated by this, we applied t-SNE to the feature embeddings learned by our CNN model. By analyzing the resulting 2D plots, we examined whether similar room-dependent clusters emerged. Observing such groupings in the predicted features would suggest that the model captures underlying acoustic properties that correlate with visual cues, providing additional validation of the learned representations beyond numerical accuracy metrics @geronHandsonMachineLearning2023.

  #figure(caption: [t-SNE analysis of gt data], image("../images/gt_latent_visualization.png"))<tsne_gt>

  == Experimental Design and Execution <experimental_design>

  Our experimental approach emphasized reproducibility, systematic evaluation, and methodical documentation throughout the research process. The experimental methodology was designed to enable rigorous comparison between different model configurations while maintaining scientific rigor in our analysis.

  === Model Version Control and Tracking <version_control>

  To ensure comprehensive documentation of our experimental progress, we implemented a systematic tracking methodology using a _Google Sheets_ (@appendix_experiments) spreadsheet to meticulously record all experimental configurations and outcomes. This approach allowed us to maintain a detailed log of model versions, hyperparameter settings, training configurations, and corresponding performance metrics across all frequency bands. Each experimental run was assigned a unique version identifier, referencing a git commit, facilitating easy reference and comparison between different model iterations.

  The version control system enabled us to track the evolution of our models systematically, documenting not only quantitative performance metrics but also qualitative observations about training behavior, convergence patterns, and model stability. This methodical approach proved essential for identifying promising research directions and avoiding the repetition of unsuccessful configurations.

  We also utilized _sciebo_ for additional storage and backup of our experimental data, like plots and model weights. Initially, we used _DVC_ for version control of our data and model weights, but later switched to _sciebo_ as it provided a more user-friendly interface, without the need to onboard all team members to a new tool.

  === Architecture Exploration <architecture_exploration>

  Our experimental design incorporated systematic exploration of multiple CNN backbone architectures to identify the most suitable foundation for RT60 estimation. We evaluated several pretrained architectures, including different variants of ResNet (ResNet18, ResNet34, ResNet50), EfficientNet models, and Vision Transformer architectures. Each backbone was assessed based on its capacity to learn meaningful acoustic-visual relationships while maintaining computational efficiency for our specific task requirements.

  The architecture exploration phase involved careful consideration of model complexity versus performance trade-offs, with particular attention to overfitting tendencies given our limited dataset size. We systematically documented the performance characteristics of each architecture across different frequency bands, enabling informed decisions about the optimal balance between model capacity and generalization capability.

  === Hyperparameter Optimization <hyperparameter_optimization>

  We conducted extensive hyperparameter optimization experiments covering learning rates, batch sizes, optimizer configurations, regularization parameters, data augmentation strategies, and learning rate schedules.

  Additionally, we investigated various regularization techniques including dropout rates, weight decay parameters, and early stopping criteria to prevent overfitting on our limited dataset.

  === Documentation of Learnings

  Throughout the experimental process, we maintained detailed documentation of insights and lessons learned from each experimental iteration. This included observations about training dynamics, identification of promising research directions, and documentation of unsuccessful approaches to guide future research efforts.
]

// Implementation Tools
//     PyTorch, torchvision, DVC for reproducibility.

#pagebreak()

= Experiments and Results #bv <experiments_and_results>

#col[
  This section presents the results of our systematic experimentation process, which involved 11 major experimental iterations (v1.0 through v1.11) spanning approximately two months of development. Each experiment was designed to explore different aspects of the RT60 prediction problem, from architectural choices to training methodologies and data augmentation strategies.

  == Experimental Framework <experimental_framework>

  Our experimental approach followed a structured methodology with comprehensive tracking of hyperparameters, architectural decisions, and performance metrics. All experiments were version-controlled using Git, with commit hashes recorded for reproducibility. The primary evaluation metric used throughout was Mean Squared Error (MSE) on the validation set, supplemented by visual inspection of prediction distributions and R² scores where applicable.

  The experiments can be broadly categorized into three phases: initial baseline establishment (v1.0-v1.2), architectural and training optimizations (v1.3-v1.8), and advanced techniques exploration (v1.9-v1.11).

  == Phase 1: Baseline Development (v1.0-v1.2) <phase1>

  === Initial Baseline (v1.0) <initial_baseline>
  Our first experiment established the foundational architecture using ResNet50 pretrained on Places365, chosen for its relevance to scene understanding tasks. The model employed a hybrid training strategy, utilizing both synthetic and real data during training and evaluation phases.

  The synthetic dataset initially comprised samples from Leo Kling (scenes 1-10) and Jonathan Kron (scenes 1-6, 9), representing a diverse set of room configurations. This baseline achieved an MSE of $0.1076$, providing our initial performance benchmark.

  === Dataset Expansion (v1.1-v1.2) <dataset_expansion>
  Building upon the baseline architecture, v1.1 expanded the synthetic dataset to include contributions from additional team members: Milan (scenes 1-4), Markus (scenes 1-10), and David (scenes 1-3), alongside the original Leo and modified Jonathan datasets. This expansion improved performance to an MSE of $0.0934$, representing a $13.2%$ improvement over the baseline.

  However, v1.2 demonstrated the importance of data quality over quantity. Adding Jonathan's remaining scenes (6, 7, 8) actually degraded performance to an MSE of $0.1144$, indicating that indiscriminate dataset expansion can be counterproductive.

  == Phase 2: Architecture and Training Optimization (v1.3-v1.8) <phase2>

  === Simulation Method Analysis (v1.3) <simulation_method>
  Version 1.3 investigated the impact of different acoustic simulation methodologies by partitioning the synthetic training data into "hybrid" and "Image Source Method (ISM) and Ray-Radiosity (RR)" categories. Three separate training runs were conducted:

  - Hybrid-only training: MSE = $0.1128$
  - Non-hybrid-only training: MSE = $0.1078$
  - Combined training: MSE = $0.1114$

  #figure(caption: [From left to right: Hybrid-only, Non-hybrid-only, combined], grid(
    columns: 3,
    image("../images/experiments/v1_3/1_rt60_kde_heatmap.png"),
    image("../images/experiments/v1_3/2_rt60_kde_heatmap.png"),
    image("../images/experiments/v1_3/3_rt60_kde_heatmap.png"),
  ))

  The results revealed that hybrid simulation methods did not yield superior performance, with only a $4.4%$ difference between approaches—likely within the margin of experimental error. This finding simplified our data preparation pipeline by eliminating the need for simulation method stratification.

  === Data Augmentation Enhancement (v1.4) <data_augmentation>
  Version 1.4 focused on improving data augmentation strategies, implementing more aggressive techniques including random perspective transformations, enhanced cropping, and increased rotation ranges. This approach yielded a modest improvement to MSE = $0.0973$, representing a slight but consistent enhancement over v1.3. Results can be seen in @v1_4_results and @v1_4_grad_cam.

  #figure(caption: [From left to right: Error distribution, prediction with uncertainty, prediction heatmap], grid(
    columns: 3,
    image("../images/experiments/v1_4/error_distribution.png"),
    image("../images/experiments/v1_4/prediction_with_uncertainty.png"),
    image("../images/experiments/v1_4/rt60_kde_heatmap.png"),
  ))<v1_4_results>
  #figure(caption: [Grad-CAM example], image("../images/experiments/v1_4/gradcam_combined_img26.png"))<v1_4_grad_cam>

  === Ensemble Methods Investigation (v1.5) <ensemble_methods>
  Our exploration of ensemble methods in v1.5 involved training three separate models and combining their predictions. Individual model performances were remarkably consistent:
  - Ensemble model 1: MSE = $0.0923$
  - Ensemble model 2: MSE = $0.0923$
  - Ensemble model 3: MSE = $0.0930$
  - Combined ensemble: MSE = $0.0925$

  While achieving our best performance to date, the ensemble approach came with significant computational overhead. The combined model size of about 327 MB exceeded our 250 MB soft limit, making this approach impractical for deployment scenarios requiring model efficiency.

  === Architecture Scaling Experiments (v1.6-v1.8) <architecture_scaling>
  We systematically investigated the trade-offs between model complexity and performance through architecture scaling experiments:

  *ResNet18 (v1.6):* Implementing gradient accumulation, improved learning rate scheduling with OneCycleLR, enhanced early stopping criteria, and gradient clipping, we achieved MSE = $0.1022$ with a significantly reduced model size (~50 MB). This represented only a marginal performance decrease while providing substantial computational benefits.

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

  *Backbone Architecture Survey (v1.12):* A focused evaluation of additional pretrained CNN backbones

  - ResNet50 (Places365): Validation loss = $0.0973$
  - EfficientNet-B4: Validation loss = $0.1026$
  - ConvNeXt-Base: Validation loss = $0.1079$
  - DenseNet169: Validation loss = $0.1234$
  - Despite this variation, none of these backbones outperformed ResNet50 (Places365), which remained the strongest CNN-based option, as shown in the prediction heatmaps in @v1_12_results. Further analysis using t-SNE visualizations (@v1_12_tsne) revealed differences in how each backbone encoded the acoustic information, with ResNet50 demonstrating the most (if any) clustering patterns.

  #figure(
    caption: [t-sne analysis of the different backbones. \ From left to right: ConvNeXt-Base, DenseNet169, EfficientNet-B4, ResNet50 (Places365)],
    grid(
      columns: 4,
      image("../images/experiments/v1_12/convnext_base_all_preds.png"),
      image("../images/experiments/v1_12/densenet169_all_preds.png"),
      image("../images/experiments/v1_12/efficientnet_all_preds.png"),
      image("../images/experiments/v1_12/resnet50_places365_all_preds.png"),
    ),
  )<v1_12_tsne>

  #figure(
    caption: [Prediction vs ground truth heatmap \ From left to right and top to bottom: ConvNeXt-Base, DenseNet169, EfficientNet-B4, ResNet50 (Places365)],
    grid(
      columns: 2,
      gutter: .2cm,
      image("../images/experiments/v1_12/convnext_rt60_kde_heatmap.png"),
      image("../images/experiments/v1_12/densenet_rt60_kde_heatmap.png"),

      image("../images/experiments/v1_12/efficientnet_rt60_kde_heatmap.png"),
      image("../images/experiments/v1_12/resnet_rt60_kde_heatmap.png"),
    ),
  )<v1_12_results>


  *Custom Attention-Based CNN (No Pretraining):* A custom architecture based on EfficientNet-B3 with channel and spatial attention, multi-scale feature extraction, and a frequency-aware prediction head was evaluated without any pretrained weights. Despite its architectural complexity, it underperformed compared to simpler pretrained models:

  - Validation MSE = $0.2040$
  - RMSE = $0.4517$
  - MAE = $0.3170$
  - R² = $-2.2477$
  - These results suggest that training from scratch on limited data yields suboptimal generalization, and that pretrained visual representations remain crucial for this task. The t-SNE analysis in @jojo_complex_results shows an unexplainable (but unwanted) structure in the learned feature space, while the prediction heatmap reveals a strong tendency toward mean prediction rather than capturing the true variation in RT60 values.

  #figure(caption: [From left to right: t-sne analysis, error distribution, prediction heatmap], grid(
    columns: 3,
    image("../images/experiments/jojo_complex/latent_vis.png"),
    image("../images/experiments/jojo_complex/error_distribution.png"),
    image("../images/experiments/jojo_complex/rt60_kde_heatmap.png"),
  ))<jojo_complex_results>

  *Baseline CNN (Simple Architecture):* A minimal convolutional model with just two convolutional layers followed by average pooling and a basic MLP head was trained from scratch:

  - Validation MSE = $0.9346$
  - RMSE = $0.9668$
  - MAE = $0.8906$
  - R² = $-14.7485$
  - This model served as a lower-bound baseline. Its poor performance underscores the necessity of both architectural depth and prior knowledge (e.g., pretrained features) for learning meaningful visual-acoustic representations. As shown in @jojo_simple_results, the error distribution is heavily skewed and the prediction heatmap reveals virtually no correlation between predictions and ground truth values, except continuously high prediction values.

  #figure(caption: [From left to right: error distribution, prediction heatmap], grid(
    columns: 2,
    image("../images/experiments/jojo_simple/error_distribution.png"),
    image("../images/experiments/jojo_simple/rt60_kde_heatmap.png"),
  ))<jojo_simple_results>

  *U-Net Architecture (v1.16):* A U-Net architecture with a custom bottleneck was evaluated. The U-Net architecture is usually used for image segmentation tasks, but we adapted it for regression by adding a regression head at the end. The model consisted of a symmetric encoder-decoder structure with skip connections:

  - *Encoder Path:* Four downsampling blocks with increasing channel depths (64→128→256→512), each comprising dual convolutions with batch normalization, ReLU activation, and dropout (p=0.2)
  - *Bottleneck:* Standard double convolutional block at 512 channels
  - *Decoder Path:* Four upsampling blocks with skip connections from corresponding encoder levels, progressively reducing channel depth (512→256→128→64)
  - *Regression Head:* Final 1x1 convolution reducing to 32 channels, followed by global average pooling and fully connected layer outputting 6 frequency bands

  The model used Huber Loss for training stability and employed AdamW optimization with weight decay (1e-3) and a reduce-on-plateau learning rate schedule.

  The U-Net architecture achieved decent results with MSE = 0.0946. Similar to v1.10 further analysis revealed that the model consistently guessed similar RT60 values regardless of input, which lead to it having a good average score while failing to capture the datasets variance.

  Overall these results demonstrated that while alternative architectures could achieve reasonable performance, they did not substantially outperform our optimized ResNet-based approaches.

  === Data Domain Analysis (v1.10.1)
  To better understand the model's behavior across different data domains, we conducted a series of experiments using the v1.10 architecture trained and validated on distinct data subsets. Three configurations were tested:

  1. *Real-Only:* Training and validation using exclusively real-world data
  - MSE = $0.0918$
  - RMSE = $0.3030$
  - MAE = $0.2027$
  - R² = $-0.1738$

  1. *Synthetic-Only:* Training and validation using exclusively synthetic data
  - MSE = $1.3696$
  - RMSE = $1.1703$
  - MAE = $0.9214$
  - R² = $-21.2365$

  1. *Mixed Domain (v1.10 baseline):* Original configuration with synthetic and then real data
  - MSE = $0.0955$
  - RMSE = $0.3091$
  - MAE = $0.1983$
  - R² = $-0.1889$

  The real-only configuration achieved slightly better performance (MSE = $0.0918$) compared to the mixed-domain approach (MSE = $0.0955$). However, the synthetic-only configuration performed significantly worse (MSE = $1.3696$), indicating the domain gap between synthetic and real data might be larger than previously thought. The dramatically lower R² score ($-21.2365$) in the synthetic-only case further emphasizes the challenge of generalizing purely synthetic training to realistic acoustic scenarios. These findings suggest that while our synthetic data generation approach provides valuable training signals, there remain significant differences between our synthetic and real acoustic environments.

  === Frozen Backbone Experiment (v1.4.1)
  Building upon v1.4's enhanced data augmentation, experiment v1.4.1 investigated the effects of freezing the ResNet50 backbone layers while training only the final classification layers. This transfer learning approach was motivated by the hypothesis that low-level visual features from Places365 pretraining would remain relevant for acoustic scene understanding.
  Training was conducted exclusively on synthetic data with identical hyperparameters to v1.4, except for the reduced parameter space due to frozen layers. The results demonstrated significant performance degradation:

  - MSE = $1.0948$
  - RMSE = $1.0463$
  - MAE = $0.7198$
  - R² = $-0.2622$

  The substantial increase in MSE from v1.4's $0.0973$ to $1.0948$ represents more than a 10-fold deterioration in prediction accuracy. The negative R² score indicates performance worse than a simple mean predictor, suggesting that frozen features were insufficient for capturing visual-acoustic relationships required for RT60 estimation.
  These findings highlight the importance of end-to-end fine-tuning for cross-modal tasks, reinforcing that acoustic prediction necessitates comprehensive feature adaptation throughout the network architecture rather than just final layer modification.

  === Spatial Attention Experiment (v1.14 and v1.15)
  Building upon the baseline architecture, experiments v1.14 and v1.15 investigated the integration of spatial attention mechanisms to enhance the model's ability to focus on acoustically relevant spatial features within room imagery. This approach was motivated by the hypothesis that explicit attention to spatial relationships could improve RT60 prediction accuracy by emphasizing regions that most significantly influence reverberation characteristics.
  Version v1.14, developed on October 6, 2025, implemented spatial attention components throughout the architecture based on architectural modifications suggested for improved spatial feature extraction. The initial results showed:

  - MSE = $0.0993$
  - RMSE = $0.3151$
  - MAE = $0.2161$
  - R² = $-0.2714$

  Building on v1.14's foundation, version v1.15 was developed on June 11, 2025, with a more comprehensive spatial attention integration. This iteration yielded marginally improved performance:

  - MSE = $0.0975$
  - RMSE = $0.3123$
  - MAE = $0.2226$
  - R² = $-0.0375$

  While both versions demonstrated slight reductions in MSE compared to v1.14, the persistently negative R² values indicate that spatial attention mechanisms failed to achieve meaningful predictive improvements over a simple mean predictor. The modest MSE improvements of approximately 1.8% suggest that the spatial attention approach, as implemented, provided limited benefits for visual-acoustic RT60 estimation. These findings indicate that either more sophisticated attention mechanisms are necessary to realize the theoretical advantages of spatially-aware feature processing, or these theoretical advantages may be purely conceptual.

  == Performance Summary and Key Findings

  Our experimental campaign yielded several critical insights:

  1. *Optimal Performance:* The best single-model performance was achieved in v1.4 with MSE = $0.0973$, representing a $9.6%$ improvement over our initial baseline.

  2. *Architecture Efficiency:* ResNet18 (v1.6) provided an excellent balance between performance (MSE = $0.1022$) and computational efficiency (~50MB), making it suitable for deployment scenarios.

  3. *Data Quality Over Quantity:* Version 1.2 demonstrated that dataset expansion must be carefully considered, as additional data does not automatically improve performance.

  4. *Ensemble Limitations:* While ensemble methods achieved marginally better performance, the computational overhead and minimal gains made single-model approaches more practical.

  5. *Domain Adaptation Challenges:* Direct multi-domain training (v1.9) proved problematic, emphasizing the need for sophisticated domain adaptation techniques when working with mixed synthetic and real data.

  6. *Architectural Robustness:* Multiple backbone architectures achieved similar performance levels, suggesting that the core challenge lies in the data domain rather than architectural limitations.

  The experimental progression demonstrates a systematic approach to model development, with each iteration building upon previous insights to refine our understanding of the RT60 prediction problem from single images.

  == Simple Experiment<simple_experiment>

  To establish baseline feasibility for RT60 prediction from visual data, we conducted an initial simplified experiment using a controlled synthetic dataset. This experiment utilized only synthetic rooms of varying dimensions without any furniture or complex acoustic elements, effectively functioning as an "advanced room volume estimator." We generated shoebox-shaped rooms with dimensions ranging from small ($3 times 3 times 3 "m"$) to very large ($30 times 25 times 3 "m"$) spaces, rendering them with consistent surface materials to isolate the relationship between spatial dimensions and reverberation characteristics, as shown in @simple_example_image.

  For each room configuration, a single, non-frequency-dependent RT60 value was simulated using the _pyroomacoustics_ Python module. The simulation incorporated ray tracing and air absorption to approximate more realistic sound propagation. Microphone and sound source were placed in opposite corners of the room, each positioned 1 meter from the nearest walls to ensure consistent placement across samples. Notably, the resulting RT60 values were often quite large, as documented in @simple_example_table and visualized in @simple_vol_vs_rt60. While this trend was consistent across room sizes, we are currently unsure why the absolute values are so high and suspect it may stem from either the material parameter settings, geometric extremes, or limitations of the ray tracing model itself. However, these inflated values do not undermine the experiment, as the goal was to assess relative variations in RT60 across different room geometries rather than to produce physically accurate absolute values.

  #figure(caption: [Room Volume vs RT60], image("../images/simple_vol_vs_rt60.svg"))<simple_vol_vs_rt60>

  For this proof-of-concept, we implemented a CNN architecture with a ResNet50 backbone pretrained on Places365 (selected for its superior scene understanding capabilities), followed by global pooling and fully connected regression layers (2048→512→256→128→64→1) with appropriate dropout for regularization. The model demonstrated remarkable performance on this constrained problem, achieving an R² score of $0.902$, indicating that over $90%$ of variance in RT60 values could be explained by the visual features extracted by our CNN architecture. The error metrics further confirmed strong performance, with $"MSE"=0.562$, $"RMSE"=0.749$, and $"MAE"=0.569$. The mean prediction error was $-0.480$ seconds with a standard deviation of $0.576$ seconds, and a median error of $-0.437$ seconds, as visualized in @simple_heatmap_and_error_distribution. These promising results provided strong validation that even a standard CNN could successfully learn the fundamental relationship between visual room characteristics and acoustic properties when the problem space is sufficiently constrained, justifying our progression to more complex real-world scenarios.

  While these results do not constitute formal proof of the initial approach, they provide a promising foundation for further research and do not contradict the primary hypothesis.

  #figure(caption: [Example room dimensions and RT], table(
    columns: (1fr, 1fr),
    [*Dimensions (m)*], [*RT60 (s)*],
    [3$times$3$times$3], [2.008],
    [8$times$4$times$3], [4.823],
    [6$times$7$times$3], [5.171],
    [8$times$10$times$3], [6.635],
    [15$times$12$times$3], [9.838],
    [30$times$25$times$3], [9.788],
  ))<simple_example_table>
  #figure(caption: [Example image used for the experiment], image("../images/simple_example.jpg"))<simple_example_image>

  #figure(
    caption: [Heatmap of predicted RT60 values vs. ground truth RT60 values (left) and prediction error distribution in seconds (right)],
    grid(
      columns: 2,
      image("../images/simple_rt60_kde_heatmap.png"),
      image(
        "../images/simple_error_distribution.png",
      ),
    ),
  )<simple_heatmap_and_error_distribution>
]

== Experimental Results Summary<exp_result_summary>

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
    [v1.14], [10/06/25], [Milan Jezovsek], [0.0993], [ResNet50], [Spatial attention mechanism],
    [v1.15], [11/06/25], [Milan Jezovsek], [0.0975], [ResNet50], [Enhanced spatial attention],
    [v1.16], [12/06/25], [David Klein], [0.0946], [U-Net], [U-Net with improved bottleneck],
    [v2], [14/06/25], [Jonathan Kron], [0.2040], [Custom Attention-Based CNN], [no pretrained visual representations],
    [v3], [12/06/25], [Jonathan Kron], [0.9346], [Baseline CNN], [lower-bound baseline model],
    [v1.10.1], [29/06/25], [David Klein], [—], [ResNet50], [Real vs. synthetic data analysis],
    [v1.4.1], [28/06/25], [Philipp Wendt], [1.0948], [ResNet50], [Frozen backbone experiment],

    [v4], [06/07/25], [Leo Kling & Jonathan Kron], [0.56174], [ResNet50], [new simple dataset (see @simple_experiment)],
  ),
  caption: [Summary of all experimental iterations showing version, date, responsible team member, MSE performance, architecture used, and key methodological changes. The best performing model were v1.4 (MSE = 0.0973).
  ],
)
