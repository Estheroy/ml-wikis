## How kernel tricks work


As we’ve seen, the SVM dual form formulation uses the training examples to compute similarity functions. We could, theoretically, replace the data points in our dataset with some higher dimensional mapping, but our training and prediction functions are still only dependent on the dot product between any two points. The key to the kernel trick is that there exists a class of similarity functions that, for any two vectors $$v$$ and $$w$$ in $$\mathbb{R}^{N}$$, are equal to the **dot product of a higher dimensional mapping of $$v$$ and $$w$$**. Such similarity functions are called **kernel** functions, $$K(\vec{v},\vec{w})$$. What this means is that, so long as we use a valid kernel function that we know corresponds to the **dot product of some higher dimensional mapping**, then we **do not need to explicitly transform $$v$$ and $$w$$**! The implications of this are huge:

1. By using a kernal $$K(\vec{x_i},\vec{x_j})$$, we can implicitly transform datasets to a higher-dimensional $$\mathbb{R}^{M}$$ using no extra memory, and with a minimal effect on computation time.
    * The only effect on computation is the extra time required to compute $$K(\vec{x_i},\vec{x_j})$$. This usually will not increase the order of time complexity.
2. We can efficiently learn non-linear decision boundaries for SVMs simply by **replacing all dot products in the SVM computation with **$$K(\vec{x_i},\vec{x_j})$$!

