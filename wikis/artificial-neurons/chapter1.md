## What are Artificial Neurons?

Artificial neurons, or ANs, refer to a general class of models, which form the basis for many machine learning methods. ANs are often used as classifiers, though the class allows for much more general use. The SVM, logistic regression, and neural network methods all use artificial neurons as their central model. Artificial neurons all have two basic components; a **transfer function**, and an **activation function**. 

<p align="center">
  <img src="/assets/image6.png" />
</p>

The **transfer function** is performed exactly the same by all types of ANs, but the **activation function** varies across different types of neurons. Artificial neurons are distinguished, in fact, by the the activation function they employ. 


Artificial neurons are a **class of models**, not methods, which means that there is not a singular, standard way of **training ANs**. ANs are used as a central function in machine learning methods. AN based methods might be **single-neuron**, as in the case of SVMs, or **multi-neuron**, in the case of neural networks. Deep learning, the recent major success of the field, is called ‘deep’ after the extremely large volume of neurons that exist within a method.
This article introduces the basic formalism of artificial neurons. It focuses on and motivates the different possible activation functions. The central goal of this article is to introduce artificial neurons as a functional component of SVM, neural networks, and other common AN-based classifiers.
