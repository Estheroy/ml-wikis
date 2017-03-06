## Objective function

As we mentioned above, there are certain constraints that we want our parameters to adhere to besides just minimizing training loss. Regularization terms are just such a sort of constraint. When set, the algorithm doesn’t just find the weights that minimize loss, it also tries to balance the choice with the imperative to find weights that are fit to the true pattern, as opposed to random noise within the dataset.	
The most common regularization methods, and the most studies used, are the L1 and L2 norm constraints. Specifically, we are minimizing the norm, or length, of each weight vector.

$$
R(W)=\sum^k_{p=1}\lambda\|w^{(p)}\|^2
$$

In the expression above, we are summing up all the norms of every weight vector, or row, in W. is a user-set hyper-parameter, and it encodes for the relative ‘importance’ of the regularization term. The larger it is, the more the weights will be influenced by the regularization term compared to the loss term. Notice that the regularization function is not a function of the data, it is only based on the weights. 


We are now ready to define our objective function:
$$
\begin{gather*}
L(W)=E(W)+R(W)=E(W)
=-\frac{1}{n}\sum^n_{i=1}y_i\cdot\log(1-{\rm norm}[f(Wx_i)])+\sum^k_{p=1}\lambda\|w^{(p)}\|^2
\end{gather*}
$$
