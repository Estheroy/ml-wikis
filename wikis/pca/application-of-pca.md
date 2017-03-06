## Application of PCA

PCA is famously used as a _dimensionality reduction_ technique in tasks like _facial recognition_ and _image compression_. It is often used as a visualization tool, allowing for a representative visible projection of some high dimension dataset. The user can plot the first two or three dimensions of the component space to see the general trend of the data. It is also used for finding patterns in any large dataset of high dimensionality, like those found in the field of finance, data mining, bioinformatics, or psychology.

It is important to note that one can look at the total percentage of variance accounted for by a principal component. By comparing the sum of all eigenvalues to the sum of any subset of eigenvalues, we can decide how much of the total variance is given by the eigenvectors that correspond to that subset. This allows for an intrinsic heuristic for choosing how many dimensions to reduce by.

A very famous use of PCA is in facial recognition, where PCA can be used to build a feature extraction method. Consider a dataset of matrices whose elements correspond to brightness values in an image. PCA performed on this dataset yields a set of eigenfaces, which are just the Principal components of the dataset. Any new face can then be projected onto a set of eigenfaces, just as in the generic case. The projection of this new face can then be treated as a feature vector for some classifier, to great effect.

![](/assets/pca_application.png)

