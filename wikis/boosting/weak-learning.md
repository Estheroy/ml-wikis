## Weak learning

The basic classification method that we use to build the ensemble is called the weak learner: it is only necessary that the weak learner performs slightly better than random guessing. Boosting was originally developed for theoretical considerations, to prove that any classifier that’s slightly better than chance can be used (with boosting) to obtain any classification accuracy. 


Boosting can work with any classification algorithm as the weak learner, but the weak learner usually used with adaboost is often combined with decision trees, or a very shallow decision tree, called a stump (because it has no branches or leaves). When applied to a classification problem with continuous features, this generates a very easy to visualize decision boundary: we select one feature (the x or y coordinate), and a threshold - points past the threshold are in one class, and below the threshold, the other. See the figure (below) for an example of decision stumps. 

**Decision trees** have the problem that they can overfit badly: they are an example of a classifier that is not stable: with a slightly different dataset we might obtain a completely different decision tree. Because boosting compensates for the poor characteristics of the weak learner, the flaws of decision trees do not hurt the performance of the whole ensemble. Other classifiers, such as the **support vector machine**, or **linear discriminant analysis**, could also be used as the weak learner, but they would not necessarily perform better than the decision stumps. 
