## Feature Space Mapping


Feature space mapping is the process of extracting features from a dataset, and projecting that dataset into a higher dimensional space, concatenating the extracted features to each point. The idea behind feature space mapping is that a dataset with non-linearly separable patterns might be linearly separable in some deterministic, higher dimensional mapping. The classic example is shown below.

<p align="center">
	<img class="plot" src="/assets/image19.png" />
</p>

Note that in the original 2-d space, the data can be separated with a round, or quadratic, decision boundary, but there does not exist a hyperplane to separate the data. If we extract some features for each point, namely the distance between the point and the mean of the dataset, and add that new feature to each point in the dataset, then we’ve mapped our set into a 3-D dataset is linearly separated.


**Feature space mapping** proceeds by calculating a large number of features of the input data points, which increases the size of the data points, and then applying a **linear method**. This involves increasing the size of the dataset, which is **undesirable** for any machine learning method, especially parametric models like primal form SVM. To perform primal form SVM training on a feature space mapped dataset, we would need to either learn an extra parameter, or weight, for every added feature. Similar problems arise for dual form SVM, where we would need to compute dot products for larger vectors.


If the number of dimensions we want to map to is very large, these problems prohibit us from performing SVM on feature mapped sets, and most machine learning problems require many times more features for SVM to be effective. Fortunately, the use of **kernel** method allows us to leverage the advantage of feature space mapping, namely the ability to classify non-linearly separable data, with all the power of SVMs, **without actually having to compute new features**.


#### SVM Dual
