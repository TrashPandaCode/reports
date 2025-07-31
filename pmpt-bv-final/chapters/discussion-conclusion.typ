#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Discussion<discussion>
#col[

  The Ertsi project represents a systematic investigation into the feasibility of predicting frequency-dependent reverberation time (RT60) from single room images using deep learning techniques. This discussion examines the key findings, limitations, and implications of our experimental work, while contextualizing the results within the broader field of acoustic-visual learning as introduced in @fundamental_concepts and explored in @experimental_methodology.

  == Performance Analysis and Model Effectiveness #bv

  Our experimental campaign yielded mixed but informative results regarding the viability of image-based RT60 estimation. The best-performing model (v1.4) achieved an MSE of 0.0973, representing a 9.6% improvement over the initial baseline. While this demonstrates measurable progress through systematic optimization, the absolute performance levels suggest significant challenges remain in achieving the precision required for practical applications.

  The simplified experiment using synthetic shoebox rooms (v4) provided the most compelling evidence for the underlying approach, achieving an R² score of 0.902. This result strongly supports the hypothesis that visual features can encode acoustically relevant information when the problem space is sufficiently constrained. The dramatic performance difference between this controlled scenario and the complex real-world case highlights the importance of environmental complexity in determining model effectiveness.

  The consistent performance across multiple architectural variants (ResNet18, ResNet50, EfficientNet, ConvNeXt) suggests that the primary limitations lie not in model capacity but rather in the fundamental challenges of the acoustic-visual mapping problem and dataset constraints. This finding aligns with recent observations in domain adaptation literature, where data quality and domain alignment often prove more critical than architectural sophistication.

  == Dataset Challenges and Domain Gap Issues<dataset_challenges> #bv

  The hybrid synthetic-real dataset approach, while necessary given the absence of suitable existing datasets as described in @dataset, introduced several fundamental challenges that significantly impacted model performance. The domain gap between synthetic and real images proved more problematic than initially anticipated, with direct multi-domain training (v1.9) resulting in substantial performance degradation (MSE = 0.2803) and training instability.

  This domain gap manifested across multiple dimensions: lighting characteristics, material appearance, geometric precision, and environmental details. Real mobile photography exhibited natural imperfections such as variations in exposure, white balance, and lighting conditions that were difficult to replicate in Blender-rendered synthetic images. The pristine nature of synthetic environments, with perfectly aligned surfaces and idealized proportions, contrasted sharply with the organic irregularities and wear patterns found in actual office spaces.

  The insufficient dataset size (approximately 4,073 samples) compounded these domain challenges. Modern deep learning approaches for complex visual-acoustic relationships typically require orders of magnitude more training data. Our results suggest that the combination of limited data and domain mismatch prevented the model from developing robust, generalizable representations capable of handling both synthetic and real environments effectively.

  The finding that data quality matters more than quantity, demonstrated by v1.2's performance degradation when adding lower-quality synthetic scenes, emphasizes the critical importance of curated dataset development in specialized domains like acoustic modeling. These observations suggest that significantly larger datasets would be necessary for optimal model performance. However, the optimal composition of such an expanded dataset remains an open question. While we are confident that more data is needed, it is yet to be discovered whether more synthetic or more real data would be better. The question of how this larger dataset should be constructed requires further empirical investigation to determine the most effective balance between synthetic and real data sources.

  == Methodological Insights and Technical Lessons<methodological_insights> #bv

  Several key methodological insights emerged from our systematic experimental approach. The comparable performance across different backbone architectures (ResNet, EfficientNet, ConvNeXt, Vision Transformers) suggests that the choice of visual encoder is less critical than previously hypothesized. ResNet50 pretrained on Places365 consistently performed well, likely due to its scene-understanding capabilities being well-aligned with our room analysis task. The marginal differences between architectures indicate that the bottleneck lies in the acoustic-visual relationship learning rather than feature extraction capacity.

  The superior performance of pretrained models compared to training from scratch, with our custom attention-based CNN achieving MSE = 0.2040 versus pretrained ResNet50 at MSE = 0.0973, reinforces the critical importance of leveraging existing visual representations. This finding suggests that general-purpose visual features learned on large-scale datasets contain meaningful information for acoustic prediction tasks.

  While ensemble approaches (v1.5) achieved marginally better performance (MSE = 0.0925), the computational overhead and minimal gains made single-model approaches more practical. This observation is particularly relevant for deployment scenarios where model efficiency is crucial. The systematic exploration of training techniques revealed that careful regularization, appropriate learning rate scheduling, and gradient accumulation could provide modest but consistent improvements. However, these optimizations could not overcome the fundamental data limitations.

  == Acoustic Modeling Considerations<acoustic_modeling> #pmpt

  The frequency-dependent nature of RT60 prediction introduced additional complexity beyond standard computer vision tasks. Our results indicate that certain frequency bands may be more predictable from visual cues than others, though comprehensive frequency-specific analysis remains incomplete. The variation in prediction accuracy across frequency bands likely reflects the complex relationship between visual material properties and their acoustic absorption characteristics.

  The simplified experiment's success suggests that fundamental acoustic principles, particularly room volume effects on reverberation, can be learned effectively from visual data. However, the translation to complex real-world scenarios involving furniture, varying materials, and acoustic interactions proved significantly more challenging. This gap indicates that while the core hypothesis is sound, practical implementation requires more sophisticated approaches to handle acoustic complexity.

  == Limitations and Scope Constraints<limitations>

  Several important limitations must be acknowledged in interpreting these results. The focus on TH Köln office environments, as detailed in @real_world_measurements, limits generalizability to other architectural styles, room types, or acoustic conditions. The relatively homogeneous nature of office spaces may not provide sufficient acoustic diversity for robust model training.

  While RT60 measurements followed established protocols, the acoustic complexity of real rooms with furniture, occupants, and varying materials may not be fully captured by our simplified measurement setup. Environmental factors such as temperature, humidity, and air circulation were not systematically controlled or incorporated into the modeling. Single viewpoint images inherently limit the available spatial information compared to 360° panoramic views or multiple perspective approaches used in related work. The standardized doorway perspective, while ensuring consistency, may not capture acoustically relevant details visible from other viewpoints. This limitation of single images and specific viewpoints stems from the project's initial usage for mobile AR/MR applications.

  The focus on MSE and R² scores, while standard for regression tasks, may not fully capture the perceptual relevance of prediction errors in acoustic applications. The relationship between numerical prediction accuracy and perceived acoustic quality remains unexplored.

  == Comparison with Related Work<comparison_related_work>

  Our results provide interesting contrasts with related work in the field. The study by #cite(<milneUseArtificialIntelligence2020>, form: "prose") achieved 90.90% accuracy at 500 Hz using 24 RGB photographs per room, substantially outperforming our single-image approach. This performance difference likely reflects both their multi-view strategy and focus on a single frequency band, allowing for more specialized optimization.

  The domain gap challenges we encountered align with broader observations in multimodal learning research. Our experience reinforces the importance of domain adaptation techniques when combining synthetic and real data, particularly in specialized applications where synthetic data generation faces inherent limitations.

  The success of our simplified experiment (R² = 0.902) provides encouraging validation that the fundamental approach is sound, consistent with theoretical expectations about the relationship between visual spatial cues and acoustic properties. This result, while limited in scope, offers a foundation for future research directions.

  == Practical Implications and Applications<practical_implications>

  Despite the challenges identified, the project results suggest several practical insights for real-world applications. The simplified experiment demonstrates that visual-acoustic relationships can be learned effectively under controlled conditions, supporting the feasibility of the approach for specific use cases. The ResNet18 model (v1.6) achieved reasonable performance (MSE = 0.1022) with significantly reduced computational requirements ($approx 50 "MB"$), making it suitable for resource-constrained deployment scenarios such as mobile AR/MR applications. The systematic experimental methodology and comprehensive evaluation framework developed for this project provide a template for future research in acoustic-visual learning.

  == Future Research Directions<future_research>

  The challenges and insights from this work suggest several promising research directions. Developing sophisticated domain adaptation techniques to bridge the synthetic-real gap could substantially improve hybrid training approaches. Techniques such as adversarial domain adaptation or cycle-consistent training may help align visual representations across domains. Incorporating additional sensory modalities such as audio recordings, depth information, or thermal imaging could provide complementary information for more robust acoustic prediction.

  Systematic collection of larger, more diverse datasets across multiple architectural styles and acoustic conditions would enable more robust model development. Collaborative data collection efforts across multiple institutions could accelerate progress in this field. Improving synthetic data generation through more sophisticated rendering techniques, better material modeling, and enhanced environmental realism could reduce domain gap issues. Future work should also incorporate perceptual studies to understand the relationship between numerical prediction accuracy and perceived acoustic quality, ensuring that technical improvements translate to meaningful user benefits.

  The Ertsi project demonstrates both the promise and challenges of visual-acoustic learning. While significant obstacles remain, the systematic methodology and insights gained provide a solid foundation for continued investigation in this emerging interdisciplinary field.

  = Conclusion<conclusion>

  This project set out to investigate the viability of predicting frequency-dependent reverberation times (RT60) from single RGB images of office rooms at TH Köln using deep learning techniques, building on the concepts introduced in @fundamental_concepts. Through the development and analysis of two distinct convolutional neural network (CNN) models based on the ResNet50 architecture, we demonstrated that visual features alone can serve as informative predictors of acoustic characteristics, even in the absence of audio data or explicit 3D spatial input. By employing a hybrid dataset of real-world measurements and synthetically rendered scenes (@data_sources and @synth_data_gen), we sought to overcome the limitations of data scarcity and improve generalization across diverse room configurations.

  While the large model trained on both real and synthetic data faced challenges due to domain discrepancies and insufficient data volume, the smaller model trained solely on synthetic shoebox rooms performed remarkably well, showing accurate predictions across a wide range of room volumes. These results suggest that with controlled environments and simplified assumptions, image-based RT60 estimation is not only feasible but can yield robust outcomes. However, the limitations observed—particularly in terms of data variability, domain adaptation, and frequency-dependent accuracy—underscore the need for larger and more diverse datasets, improved simulation realism, and domain adaptation strategies to close the gap between synthetic and real-world imagery.

  The technical methodologies applied, including Grad-CAM visualizations and t-SNE analyses, provided further insight into how the models interpreted visual input and identified acoustically relevant features, offering a degree of interpretability that reinforces the credibility of the learned representations. Moreover, our structured approach to project planning, risk mitigation, and evaluation contributed to a well-documented experimental process, laying the groundwork for future iterative improvements that can build upon existing work in the field (@related_works).

  Ultimately, this research contributes a novel perspective to the growing field of image-based acoustic modeling, aligning with current trends in multimodal learning and non-intrusive environmental analysis. Although not without its challenges, our approach opens up exciting possibilities for real-time applications in augmented and mixed reality, where rapid and flexible reverberation estimation is critical. Future research will benefit from deeper integration of synthetic and real-world data, advanced model architectures, and larger-scale experimentation to fully realize the potential of visually driven RT60 prediction.
]
