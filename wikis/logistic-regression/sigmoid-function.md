## Sigmoid Function

The function $$\sigma(z)=\frac{1}{1+e^{-z}}$$ is often called the logistic function or sigmoid . It is called the sigmoid because it is S-shaped. This function can be seen as squashing the value of its argument onto the range $$\{0,1\}$$. What we mean by this is that the sigmoid takes any real number, and outputs numbers between 0 and 1. Because of this, the sigmoid’s output can be interpreted as a probability, which we will use to make stochastic predictions.

<img src="/assets/sigmoid_function.png" width="468" height="320"/>


For binary classification problems, a chosen method makes predictions that match the label scheme. Direct prediction is what we call the output of a method when its co-domain matches label values directly. Perceptrons make direct predictions because they output to either 0 or 1 for any point, which are taken as actual label values.

A stochastic prediction is a function output that corresponds to a probability of either class. For binary classification, there are only two classes, therefore, if we return the probability of one class then we are implicitly  returning the probability of the other. This is because the probability of either class must always add up to 1.


