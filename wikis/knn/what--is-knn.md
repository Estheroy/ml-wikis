## What is KNN?

KNN is a **non-parametric supervised classifier**, and is arguably the most intuitive solution to a classification problem, especially after becoming familiar with **feature space**.  KNN extremely dependent on well chosen **features**, and it does not have a true **training process**, which sets it apart from most other classifiers.

The underlying idea is that points of a class should be closer together than other points if the chosen features are informative to those classes. KNN can also be used for metric learning and density estimation. We will cover theory, especially **choice of hyperparameters**, **implementation**, and **extensions into metric learning**.

Despite its simplicity, the KNN method achieves surprisingly powerful results on many complicated machine learning tasks. It has approximate 95% testing accuracy on the **MNIST** digital recognition dataset, with no pre-processing of the data. 

For its importance in the history of machine learning, for its simple distillation of a fundamental assumption of machine learning, for its efficiency, ease of implementation, and power in the right contexts, and for how informative its failures on modern problems is, KNN is an essential method for any aspiring machine learning engineer. This article assumes familiarity with the concept of **supervised learning**, and equally assumes that the user is comfortable with **representing datasets and labels as matrices**.
                                     
