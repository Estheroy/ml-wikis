## What is K-means?

K-means is one of the first taught and simplest **unsupervised clustering methods**. Clustering is the task of automatically grouping data into coherent clusters based on their feature space. Clustering methods, including K-means have many applications, including market segmentation, social network analysis, organizing computer clusters, and astronomical data analysis. 


<p align="center">
    <img class="plot" src="/assets/image7.png" />
</p>


K-means is an iteratively trained batch algorithm, and the core idea behind it is intuitive. K-means only takes one hyper-parameter, K, which is the number of clusters. The algorithm partitions all data points  into K non-overlapping clusters. This is accomplished by iteratively moving, according to a specific set of steps, a set of points called ‘**centroids**’ around in feature space. Each datapoint in the set is assigned to its closest centroid. A set of points with a common closest centroid is called a cluster.  We use the name ‘K-means’ for two reasons, because the centroids are also called, somewhat incorrectly, ‘means,’ and because by convention the number of centroids is K.  This algorithm works on the intuition that a set of points belonging to the same class should be closer together in features space. 

Although it is a very efficient algorithm, K-means does have some inherent weaknesses. Most famous among them is that there is no general solution to find the optimal number of clusters for any given data set. We will provide additional issues, as well as methods of overcoming them. In addition, we will cover theory and usage, and general advantages and disadvantages.

