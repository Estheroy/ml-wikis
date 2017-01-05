# How deep learning works
Deep learning changes how you think about representing the problems that you’re solving with analytics. It moves from telling the computer how to solve a problem to training the computer to solve the problem itself.

The **traditional approach** is to use the data at hand to engineer features to derive new variables, then select an analytic model and finally estimate the parameters (or the unknowns) of that model. 

These techniques can yield predictive systems that do not generalize well because completeness and correctness depend on the quality of the model and its features. For example, if you develop a fraud model with feature engineering, you start with a set of variables, and you most likely derive a model from those variables using data transformations. You may end up with 30,000 variables that your model depends on, then you have to shape the model, figure out which variables are meaningful, which ones are not, and so on. Adding more data requires you to do it all over again.

The **new approach with deep learning** is to replace the formulation and specification of the model with appropriate hierarchical characterizations (layers) that learn to recognize latent features of the data from the regularities in the layers.

The paradigm shift with deep learning is a move from **feature engineering** to **feature representation**.

The premise and promise of deep learning is that **it can lead to predictive systems that generalize well, that adapt well, that can continuously improve as new data arrives**, and that are more dynamic than predictive systems built on hard and deterministic business rules. You no longer fit a model. Instead, you train the task.
