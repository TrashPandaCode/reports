#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *
= Related Work

#col[
  Traditionally, RT estimation relied on the analysis of room impulse responses, which are often difficult to obtain in practical scenarios @kuttruffRoomAcoustics2006. This limitation has motivated the development of blind or non-intrusive methods that estimate RT directly from recorded audio, particularly speech.

  Early non-intrusive approaches exploited statistical properties of speech or energy decay characteristics. For example, maximum likelihood estimation and linear prediction methods were used to model the decay rate of the reverberant tail in speech @ratnamBlindEstimationReverberation2003. While effective under controlled conditions, these methods often struggle with background noise or highly non-stationary speech.

  With the rise of machine learning, more advanced techniques have been introduced. Several studies have combined handcrafted features—such as modulation spectra, spectral decay distributions, and energy-based features—with classical machine learning algorithms like support vector machines (SVMs) and random forests @lollmannImprovedAlgorithmBlind2010 @pregoBlindEstimatorsReverberation2015. These approaches have shown improved robustness and accuracy, especially when trained on diverse datasets representing a variety of acoustic environments.

  Recently, deep learning has gained traction for RT estimation. Deep neural networks, including convolutional and recurrent architectures, have been used to learn complex mappings from audio features to RT values @falconMachinelearningbasedEstimationReverberation2019 @pratesBlindEstimationReverberation. These data-driven methods have demonstrated strong performance, particularly in challenging acoustic conditions, but often require large labeled datasets and significant computational resources.



  The selection of input features is particularly important when estimating RT from images a room. Recent work by #cite(<perezMachinelearningbasedEstimationReverberation>, form: "prose") has demonstrated approaches that utilize only a single room with rearranged furniture as input, relying on 360-degree panoramic images and 3D representations to capture spatial and structural changes reflected in these visual modalities. These methods leverage spatial cues from panoramic images or 3D room models to enhance the prediction of reverberation characteristics, as these formats provide a comprehensive view of the room's geometry and surface materials. This approach of using spatially rich features from a single physical space with varying furniture arrangements to improve estimation accuracy and robustness differs significantly from our methodology, which focuses on images captured from a single viewpoint from various rooms.

  Despite these advances, robust RT estimation across diverse real-world conditions remains challenging. Factors such as background noise, speaker variability, and multiple sound sources can degrade performance. Ongoing research continues to explore novel feature representations, improved learning architectures, and data augmentation strategies to enhance generalization and reliability @singhImage2ReverbCrossModalReverb2021.

  In summary, the field has progressed from statistical and signal processing-based methods to sophisticated machine learning and deep learning approaches, with increasing emphasis on perceptually motivated features. The integration of auditory-inspired features with modern machine learning, as explored by #cite(<perezMachinelearningbasedEstimationReverberation>, form: "prose") and #cite(<singhImage2ReverbCrossModalReverb2021>, form: "prose"), represents a promising direction for advancing non-intrusive reverberation time estimation from images.
  
  #todo("merge this into the above")
  
  == Room Acoustics and Image-based Prediction

  === Plausibility of Predicting RT60 from Images
  Predicting RT60 from images is plausible because visual cues in a room's appearance often correlate strongly with its acoustic characteristics. Key visual indicators such as room size, shape, surface materials, and furnishing density provide valuable information for estimating reverberation time. /*https://www.researchgate.net/publication/346886274_Acoustic_Room_Modelling_Using_360_Stereo_Cameras */ /* https://pure.solent.ac.uk/en/publications/use-of-artificial-intelligence-in-room-acoustics-prediction-using? */ For instance, large rooms with hard, reflective surfaces like bare concrete or glass typically have longer RT60s, while smaller, carpeted spaces with soft furnishings tend to have shorter RT60s. The presence of diffusive elements, ceiling height, and spatial openness also contribute to acoustic behavior and are often clearly visible in images. With the increasing power of computer vision and deep learning, models can learn to associate such visual patterns with measured RT60 values, making image-based prediction a promising and intuitive approach to room acoustics analysis.

  === Prior Work in this Field
  As the use of AI is growing very fast, there is a lot of research in the field of using image-based prediction of acoustic property and also more specifically on room acoustics and RT60 predictions. The prior work we're going to name not always directly predicts RT60, but covers parts of our project, such as predicting the sound of specific materials, or predicting room types. As for example predicting material also provides its absorption value which is needed for RT60 calculations. We found it very helpful to look at other approaches in order to see in what scope our project is actually feasible.

  `Visually Indicated Sounds` /* https://arxiv.org/pdf/1512.08512 */
  - In 2016 the authors trained a model that is able to predict the sound of different materials based on their visual appearance. They used a dataset of silent videos that show a person hitting a specific object or material using a drumstick. This was a good example on how good a neural network could make predicitons on object materials.

  `USE OF ARTIFICIAL INTELLIGENCE IN ROOM ACOUSTICS PREDICTION USING A PHOTOGRAPH` /* https://pure.solent.ac.uk/en/publications/use-of-artificial-intelligence-in-room-acoustics-prediction-using? */
  - Predicting the RT60 of a room by using a image-processing AI is also the goal that's described in this paper. They use a total of 24 images for a single room though. For each position in the room they take a picture in a straight 90° angle to the floor and then go 25° up and down for the second and third image. This was published in 2020.

  `AV-RIR: Audio-Visual Room Impulse Response Estimation` /* https://arxiv.org/pdf/2312.00834 */
  - Different to others this approach uses a speech audio file of the corresponding room and an image to have both visual and auditive information of that room in order to predict the RT60 value. This is a very interesting approach, as it provides a lot of room information for the training and therefore can be very precise but also requires a lot of data storage. This is also very new as this is from 2024.

    `Acoustic Room Modelling Using 360 Stereo Cameras` /* https://www.researchgate.net/publication/346886274_Acoustic_Room_Modelling_Using_360_Stereo_Cameras */
  - Suprisingly this paper was already published in 2014 when AI was not as popular as it is today. It describes a method of predicting the RT60 of a room using 360° stereo cameras. Instead of making a certain amount of normal images, they created a dataset of 360° images from two heights to train a model that predicts the RT60 also based on the visual appearance of the room. The problem of this method is that it not only requires a lot more storage but also a very specific camera setup.

  `Visual Acoustic Matching` /* https://arxiv.org/pdf/2202.06875 */
  - This project from 2022 uses a dataset of room images and audio files unrelated to the room, in order to train a model that transforms the source audio file to sound like it was recorded in the room shown in the image. This comes very close to our project, as it also uses a single image but the output is an audio file instead of a RT60 value.

  Besides inspiration from other projects it can also be helpful to use pre-existing model architectures and datasets to train a model on. Unfortunately, there is no suitable single room RT60 dataset yet, so we had to create our own dataset.
  However, due to training we found out that using a `ResNet50` (2015) model pretrained on the `Places365` (2016) dataset is very helpful even though it doesn't include RT60 data. The `Places365` dataset contains 365 different room types and is trained on more than 1.8 million images. Therefore this model is very good in differentiating between different room types such as kitchens, offices, living rooms and so on. `ResNet50` is a convolutional neural network (CNN) that extracts high-level visual features from images, making it well-suited for tasks like scene understanding and classification.
]