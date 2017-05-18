## Gradient Boost

Adaboost was developed specifically as a classification algorithm. Gradient boost is a general purpose boosting method which can optimize any loss function ($$L$$). Using gradient boost with log loss, for example, would give a classification algorithm (additive logistic regression), while using other losses can give a regression algorithm. Gradient boosting is often used with **decision trees**.

Gradient boost can use any loss function, but it’s particularly suited to loss functions which may be difficult to optimize - for example with decision trees, how to change the tree structure to optimize some arbitrary loss is not obvious.  Gradient boost replaces the search for the optimal parameters of this loss function, which might be high dimensional and difficult, with two simpler stages: one stage minimizing least squares loss (which is usually simple and fast - see linear regression), and a one-dimensional search with the original loss function. Using gradient boost with log loss gives an algorithm very similar to Adaboost, but gradient boosting could be used with other loss functions. 

We will use the same notation as adaboost: $$F_m$$ is the weak learner at time point $$m$$, the labels are $$y$$, the data are $$x$$. Our prediction rule at the end is still a weighted sum of the weak learners, with individual weights $$w_m$$. We refer to the overall classification rule as $$F_m(X)$$ (it’s a function). Each weak learner has it’s own parameters, which we call $$a_m$$.
We start by training the weak learner on all the data, to give us $$F_0(X)$$.
Then iteratively add a new learner as follows:

1) First, calculate the gradient of the loss function, with respect to the loss and a data point, at the current model.

$$
\tilde{y}=\left[ \frac{\partial L(y_i,F(x_i)) }{\partial F(x_i))} \right ]_{F(x)=F_{m-1}(x)}
$$

2) Then, estimate your parameters **alpha and beta** by minimizing the difference between the gradient and the weak learner ($$h$$). This step can be done by least squares, instead of the original loss function $$L$$. The advantage is that as long as you have a least squares algorithm, which are simple and fast (see linear regression), you can fit the weak learner. 

$$
\mathbf{a}_m = \mbox{arg min}_{\mathbf{a},\beta} \sum \left[  \tilde{y_i} -\beta F_m(x_i,\mathbf{a}) \right]^2
$$

3) Now you have a **weak learner** that points in the direction of the gradient. The $$\beta$$ in the previous step is a nuisance parameter, which needs to be replaced by $$w_i$$. The last step to estimate is the coefficient, which you do by minimizing the loss function with respect to sum of all current learners, and the base learner.
$$
w_m = \mbox{arg min}_{w_m} \sum L(y_i,F_{m-1}(x_i) + w_m F_m(x_i,\mathbf{a}_m) ))
$$

4) Now you are minimizing the **loss function** $$L$$,  as in logistic regression. Instead of having to do gradient descent on $$L$$, in high dimensional space $$a$$,  you have only a one-dimensional parameter to search over.

The hypothesis is updated at the end to be the sum of all weak learners.

The prediction rule keeps getting more complex as boosting continues. To control the complexity of the prediction rule, one can either control the complexity of the individual weak learners (if they’re trees, reducing the depth, pruning). Or, one can control the complexity of the sum. We can either reduce the number of terms in the sum (controlling $$M$$), or we can subtract a small amount from each $$w_i$$ as we are training the tree. Making the weights smaller is a form of regularization, which shows up in many other models. 
