## Weights

Recall that a dot product can be used to measure similarity between two vectors, and that the dot product outputs to the space that we just established as ideal for our problem. Indeed, it is the dot product that is combined against a datapoint to produce the signed “evidence” value that is fed into the sigmoid. Please refer to our section on parametric models and decision boundaries more a deeper consideration of the facts in this section.

We can write the function with the features we just worked through formally as
$$P(C=1|x)=\sigma(w_0+w_1x_1+w_2x_2+w_3x_3+\cdots w_dx_d)=\sigma(w\cdot x)$$, where
$$w=[w_0,w_1,\cdots,w_d]$$ and $$ x=[1,x_1,x_2,\cdots,x_d]$$

As in all supervised parametric models, training is simply a matter of finding the ideal weights w that minimize the error between prediction and true label across all our points. We accomplish this by minimizing a cost function. It should be noted that we are treating the probability output of this function as the prediction for our classifier. If our function returns that the probability of class 1 = .9, then it is fairly certain that the class is 1. If our function returns that the probability of class 1 = .1, then, because the probabilities of the two must add up to 1, we can say that the classifier is .9 sure that the class is 0. Notice that in either case, the label that the output is closer to is the predicted label. The classifier output simultaneously can be interpreted as the probability of one class, the inverse probability of the other class, and as an estimate of the correct class.

