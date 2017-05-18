## Eigenvectors and eigenvalues

In this section, it’s easier to think of the matrix as something that acts on a vector to produce another vector of the same size. Given a (square) matrix $$A$$ and a vector $$x$$, a few things can happen when we multiply them. If $$x$$ lies in the nullspace of the matrix, then the product $$Ax$$ will be zero. In general, we will get out a different vector than we put in: the vector might be rotated, or scaled. For some matrices, A there will be vectors which go out the same as they went in: $$Ax = x\lambda$$ where $$\lambda$$ is a scalar - the vector may get longer or shorter (or flip around the axis if $$\lambda$$ is negative), but it points in the same direction. When $$A$$ describes a physical system, a vector that behaves this way is an input that passes right through the system. These vectors are eigenvectors and the associated $$\lambda$$ values are the eigenvalues - eigenvectors often have surprisingly useful properties, and physical interpretations.


We can collect all the eigenvalues and eigenvectors in a set of matrices $$A = U\Sigma U^T$$ where $$U$$ are the eigenvectors, and the diagonal elements of $$\Sigma$$ are the eigenvalues. We call this the eigenvalue decomposition: we have factored $$A$$ into the product of two other matrices, which have a special structure. In general, many linear algebra problems, such as solving systems of equations, or calculating eigenvectors, are solved by factoring.


In the general sense, knowing the eigenvectors and eigenvalues gives us a simpler way to understand what a matrix is doing. We want to know what happens when we multiply $$Ax$$ - because the eigenvectors are orthogonal, and because matrix multiplication is linear, we can understand a matrix - vector product by looking at the eigenvectors. A eigenvector which spans the nullspace, for example, has eigenvalue zero.

We saw in the previous section the importance of knowing the span, basis, rank of a matrix. If we can calculate the eigenvalue decomposition, it completely describes these subspaces, and the rank of a matrix is the number of nonzero eigenvalues. Eigenvectors are used in PCA, and also in other applications like google’s page rank, and spectral clustering.


#### 5.1 Singular Value Decomposition

The eigenvalue decomposition does not always exist, and for many matrices there is no decomposition possible. Again by decompositon, we mean that we want to factor a matrix into the product of several other matrices. In particular, we would like a decomposition for any matrix which gives us the a basis for the column space, row space, and the nullspaces. We will also show how this same decomposition can allow us to solve any linear system. This decomposition exists for any matrix, and is known as the singular value decomposition, a related and very useful tool.

First, we define the singular value decomposition. There are three matrices, $$U,V$$, and a diagonal matrix $$\Sigma$$, with these properties
$$X = U\Sigma V^T$$
$$U^TU = I$$
$$V^TV = I$$
$$\Sigma = \begin{bmatrix}
   \sigma_1 & 0 & \dots  & 0 \\
    0 & \sigma_2 & \dots  & 0 \\
    \vdots & \vdots & \ddots & \vdots \\
    0 & 0 & \dots  & \sigma_n
\end{bmatrix}$$
especially note that the columns of $$U$$ and $$V$$ are orthogonal: these columns give us a basis for the row and column spaces.The singular value decomposition is related to the eigenvalue decomposition of two matrices computed from $$X$$, the eigendecomposition of $$XX^T$$

$$XX^T =(U\Sigma V^T)(U\Sigma V^T)^T$$
$$XX^T = (U\Sigma V^T )(V\Sigma U^T)$$
$$XX^T =U\Sigma I\Sigma U^T$$
$$XX^T =U \Sigma^2 U^T$$
$$XX^T =UΛU^T$$
$$\Sigma^2 = Λ$$
and the eigendecomposition of $$X^T X$$

$$X^TX = (U\Sigma V^T )T (U\Sigma V^T ) $$
$$X^TX = (V\Sigma U^T )(U\Sigma V^T )$$ 
$$X^T X = V\Sigma I\Sigma V^T$$
$$X^T X = V\Sigma^2 V^T $$
$$X^T X = VΛV^T $$
$$\Sigma^2 = Λ $$

* The columns of $$U$$ are the left eigenvectors (of $$XX^T$$ ).
*  The columns of $$V$$ are the right eigenvectors (of $$X^T X$$). 
* The diagonal entries of Σ are the singular values.
* $$\sigma_i = \lambda_i(XX^T)$$
* $$\sigma_i = \lambda_i(X^TX)$$
* The singular values are the square roots of the eigenvalues of these two matrices.

From the singular value decomposition, we can calculate the pseudoinverse, which we can use to solve any linear system
* $$X^{\dagger}$$ is the Moore-Penrose Pseudoinverse of X
* $$XX^{\dagger}X=X$$
* $$X^{\dagger}XX^{\dagger} = X^{\dagger}$$
* $$X^{\dagger} = V\Sigma^{−1}U^T$$
* $$X^{\dagger} = (X^T X)^{−1}X$$ (square or tall matrix)
* $$X^{\dagger} = X^T (X^T X)^{−1}$$ (fat matrix).

The smallest singular values (and corresponding eigenvectors) become the largest values of the (pseudo) inverse:

$$X^{\dagger} = (X^T X)^{−1}X$$
$$X^{\dagger} = V\Sigma^{−1}U^T.$$ 

Recall that when we introduced the inverse, we mentioned that it if exists, we can solve a linear system by multiplying each side by the inverse. Later, we saw that some systems, such as the one that arises in regression or least squares, do not have a solution, but we can create a system that always does have a solution, by setting up the normal equations $$X^T Xw = X^T y$$, which project $$y$$ into the span of the data, or alternatively arise by deriving the minimum of a function measuring error. For the normal equations, multiply both sides by $$(X^T X)^{−1}$$

$$X^T Xw = X^T y$$
$$(X^T X)^{−1}X^T$$
$$Xw = (X^T X)^{−1}X^T y$$
$$w = (X^T X)^{−1}X^T y$$
and we see that the solution of the normal equations is the pseudoinverse.

We saw in the section on span and basis that a linear system may have no solution, one solution, or many solutions. If the system has a unique solution, meaning that the matrix $$X$$ is invertible, then the pseudoinverse is equivalent to the inverse. If the system has no solution, the pseudoinverse finds the least squares solution. If the system has multiple solutions, the pseudoinverse finds the minimum norm solution: the smallest vector which solves the linear system.