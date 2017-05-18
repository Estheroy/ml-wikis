## Training

To train a logistic regression unit, we initialize with a random set of weights, compute the classifier performance with those weights, and then differentiate the classifier output with respect to those weights. 

We adjust the weights in the direction opposite the gradient, so to reduce the function a small amount. This new weight value is used to compute the classifier again, and the classifier output is again differentiated with respect to the weights. 

The adjustment, prediction, and differentiation process repeats, and on each iteration the loss function is reduced. For a more thorough treatment of gradient descent and training in general, please see **gradient descent** and **training by optimization**.