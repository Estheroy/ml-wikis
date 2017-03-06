## Optimization

As we’ve said optimization is the task of finding an ideal set of weights, which is usually manifested as the task of minimizing some loss function with respect to the weights. For most real world problems, solving for the global minimum is computationally intractable. Instead, we use sampling techniques. In this section, we will elaborate on an extremely popular sampling technique, namely, gradient descent.

![](/assets/non_convex_gradient.png)


Our final loss function is non-convex, that is, there are more than one local minima across the function landscape. To develop an efficient optimization algorithm for those non-convex loss function, we take the derivative of the loss function with respect to every weight, the so called gradient of the loss function, and we adjust the weights according to their derivatives. This works because the gradient, and the derivative as well, points in the direction of greatest ascent, that is, towards the direction towards which the functions increases most. For gradient descent, we move in the direction opposite the derivatives.
Recall that our optimization function is differentiable with respect to every weight,

$$
\Delta w_{k,d}=\frac{\partial}{\partial_{w_{k,d}}}L(W)\\
w_{k,d}(t+1)=w_{k,d}(t)-\eta\Delta w_{k,d}
$$

Where  is the learning rate, a user-specified hyper-parameter that codes the size of each step. Gradient descent is performed on every weight until the algorithm has reached a minimum, that is, until the loss ceases to change on repeated iterations, at which point we have found our ideal weights.

<img src="/assets/gradient_descent.png" width="490" height="300"/>