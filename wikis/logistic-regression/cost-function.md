## Cost Function

For a set of training examples $$\{x^{(i)},y^{(i)},{\ for}~i=1,\cdots,n\}$$, with binary labels, the following **cost function** measures how well a given function h classifies the set. Please note that the function his the same function just described, namely, $$P(C=1|x)$$. Note as well that the summation is across the index of every datapoint and target pair in our set, and so we’re summing across the entire set.

$$
\begin{eqnarray*}
J(\theta)=-\sum_{i}(y^{(i)}\log(h_{\theta}(x^{(i)}))+(1-y^{(i)})\log(1-h_{\theta}(x^{(i)})))
\end{eqnarray*}
$$

This is known as the **cross entropy function**, and it is one of many viable functions to use as a cost. Notice that, like any loss function should, this function is zero when the predicted class of every point, $$x^{(i)}$$ is equal to the true labels for each point, $$y^{(i)}$$.
To train our classifier, which is the same as finding the weights that minimize this function, it is common to use **gradient descent**. Gradient descent can be thought of as a more sophisticated version of guess-and-check, where after each check, we use some mathematical properties to change the weights in an informed way. The idea being to incremental move to better and better weights until our classifier has the accuracy we want.

<img src="/assets/gradient_descent.png" width="490" height="300" />


