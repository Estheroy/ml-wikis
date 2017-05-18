## Conclusion

Boosting works extremely well in practice, with no parameters to tune. For this reason it is a good method to apply when first encountering a new classification problem, and on many problems is one of the best performing methods. Boosting works improve the performance of any classifier, but is usually used with **decision trees**. 

Boosting differs from other ensemble methods by iteratively forcing the weak learners to focus on examples that are not already well predicted, and by learning a weight for each base learner. Two different theories explain why boosting works well in practice, one based on the iterative reweighting and margin, and the other based on the fact that averaging multiple estimates always improves a prediction. 