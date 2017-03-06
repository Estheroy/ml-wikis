## Theory and Terms

Consider a supervised classification setting, with a **dataset** X and corresponding **label vector** y. Our dataset is a D by n matrix, where D is the number of dimensions of our feature space, and n is the number of datapoints. In a supervised classificaiton setting, our labels are categorical, usually integers, that define the class for each corresponding point.

The KNN algorithm is extremely simple. For a new point p, the classifier returns the mode class of the K nearest neighbors of p in our training set, where D is a user defined hyperparameter.

Consider a concrete case, where a system needs to distinguish between benign and malignant tumors based on a few medical tests. Assume our K is three. For any new case, the algorithm compares its location in feature space, finds the three nearest neighbors, and returns the majority class of those three neighbors. KNN is based on the idea is that the two classes will occupy different regions in feature space.

The Nearest Neighbor algorithm is very sensitive to noise. The choice of ideal K is non-trivial. Typically, we use odd-numbered K to avoid ties. If the K is very small, then the algorithm is extremely sensitive to noise and outliers. When the K is too large, then the system is biased towards the most common class in the training set.

Because we don’t exactly learn some encoding, mathematical function, or parameters, KNN is said to be **non-parametric**. Because of this, KNN requires the entire dataset to be stored.

