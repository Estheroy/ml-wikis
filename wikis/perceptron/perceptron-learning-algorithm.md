## Perceptron Learning Algorithm

This section explains how an ideal set of weights can be found. The process of finding some ideal parameters for our training data is called **training**. For training to occur, the perceptron needs to be given a set of training points, or vectors in feature space, as well as a set of corresponding labels per training point. Learning from such a set is called supervised learning, which the perceptron is the first published case of. Let this training set be defined as a matrix $$X$$, where each row of $$X$$ is a datapoint as described above. Recall that for any vector $$x_n$$,we always add a 1 to the head of the vector, such that $$x_{n,1}$$,or the first term, is always equal to 1.

$$
X = \begin{bmatrix}
    x_{1,1} & x_{1,2} & \dots  & x_{1,n} \\
    x_{2,1} & x_{2,2} & \dots  & x_{2,n} \\
    \vdots & \vdots & \vdots & \ddots & \vdots \\
    x_{m,1} & x_{m,2} & \dots  & x_{m,n}
\end{bmatrix}
$$


And the set of labels, $$y \subset \Re^m$$ is a vector of labels corresponding to each training point. Note that the first subscript here just indexes the identity of a vector, and the second identifies the features of each vector.


The ideal set of weights is that set that minimize the classification accuracy on this training set. In the case of the perceptron, this can be done iteratively, by starting with a random set of weights, and then intelligently updating them based on their effect on classification accuracy. This second step is performed iteratively, with the training error improving on every step. Eventually our entire training set is correctly classified, meaning our training error has gone to 0, and we have finished training. The update rule for every iteration of our training algorithm is given in terms of the whole weight vector by 


$$w_{t+1} = w_t + \eta(y_i - \hat{y_i}) \cdot x_i$$


Where $$w_t$$ is the old weight vector, $$w_{t+1}$$ is the new weight value we’re generating, $$\eta$$ is a user-defined constant called the step size, $$y_i$$ is the true label for some point $$x_i$$, $$\hat{y_i}$$ is the output of the perceptron for that same point.



Here Let’s define the formal perceptron learning algorithm:

* Step 0: Initialize the weights (however you choose)
* Step 1: Choose a data point. **Mark it as the most recent start.**
* Step 2: Compute the model output for the datapoint using the model function s, as defined above.
* Step 3: Compare model output to the datapoint’s true label.
    * If they match, go to Step 5!
    * If not, go to Step 4.
* Step 4: Update weights using perceptron learning rule. 
        $$W_{new} = W_{old} + \eta(target_i - output_i)\cdot x_i$$
    And then, start over on the step 1 with the first data point.

* Step 5: Record it as correctly classified, and go to the next data point. Treat the dataset as a ring, meaning that you go back to the first data point after the last one.


If the next data datapoint is the most recent start, meaning you’ve gone through and correctly classified every datapoint without a single update, you’re done!

