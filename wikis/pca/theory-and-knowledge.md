![](/assets/image8.png)## Theory and Knowledge

PCA requires a firm grasp of post-calculus **linear algebra**, specifically **eigenvectors and eigenvalues**, **projections**, **bases**, and **vector spaces**. It is one of the oldest solutions to the dimensionality reduction problem. The dimensionality reduction problem refers to the ideal way of dropping dimensions for computational simplicity. 
Consider a simple two-dimensional dataset. The naive method of reducing dimensions is simply to omit some of the dimensions of the corresponding data matrix. Consider the following 2-d image. 

<p align="center">
	<img class="plot" src="/assets/image8.png" />
</p>

The naive solution would fail in this case, as simply omitting either the x or y values would not preserve the structure of the data. 

This failing is especially problematic in  higher dimensional data. PCA is a more sophisticated solution, and is often the first one taught for this problem. PCA computes the most meaningful directions of the dataset, called the **principal components**, and uses them as a basis to re-orient the dataset. The principal components are a set of orthogonal vectors that correspond to the directions of greatest to least variance in the data.

<p align="center">
	<img class="plot" src="/assets/image6.png" />
</p>
###### Plot of first two principal components

PCA involves redefining the data by projecting it onto the principal components. Once our data is redefined in component space, we simply drop those dimensions that correspond to principal components of least variance. By dropping dimensions of lesser importance, we can be sure that the overall structure of the data is being preserved as much as possible.

<p align="center">
	<img class="plot" src="/assets/image8.png" />
</p>









