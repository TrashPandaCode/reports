#import "../lib.typ": *
#import "../utils.typ": *
#import "@preview/splash:0.3.0": tailwind
#import "@preview/big-todo:0.2.0": *

#pagebreak()

#todo(
  "Please give feedback on the whole project planning section. Some sections feel kind of useless in my opinion.",
)

= Project Planning

#col[
  The project planning phase for the Ertsi project included a clear definition of all the important sections such as objectives and schedule but also risk assessments and a quality assurance to make sure the project is not faced with major risks denying further progress or not having precise quality requirements that need to be met and therefore no scale on whether expectations are fullfilled.

  == Project Objectives

  The first step was to define an understandable and clear objective including its key features. The definition of our project was described as developing a neural network that can estimate the frequency dependent reverberation time (RT60) of a room using single images as input. As Key features we declared single images of a room as input and frequency dependent RT60 values (Octaves from 250Hz to 8kHz) as output. We wanted to use a Hybrid Dataset consisting of real and synthetic data in order to get as much data as possible that is being analyzed with an accuracy of at least 50%.

  == Project Organization<project_organization>

  We created more of a bigger team with 6 members included when other teams normally consist of 4-5 members, mentioning though that one of our members (David Klein) would only participate in the BV part of the project and therefore only provide half of the work time. We would declare Jonathan Kron as our Project Lead, being responsible for uploading documents when needed and being our groups contact person for the professors. Leo Kling would take the role of being the Report Writer as we would have to deliver a protocol of our meetings at least once every two weeks. Other than that each member had to at least be assigned to one work package as a responsible person.

  The organization part also included topics like work equipment that is needed for example when doing real world data collection, but also tools that are used for version control and communication such as GitHub.

  == Project Structure

  All of our 9 work packages got divided into 5 main topics by using a functional project structure plan. It consisted of Data Collection, Model Development, Evaluation & Testing, Optimization and Application & Interface. Model Optimization (WP-7) and Final Evaluation (WP-8), both part of the Optimization section, were moved to other topics instead and User Interface (WP-9) as the only workpackage in Application & Interface was declared as a stretch goal and therefore less important.

  So we ended up having 4 phases that would fill our Gantt Chart desribed in more detail in the sections below.

  #todo("Dependencies of the work packages")


  === Dataset Phase<dataset_phase>

  The dataset Phase was going to be the first and also the most important phase of our project. The reason for this was that we needed to collect a lot of data in order to train any model. In preparation we were also looking for an already published dataset, but there was non fitting our needs.
  This phase consisted of 2 work packages, the synthetic data generation (WP-1) and the real world data collection (WP-2). Both were scheduled from the 07. of April until the 16th of May so 5 weeks in total. This was also necessary because for the real world data we would have to make an appointment with Professor Reiter who would give us access to the office rooms of the "TH Köln" and we would also have to borrow the measurement equipment. For the synthetic data we would have to generate rooms using Blender and then calculate the RT60 values using the free trial of the software "Treble". Therefore we had to get all synthetic room generation and RT60 calculation done within 2 weeks of trial.

  === CNN Phase<cnn_phase>

  In this phase the basic architecture of the convolutional neural network (CNN) was setup. It consisted of 3 work packages, the Neural Network Architecture Development (WP-3), the Hybrid Training Approach (WP-4) and the Model Optimization (WP-7). All work packages of the CNN phase would be part of the BV (image processing) module as this project was a combination of the PMPT and BV course.

  WP-3 would last 25 days as this would be the base for the whole CNN including initiating weights and doing pretraining. WP-4 would be one week shorter with 18 days and would combine using both synthetic and real world data. The last of the three work packages would only last 4 days and would be used to optimize hyperparameters and use optimization strategies such as dropout, batch normalization and data augmentation.

  === Evaluation Phase<eval_phase>

  As the @cnn_phase this phase would also consist of 3 work packages. The Performance Evaluation (WP-5) would only last 4 days and would only measure the accuracy of the model in estimating RT60 across the defined frequency bands followed by the Real World Testing (WP-6) work package that would include testing the model with real-world images from measured rooms and comparing the estimations with the actual measured RT60 values. The Final Evaluation (WP-8)  also scheduled with only 4 days would then define a short phase of testing the model performance in terms of accuracy and speed and would result in a document that shows the models limitations and possible improvements.

  === UI Phase (optional)

  This phase would only serve as an extension if there would be time to fill at the end of the project. It only includes the User Interface (WP-9) work package that would be used to visualize the results and give a testing environment for the user.

  === Project Schedule
  #todo("Do we use an initial and actual gant chart here?")

  Our project schedule is visualized by our two Gantt charts (@gantt_initial and @gantt_actual) that show the comparison of the initial planning and how it actually turned out. The first Gantt chart was developed during the project planning phase and follows the work package durations and dependencies as initially declared. The second one was created at the end of the project to give an overview of the actual durations and dependencies of the work packages and phases. The comparison of both might give a hint on whether challenges occurred.


  #figure(caption: [], image("../images/gradcam_combined_img4.png"))<gantt_initial>
  #figure(caption: [], image("../images/gradcam_combined_img4.png"))<gantt_actual>

  == Requirements and Solutions

  We made a table that would show all requirements and its according solutions. This would give a general overview of what we need and how we can make sure to meet those requirements. When looking at this table you could for example see that we want to have a visual explanation of model predictions and therefore want to apply Grad-CAM to show contribuiting image regions or that validation needs to be done on unseen rooms and therefore we need to split out dataset in order to have a validation set that's not used for training.

  == Risk Assessment

  //We could also talk a little bit more about our risk solutions but Im not sure about this section in general yet.

  Risks would be problems that we would have to be aware of in order to not risk bigger problems during the progress of the project. We defined 3 different categories of risks, PMPT Risks, BV Risks and General Risks. We didn't categorize them in like low, medium and high risks, but they could either cause a delay or also a complete failure of the project if not handled properly. Therefore we wanted to at least have one solution for each risk that would prevent or minimize the problem.

  === PMPT Risks

  The PMPT Risks would be risks that are only relevant for the PMPT course and had mostly to do with not collecting enough data in order to do proper training of the model or having a bad dataset in general as having a bias or errors in labeling for example.
  Another high risk would be to not have access to the calculation software "Treble" as this would be necessary to calculate the RT60 values of the synthetic rooms.

  === BV Risks

  Those risks would all have to do with not having a proper model that would overfit, be inaccurate in estimating the RT60 values or just take a lot of hardware-performance and a long time to evaluate.

  === General Risks

  General risks are either a combination of PMPT and BV risks or just risks that are not directly related to both courses. This would include library deprecations, legal risks but also data loss.

  == Meetings and deadlines

  #todo("Do we want to have this section?")

  // Meetings with professor Reiter
  // Project presentations
  // deadlines for project deliveries

  == Cost Plan

  During the planning phase we realized that we would not have any costs for the project as all the equipment was already available and for software licenses we would use the free trial of "Treble" for the RT60 calculation of the synthetic rooms and would only have to buy a license in case we wouldn't be finished until trial end.

  == Capacity Plan

  #todo("Do we want to have this section?")

  As described in the @project_organization section we would have 5 of 6 members participating in both courses of the project with 360 hours each and one person only participating in the BV course with 180 hours. This makes up a total of 1980 hours during the whole project.

  == Quality Assurance

  An in depth quality plan was setup to make sure that the project would meet all requirements and expectations. This would include seven quality sections with each naming a goal, criteria, a path to assure the quality and a way of quality control.
  The seven goals consisted of Accurate RT60 Estimation, Visual Input Robustness, Inference Speed, Model Size, Label Quality (of synthetic data), Scalability & Maintainability and Stakeholder Satisfaction.
  Criterias were defined with distinct numbers so its accesible and easy to understand whether expectations are met or not. Sometimes this was devided into Minimum acceptance and target values, so that the minimum acceptance would be the lowest value that is still acceptable and the target value would be the value we want to achieve.
  For the RT60 estimation for example the minimum would be below 50% error but the target would be between 5-10% error.

  The most important part about this is that the system thats being created is usable and therefore it was important that the model doesn't break down with small changes or is just too big and too slow to be used in a real world application.
  As this is a deadline driven project its important to have a result that can be further developed and therefore is well documented and understandable for other developers.

  Meetings with our stakeholder were held every few weeks in order to get feedback on the project and meet the requirements and expectations as keeping everyone included up to date.

  == Conclusion

  The project planning phase was a crucial part of the Ertsi project as it defined the structure, objectives and risks of the project. It also included a clear schedule and requirements that needed to be met in order to have a successful project outcome. Continuous meetings with the stakeholder not only provided good feedback but also made the progress very transparent and flexible to changes.
]
