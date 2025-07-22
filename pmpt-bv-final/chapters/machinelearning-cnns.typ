#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *
#col[
= Machine Learning and Convolutional Neural Networks // Is this to brief?
Convolutional Neural Networks (CNN's) represent a specialized class of deep learning neural networks particularly well-suited for processing grid-like data structures such as images. The fundamental architecture of CNN's leverages three key principles: local connectivity, parameter sharing, and translation equivariance, which make them highly effective for computer vision tasks such as our reverberation time estimation from images. Unlike traditional fully connected networks, CNN's employ convolutional layers that apply learnable filters across input data, enabling the network to detect local features such as edges, textures and spatial patterns while maintaining computational efficiency.

The typical CNN architecture consists of alternating convolutional and pooling layers followed by fully connected layers for classification or regression tasks. Convolutional layers perform feature extraction through the application of multiple filters, each learning to detect specific patterns in the input data. Pooling layers (commonly max pooling or average pooling) reduce the spatial dimensions while preserving important features, contributing to the network's robustness to small translations and reducing computational overhead. This hierarchical feature learning allows CNN's to capture both low-level features (e.g., edges, corners) in early layers and increasingly higher-level semantic information (e.g., object parts, textures) in deeper layers.

== Transfer Learning and Pre-trained Models
Transfer learning has emerged as a crucial technique in modern deep learning, particularly when dealing with limited training data or computational resources. The core principle involves leveraging knowledge gained from training on large-scale datasets and applying it to related target tasks.

Pre-trained models, such as ResNet architectures trained on ImageNet or specialized datasets like Places365, provide robust feature representations that capture fundamental visual patters. Places365-trained models are particularly relevant for architectural and spatial understanding tasks, as they have been trained on scene recognition data that includes various indoor and outdoor environments. This makes them well-suited as backbone networks for applications involving room analysis or spatial acoustic modelling, where understanding environmental context is crucial.

The implementation of transfer learning for CNN's can follow different strategies: feature extraction, where pre-trained layers are frozen and used as fixed feature extractors, or fine-tuning, where the entire network or selected layers are updated with a lower learning rate. The choice between these approaches depends on the similarity between source and target domains, the amount of available training data and computational constraints.

]