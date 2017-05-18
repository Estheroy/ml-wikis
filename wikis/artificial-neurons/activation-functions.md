## Activation functions

**Activation functions** are a set of functions that map the **transfer function** value calculated within an artificial neuron to some output. **All activation functions** necessarily output scalar values. **All artificial neurons** have some activation function, and the choice of activation function for some neuron depends on the intended purpose of that artificial neuron. Some artificial neurons are used for direct classification, others are used to model probabilities. Yet others are used for feature extraction in larger methods, and can’t be fully understood until after a cursory introduction to neural networks.

**Classification** is one potential use of ANs. It is, in fact, the oldest purported use of ANs. Classification is based on the fact that the decision boundary splits the **feature space** into two regions, where any given point can be quickly identified as being in one region or the other.

<p align="center">
  <img src="/assets/image7.png" style="width:333px; height:300px;"/>
</p>
###### Decision Boundary(Red) separates two classes (Blue and Green)


The idea is that, as long as the decision boundary is well placed, meaning that the weights are well chosen, and the AN will be able to correctly assign a class label to any given point in feature space. Naturally, this only works for binary classification problems. When used as a binary classifiers, ANs are called **linear classifiers**.

Recall that in binary classification problems, the labels are chosen to be either $$\{0,1\}$$ or $$\{-1,1\}$$. There are two common activation functions for this purpose, one for either labelling scheme. Namely, the **step function**, and **sign function**.


<p align="center">
  <img src="/assets/image5.png" style="width:250px;height:230px;"/>
  <img src="/assets/image3.png" style="width:250px;height:230px;"/>
</p>
###### Left: Step Function Right: Sign Function

The **step function** is used for the $$\{0,1\}$$ scheme, and the sign function for the $$\{-1,1\}$$. Notice the shape of either function; they output 1 for any positive value, and the other label, 0 or -1, for any negative value. 

Recall that the **sign of the transfer function** depends on whether the point is above or below the decision boundary. This means that if an AN feeds the **transfer function** of a point into either of these **activation functions**, the output of the AN will be 1 for points that are above the decision boundary, and the other class for points below the decision boundary. In this way, the AN maps a point to a class label, based on its location with respect to the decision boundary.

There are several famous examples of linear classifier methods, including the famous perceptron, as well as the more recent and extremely powerful SVM. These are methods with a step activation and sign activation function, respectively. Each features its own training method for finding an ideal set of weights, but at heart, they classify using the same mathematical facts. 

It’s important to understand our diction. Artificial neurons are the general case of a set of **models**. The distinction between **model** and **method** is essential; A model is only part of method, as the latter also includes a training method as well as additional constraints or extensions. 

We might also want to use ANs to model probability of either class, instead of just outputting class labels directly. This is called **stochastic classification**, and features its own set of **activation functions**. 

**Stochastic classifier activation functions** output to the range $$\{0,1\}$$ or $$\{-1,1\}$$, by using the sigmoid and tanh functions, respectively. The sigmoid is shown below to the left, and the tanh function is shown to the right:

<p align="center">
  <img src="/assets/image9.png" style="width:288px;height:202px;"/>
  <img src="/assets/image1.png" style="width:225px;height:189px;"/>
</p>
###### Left: Sigmoid Right: tanh


The choice of **sigmoid** or **tanh** depends on the chosen label scheme, **sigmoid** for $$\{0,1\}$$, **tanh** for $$\{-1,1\}$$. Notice that either of these functions approach a limit on either side of their domain. Recall that the transfer function increases in absolute value for points far from the decision boundary. 

Taken all together, an AN with **sigmoid activation function** returns values that approach 0 or 1 for points that are far from the decision boundary, with values greater than 0.5 for points above the decision boundary, and less than 0.5 for points below the decision boundary. A sigmoid activation AN can be intuitively read as returning the probability that class 1 is the **correct class** for an input vector. If a point is above the decision boundary, the output is greater than 0.5, meaning that class 1 is more likely than class 0. The converse is true is the point is below the decision boundary; the output would be less than 0.5, meaning that class 0 is more likely. 

There are several reasons why we should choose this sort of function. One is that which was already mentioned, that the output can be used as a probability, the AN’s ‘**confidence**’ in its prediction for a point. Also, unlike the **transfer function**, the **sigmoid** is continuous, and so is easily differentiable. This is an extremely useful property for neural networks. A common name for a single sigmoid-activation AN classifier, trained with one of many possible methods, is called **logistic regression**.

<p align="center">
  <img src="/assets/image4.png" style="width:322px;height:212px;"/>
</p>


The **tanh activation** needs a bit more work to interpret, though it is conceptually extremely similar to the **sigmoid**, in shape, features, and use. The **tanh activation** is used for the label scheme $$\{-1,1\}$$. Like the sigmoid, it approaches the class labels when the input vector is further from the decision boundary. The absolute value of the tanh can be interpreted as the probability for the predicted class, with its sign deciding the chosen class, -1 or 1. 


**Tanh activation ANs** can be used for **stochastic classification**, but they’ve seen greatest use as feature extractors in neural networks. Just like in the sigmoid case, it is simple to extract probabilities from the Tanh, and then output actual label values. The **tanh function** can be fed into the sign function if our model needs to generate class labels. Like the sigmoid, the Tanh function gives us more information than the sign function, in that it is sensitive to distance from the decision boundary.

<p align="center">
  <img src="/assets/image2.png" style="width:322px;height:212px;"/>
</p>


Yet other ANs might be used as feature extractors in a larger network, we won’t go terribly far into this, as the true value of these functions is difficult to grasp without an understanding of neural networks. Please see our treatment of these special activations in our neural networks wiki. 