## Theory and Terms

Consider a supervised classification setting, with a dataset X and corresponding label vector y. Allow that this dataset is a m by n matrix, where m is the number of datapoints, and n is the number of dimensions of our feature space. A label vector y is an m by 1 vector, where each element of y is the true class label for a corresponding training point. 

In the classification setting, the KNN algorithms boils down to forming a majority vote between the K most similar instances to a give unseen observation. Similarity is defined according to a distance metric between two data points. A popular choice is the Euclidean distance given by

but other measures can be more suitable for a given setting and include the Manhattan, Chebyshev and Hamming distance. Also, KNN automatically handles multi-class classification, and the labels may be any finite number of integers, though in practice this tends to be quite small. 

The KNN algorithm is extremely simple. For a new point p, the classifier returns the mode class of the K nearest neighbors of p in our training set. K is a user-chosen hyperparameter, and decides the performance of the method on any dataset.

Consider a concrete case, where a system needs to distinguish between benign and malignant tumors based on a few medical tests. Assume our K is 3. For any new point, the algorithm compares its location in feature space, finds the three nearest neighbors (since K =3), and returns the majority class of those three neighbors. This works under the assumption that a well chosen set of features define a space that classes inhabit separate regions of.

Because we don’t learn some encoding or parameters, and because there is no training process that involves minimization, KNN is said to be non-parametric. The inference algorithm finds the K nearest points from the dataset to any new point. As a result, KNN requires the entire dataset to be stored for use in testing, and a relatively long time during the testing stage. 

