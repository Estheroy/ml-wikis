## Adaboost

Adaboost is the best known boosting algorithm. In this section we describe how the algorithm functions. At the end of boosting, we obtain two output: a collection of trained classifiers, each denoted by $$G_m$$, and for each classifier a corresponding weight $$\alpha$$ telling us how much influence this classifier should have in the final decision

$$
G(x)=\mbox{sign} \left(\sum^N_{m=1}   \alpha_m G_m(x) \right)
$$

As the algorithm proceeds, it adds a new classifier and calculates a weight for that classifier. Adaboost reweights the data at each iteration, so that the weak learners focus on the misclassified examples from the previous step. For each data point, there are a set of weights, $$w_i$$, which describe how much to pay attention to each data point. These are initialized to be equal, $$\frac{1}{N}$$.

Boosting proceeds for a total of M rounds: this is the only parameter necessary to choose. 

For $$m=1:M$$ (number of rounds of boosting)
At each round of boosting, fit a classifier using weights wi - the classifier minimizes the weighted error, so it will focus more on the examples with higher weight. There are several ways to modify a classifier to use the weights: one is to resample the dataset based on the weights, so you include more examples with higher weight. Another idea which works better is to use a weak learner which can take the weights as another input. Most classifiers minimize the classification error on each data point by minimizing a sum of loss terms for each data point. Instead of counting each point equally, we can use the weights inside the sum, and minimize
$$
\sum_i w_i L(x_i)
$$
Which will give a decision rule that focuses on examples with higher weight. For decision trees, we would use the weighted loss instead of the loss for evaluating potential splits. 

We call the resulting classifier trained at step $$m, G_m(X)$$

2) Next, calculate the error of this classifier - we are count the number of mistakes using an indicator function which is 1 if there is a mistake. This is known as the 0/1 loss

$$
\mbox{err}_m=\frac{\sum^N_{i=1}w_i I(y_i \neq G_m(X_i))  }{\sum^N_{i=1} w_i}
$$

Using this error, we can also calculate the weight for this classifier in the final decision,
$$
\alpha_m = \log((1-err_m)/err_m)
$$

3) We also use the error to update the weights. Note that the indicator function will only be 1 for the examples which were misclassified, so on those examples we will increase their weight.

$$
w_i \leftarrow w_i \times \exp \left(\alpha_m \left(w_i I(y_i \neq G_m(X_i)) \right)\right)
$$

The weights are important, as they will ensure that the next iteration of boosting, the algorithm focuses on the “harder” datapoints to classify. 

Finally, after training, the decision is the sum of all the classifiers, weighted by alpha.

$$
G(x)=\mbox{sign} \left(\sum^N_{m=1}   \alpha_m G_m(x) \right)
$$

Unlike a method such as gradient descent which might be run until some condition or convergence is reached, the number of iterations of adaboost is fixed.