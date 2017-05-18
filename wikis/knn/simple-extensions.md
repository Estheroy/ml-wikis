## Simple Extensions

KNN can be extended in several useful ways. It can be used in a **regression** setting, and can be outfitted with some extensions that make the method more robust against noise.

KNN in a **regression** setting works very similarly to the standard KNN classifier. Instead of returning the mode class of the neighbors, the regressor returns the average of the neighbors’ label values. The same issues with sensitivity to K still apply. The other extensions can all arbitrarily be applied to regression KNN as well.

Extended KNN methods include **fixed-radius KNN, weighted KNN, and condensed KNN**, among others.

The **fixed radius KNN** adds a constraint to the classification rule. Instead of returning the output based on the k neighbors, it only tests points within a set distance from the test point. This sort of extension omits certain outlying cases, and is more robust against the bias problem. As a result, higher values of K tend to be used with a fixed radius KNN. 

<p align="center">
	<img class="plot" src="/assets/image6.png" />
</p>

The **weighted KNN** weighs the nearest neighbors by their distance to the testing point. Instead of just outputting the mode, it takes the distance to each neighbor. This creates a vector of k distances, one to each of the k neighbors. The algorithm then counts the number of neighbors in each class as normal, but then divides each class count by the distances to each neighbor of that class. 

<p align="center">
	<img class="plot" src="/assets/image8.png" />
</p>
