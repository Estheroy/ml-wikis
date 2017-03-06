## Advantages and Disadvantages

Obviously, the linear regression model is only meant to fit data where we believe there is a linear trend between our features and the value we mean to predict. As a result, the linear regression model is not useful for modeling trends or data that we know to be complex. Higher order regression models are available, as very simple extensions to linear regression, but they two assume that the asserted model order is correct for the data.

Direct model regression, of which linear is the simplest example, can be used together to find ideal trends. This sort of project involves fitting several different degree models to a dataset, and then comparing their results on a validation set, with the best fit informing us as to the actual shape of the model.

<p align="center">
	<img src="/assets/linear-regression-overfitting.png" />
</p>

Alternatively, one could train a model on random subsets of the training data, checking to see how different the learned parameters are for permutation of the data. In this way, we are checking for **overfitting**. The idea here is that the correct function will learn the shape of the underlying pattern, as opposed to accidental regularities of the dataset.

