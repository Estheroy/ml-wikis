## Training

To train a logistic regression unit, we initialize with a random set of weights, compute the classifier performance with those weights, and then differentiate the classifier output with respect to those weights. We use the fact that a derivative points to the direction of ascent to move the weights so that the error function is reduced. This process, minimizing the error function, is called training, and it is common to all parametric classifiers. For a more thorough treatment of gradient descent and training in general, please see gradient descent and training by optimization.

<img src="/assets/logistic_regression_flowchart.png" height="330" width="760"/>