## The idea of Bayes net

Decision trees are a **non-parametric, supervised** machine learning method for **regression** and **classification** problems. Because they can be represented as a set of “if-else” decision rules, they are especially simple to interpret and visualize. 

In this article, we introduce the theory and usage of decision trees. We cover motivating concepts of the method, including the nature of the tree structure, as well as a methods of prediction using learned trees. 

We then introduce the **Iterative Dichotomiser 3 (ID3)** decision tree learning algorithm, and show how it applies to a dataset with **nominal features**. We then move into the **C4.5 algorithm**, an extension of the ID3 algorithm, and demonstrate its application on a dataset with continuous features. Lastly, we introduce a **pruning technique** included in the C4.5 algorithm that addresses the issue of overfitting in decision trees.

Decision trees form a functional and theoretical foundation to ensemble methods such as **bagging, boosting, and random forests**, in a way that parallels the relationship between **artificial neurons** and **deep learning** or **support vector machines**. Understanding the inference of a decision tree, and how they can be used to iteratively split a dataset is absolutely fundamental to the methods described above.