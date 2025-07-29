#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

= Conclusion

#col[
  This project set out to investigate the viability of predicting frequency-dependent reverberation times (RT60) from single RGB images of office rooms at TH Köln using deep learning techniques. Through the development and analysis of two distinct convolutional neural network (CNN) models based on the ResNet50 architecture, we demonstrated that visual features alone can serve as informative predictors of acoustic characteristics, even in the absence of audio data or explicit 3D spatial input. By employing a hybrid dataset of real-world measurements and synthetically rendered scenes, we sought to overcome the limitations of data scarcity and improve generalization across diverse room configurations.

  While the large model trained on both real and synthetic data faced challenges due to domain discrepancies and insufficient data volume, the smaller model trained solely on synthetic shoebox rooms performed remarkably well, showing accurate predictions across a wide range of room volumes. These results suggest that with controlled environments and simplified assumptions, image-based RT60 estimation is not only feasible but can yield robust outcomes. However, the limitations observed—particularly in terms of data variability, domain adaptation, and frequency-dependent accuracy—underscore the need for larger and more diverse datasets, improved simulation realism, and domain adaptation strategies to close the gap between synthetic and real-world imagery.

  The technical methodologies applied, including Grad-CAM visualizations and t-SNE analyses, provided further insight into how the models interpreted visual input and identified acoustically relevant features, offering a degree of interpretability that reinforces the credibility of the learned representations. Moreover, our structured approach to project planning, risk mitigation, and evaluation contributed to a well-documented experimental process, laying the groundwork for future iterative improvements.

  Ultimately, this research contributes a novel perspective to the growing field of image-based acoustic modeling, aligning with current trends in multimodal learning and non-intrusive environmental analysis. Although not without its challenges, our approach opens up exciting possibilities for real-time applications in augmented and mixed reality, where rapid and flexible reverberation estimation is critical. Future research will benefit from deeper integration of synthetic and real-world data, advanced model architectures, and larger-scale experimentation to fully realize the potential of visually driven RT60 prediction.
]
