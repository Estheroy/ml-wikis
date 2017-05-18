## What is Logistic Regression

Logistic regression is a **simple parametric binary classifier**, one of simplest, and often one of the very first taught. Logistic regression is extremely similar to the perceptron, and both can be considered special cases of the artificial neuron. Logistic regression differs from the perceptron in that it outputs to a real interval, namely, \(0,1\), instead of to the set $$\{0,1\}$$. As a result, the training method for logistic regression is more sophisticated, though extremely similar conceptually.

<p align="center">
	<img class="plot" src="/assets/image36.png" />
</p>

In logistic regression, we try to predict the probabilities of a given data point belonging to classes "1," and "0". This is in contrast to the perceptron, which returns predictions of the actual label values. Logistic regression will return values between 0 and 1 with confidence, but never those numbers directly. 

This article will elaborate the uses of logistic regression, and contrast the method with perceptrons. Then it introduces a function often called the sigmoid or logistic function. Then, it will define a cost function which will be used to train a logistic regression method, and review the basics of gradient descent, and show how the logistic regression function can be trained with gradient descent. 

Logistic units contain a transfer function and activation function, just like perceptrons and artificial neurons generally. The reader is urged to consider our perceptron or artificial neuron wiki for a fuller treatment on these concept. This article assumes a basic understanding of perceptrons, familiarity with the concepts of weights, activation, and the transfer function, and an understanding of gradient descent in general.
