## Basis, span, and feature spaces

In the previous section, we introduced the idea of least squares by fitting a curve to some lines, and we arrived at the normal equations. In this section, we will more closely analyze if this problem has a solution, and what we can say about the existence and uniqueness of those solutions by looking at the matrix.

We combine rows of matrix by multiplying with a vector. We can also transpose the matrix. There are four sets of things we can make with a matrix- vector product
* The row space - we can make these by combining the rows - we also call this this span
* The null space - we cannot make these by combining the rows
* The column space - we can make these by combining the columns
* The null space of $$A^T$$ we cannot make these by combining the columns


To describe one of these spaces, such as the row space, we introduce the notions of rank and span. Formally, the span of our matrix $$A$$ is the set of all vectors $$b$$ which we can create by multiplying any vector $$x$$ by $$A$$. We can describe this set as a subspace. A more compact and useful way to describe the subspace is by defining a basis. A basis is a set of vectors, which taken together, span the entire subspace. For two dimensional vectors, for example, one possible basis is $$[1 \ 0]$$ and $$[0 \ 1]$$ - these vectors combined can create any two-dimensional vector. Another basis is $$[2 \ 1] \ [1 \ 2]$$, and a third is $$[1 \ 0] \ [1 \ 1]$$ and $$[0 \ 1]$$. To distinguish these, notice that the first basis $$[0 \ 1][1 \ 0]$$ has two vectors which are orthogonal (have dot product zero) - a set of vectors, any pair of which are orthogonal, is _linearly independent_. The size of the smallest linearly independent basis of the row space is the rank of a matrix - which is also the same as the size of the smallest linearly independent basis of the column space. A matrix that has an inverse will be full rank.


A matrix that has an inverse will be full rank.


The most common problem in applied math (often in machine learning too) is solving a linear system: $$Ax = b$$ - we are given $$A$$ and $$b$$, and we need to find $$x$$. In a machine learning problem, $$b$$ might be some data we want to predict. by finding a linear combination of the columns of $$A$$.


We can work through this with a regression example: we want to make predictions using $$Xw$$. The first question we ask, is if this is possible: does this system have a solution? If we can create $$x$$ from $$A$$ with some vector , and represent it perfectly (not a good fit, but an exact solution) then $$b$$ lies in the span.Another way to think about regression, is that we have a system of equations we may not be able to solve, because there might be some part what we want to predict $$y$$, which are not in the span of the data. 


Another way to solve the regression problem would be to project those dimensions out, and then solve the problem exactly for the part of $$y$$ which does lie in the span of the data. Consider our equation, $$Xw = y$$, which may not have a solution. Now we left-multiply by the transpose of $$X$$, written $$X^T$$ , which has the effect of projecting $$Y$$ into the span of the data. For the whole system we now have $$X^T Xw = X^T y$$, which are the normal equations again, but we have arrived at them without doing any calculus. 


Another example comes up in dynamics and control theory. In this case, the current state of system (such the current location and velocity of your airplane) is described by a vector of variables, and $$Ax$$ is the activity of the system at the next time step. If there is a nullspace in the matrix, it means there are some inputs to the system, which have no effect on the future of the system, because a vector in the nullspace goes to zero.

The column space is the space of everything we can make by adding columns of $$x$$. One place this comes up in machine learning is using gradient descent for simple models. The updates for our weight vector, when we are using least squares are a linear combination of data points, scaled by the amount of error at those points. This means that our weight vector will always lie in the column space. 

As a final example of the importance of these spaces in real problems, con- sider a remote sensing or imaging example, where for our linear system $$Ax = b$$, $$A$$ is the **forward model**, which describes how the signal of interest reaches our sensors, to produce our measurements $$b$$. In some cases, $$A$$ is not invertible (or not even square), so there is a nontrivial nullspace. These are underconstrained models, then, where there are multiple solutions $$x$$ which could have given the same sensor readings. In EEG and MEG brain imaging, we have a small number of sensors $$(64, 128)$$ outside the skull, and we want to find a solution for the electrical activity inside the brain at thousands of locations. Our forward model $$A$$ describes, for each sensor, how much of the brain that sensor can see. To solve the linear system, to find the brain activity that could have produced our sensor readings, we have to solve a linear system $$Ax = b$$ which may have many possible solutions. One way to produce a unique solution is to find the **minimum norm** solution, which is the one which solves $$Ax = b$$, while having the smallest norm - which means that the part of the vector in the nullspace is set to zero.


#### 4.1 Feature Spaces

We might want to expand our solutions using some features - it might be that the solution of our system, $$Xw$$ is still not as close to $$y$$ as we would want. We can **expand** the possible space of solutions by calculating some function of the matrix $$X$$. Note that to gain any additional power, to be able to fit more possibilities, we need to expand the row space. This means that no linear transformation of the data, $$AX$$ would be sufficient, because these operations (being linear) cannot increase the span. Linear transformations such as Principal Component Analysis (PCA) are sometimes used to reduce the span (hopefully limiting the model to the useful part of the data, or reformulating the model in small numbers of variables).