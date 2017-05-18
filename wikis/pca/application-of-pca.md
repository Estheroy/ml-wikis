## Application of PCA

PCA is famously used as a **dimensionality reduction** technique in tasks like **facial recognition** and **image compression**. 
It is also often used as a **visualization tool**, allowing for a representative visible projection of some high dimension dataset. The user can plot the first two or three dimensions of the component space to see the general trend of the data. It is also used for finding patterns in any large dataset of high dimensionality, like those found in the field of finance, data mining, bioinformatics, or psychology.

A very famous use of PCA is in **facial recognition**, where PCA can be used to build a feature extraction method. Consider a dataset of matrices whose elements correspond to brightness values in an image. PCA performed on this dataset yields a set of eigenfaces, which are just the Principal components of the dataset. Any new face can then be projected onto a set of eigenfaces, just as in the generic case. The projection of this new face can then be treated as a feature vector for some classifier, to great effect.

![](/assets/pca_application.png)

