## Mercer’s Theorem

Mercer’s Theorem determines which functions can be used as a kernel function. In mathematics, specifically functional analysis, Mercer's theorem states that a symmetric, and positive-definite matrix can be represented as a sum of a convergent sequence of product functions. From Mercer’s theorem a matrix is a **Gram Matrix** if and only if it is positive and semi-definite, i.e. it is an inner product matrix in some space [CST00]. For a function to be a kernel, then the inner product matrix created by a dataset should necessarily be positive-semi-definite.
In plain terms, for some function $$K$$ that takes two input vectors as arguments, if we apply $$K$$ to every possible pair of points in our dataset, and write out a corresponding symmetric matrix $$G$$ whose $$i,j$$th element corresponds to $$K(x_i,x_j)$$, then $$K$$ is a valid kernel if and only if that matrix $$G$$ is positive semi-definite.

$$
if \ G = \begin{bmatrix}
K(x_{1},x_{1})  & K(x_{1},x_{2})  & \cdots  & K(x_{1},x_{n})  \\ 
K(x_{2},x_{1}) & K(x_{2},x_{2})  & \cdots & K(x_{2},x_{n}) \\ 
 \vdots & \vdots  & \ddots  & \vdots \\ 
 K(x_{n},x_{1}) & K(x_{n},x_{2})  & \cdots  & K(x_{i},x_{n})
\end{bmatrix}
is \ psd \ then \ K \ is \ a \ valid \ kernel
K(x_{i},x_{j}) = < \Phi (x_{i})\cdot \Phi (x_{j})> 
$$

It should be noted that Mercer’s theorem only tells us when a candidate similarity function is admissible for use in support vector machines. It tells nothing about how good such a function is. Luckily, there is a set of well studied kernel functions that have been shown to work extremely well in practice with SVMs.
