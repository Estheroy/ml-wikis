## What is the Naive Bayes Classifier?

A **classifier** that directly calculates the **probability** of a class given a datapoint by storing the explicit statistics of the **training data**, the NBC makes direct use of Bayes’ Theorem. It is favored by beginners for its simplicity, but it has it’s place in more advanced projects, and is essential to big data applications. The NBC requires an understanding of statistics and probability to understand, but it is not based on geometric properties of feature space, and does not explicitly involves a decision boundary. The NBC is a strong solution to classification problems that assumes independence between features, and is extremely useful in applications where that assumption is likely to be true.

In simple terms, a Naive Bayes classifier assumes that the presence of a particular feature in a class is independent of the presence of any other feature. For example, consider the case of **classifying** fruit. A fruit may be an apple if it is red, round, and about 3 inches in diameter. We might also find that, in general, red fruits are very likely to be round. This fact should, intuitively, affect our final probability estimate for deciding the type of some new fruit. However, the **naive assumption** of the NBC makes that sort of fact unusable in our calculations. This isn’t meant to weaken the algorithm, it’s meant to make inferring a probability much more efficient when the number of features we have is huge.
