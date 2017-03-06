## Limitation and Extension of PCA

* The directions with largest variance are assumed to be of most interest.
* We only consider orthogonal transformations \(rotations\) of the original variables. \(Kernel PCA is an extension of PCA that allows non-linear mappings\).
* PCA is based only on the mean vector and the covariance matrix of the data. Some distributions \(e.g. multivariate normal\) are completely characterized by this, but others are not, and PCA will necessarily miss some intrinsically informative elements of data in these distributions.
* Dimension reduction can only be achieved if the original variables were correlated. If the original variables were uncorrelated, PCA does nothing, except for ordering them according to their variance.
* PCA is not scale invariant. Data often needs to be normalized.



