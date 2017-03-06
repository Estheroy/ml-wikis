## What is Logistic Regression

Logistic regression is a simple parametric binary classifier, one of simplest, and often one of the very first taught. Logistic regression is extremely similar to the perceptron, and both can be considered special cases of the artificial neuron. Logistic regression differs from the perceptron in that it outputs to a real interval, namely, \(0,1\), instead of to the set {0,1}. As a result, the training method for logistic regression is more sophisticated, though extremely similar conceptually.

<img src="/assets/logistic_regression.png" width="468" height="320"/>

In logistic regression, we try to predict the probabilities of a given data point belonging to classes "1," and "0". To accomplish this, we will need to introduce a new function which is often called the **sigmoid or logistic function**.  We will review parametric, explicit decision-boundary based models, and the function of **weights** for these models. Finally, we will define a **cost function** which will be used to train our model. After explaining the theory and use of the logistic regression model,  we will move on to the softmax method.