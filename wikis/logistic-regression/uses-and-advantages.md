## Uses and advantages

The logistic regression method can be seen as a more complex and flexible extension to the perceptron method, and both are examples of artificial neuron model based methods. Logistic regression is used for the same tasks as the perceptron, with a useful addition. The method can output the confidence it has that a classified point has been assigned the correct class, whereas the perceptron outputs the value of the class only. Logistic regression can be used to model the probability of a class for a set of points.


<p align="center">
	<img class="plot" src="/assets/image31.png" />
</p>

The output of a logistic regression model is continuous valued. This means that a logistic regression unit’s output is differentiable with respect to its weights and argument. This allows the method to be trained with the more sophisticated gradient descent method. Whereas perceptrons will never return a valid solution for data that is not linearly separable, the logistic regression method can still find a good solution, and will converge. While perceptrons can avoid the non-convergence issue by training with stochastic methods, a logistic unit trained with gradient descent tends to work much better.

<p align="center">
	<img class="plot" src="/assets/image32.gif" />
</p>

