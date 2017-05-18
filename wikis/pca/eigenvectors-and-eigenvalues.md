## Step By Step Explanation


We can distill PCA into the following steps:
Let our original data be the following plot
 
#### 1 – Subtract the mean vector from each of the dimensions
This produces a dataset whose mean is zero called Zero Mean Data. Subtracting the mean simplifies the process of calculating the covariance matrix. This yields the plot on the right (note the axis label):

<p align="center">
	<img class="plot" src="/assets/image10.png" />
</p>

#### 2 – Compute principal components by calculating and ranking by eigenvalue the eigenvectors of the covariance matrix

As described above, the eigenvectors and eigenvalues of the covariance matrix correspond to orthogonal directions of variance. When ordered by eigenvalue, they form the principal components. The following plot shows the same dataset, with the principal components directions highlighted in red and green
 

<p align="center">
	<img class="plot" src="/assets/image6.png" />
</p> 

#### 5 – Project the data into component space.
This makes it so that the dimensions of our dataset are now ranked by variance. Specifically, the x-axis now aligns with widest spread, the y-axis with narrowest.

<p align="center">
	<img class="plot" src="/assets/image5.png" />
</p>

#### 6 – Choose and apply application.
At this point, the user can choose to reduce dimensions or denoise.
Reducing dimensions is just a matter of dropping values of the least informative directions in in component space. This means a smaller dataset that preserves the data’s original structure, seen in the following plot. Note that the dataset on the right is one dimensional, representable with a single vector.

<p align="center">
	<img class="plot" src="/assets/image15.png" />
	<img class="plot" src="/assets/image11.png" />
</p>
**Reconstructing**, on the other hand, means re-projecting the reduced data back to the original space. This doesn’t make the set smaller to store, but it does remove noise and can improve successive steps in the project. The following plot illustrates this, and shows the original dataset in green with its reconstruction in yellow.


<p align="center">
	<img class="plot" src="/assets/image23.png" />
</p>
