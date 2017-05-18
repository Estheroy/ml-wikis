## What is Linear Algebra?

Linear algebra is an abstraction - instead of dealing with the thousands or millions of variables in a machine learning system, we can work with a matrix or a vector. The abstraction allows us to talk about, work with, and understand the mathematical details of complex, million-variable systems in a simpler way, by manipulating groups of variables at once, instead of individually. For example, in a regression, we combine a number of inputs x1,...,xn, and for each input we have a weight w1, . . . , wn. We combine the weighted inputs to make our prediction, by combining and adding them $$\sum_{i=1}^N x_iw_i$$ but we still have potentially thousands or hundreds of terms. Later, we’ll show how this sum can also be written as$$x^Tw$$, and instead of the individual terms, we only have two variables, the inputs x and the weights $$w$$ - now we have only two variables, and no matter how many terms we introduce, we can work with and solve the system in the same way.

Linear algebra describes systems that behaves linearly: with some input $$x$$, the function f(x) is linear if $$f(x + y) = f(x) + f(y)$$ and $$f(ax) = af(x)$$. This works well for many things: for other things we use linear operations within a larger, nonlinear system - most of the work in many optimization methods, for example, is ultimately solving linear systems, even if the model we are fitting is nonlinear. 


Linear algebra deals with matrices and vectors. A vector is a collection of variables, which we often use to describe the state of a system, such a our $$x, y, z$$ coordinates as we move (or our GPS location), or all the pixels in an image. A matrix is a collection of vectors. We can think of a matrix as a noun or a verb: as a noun, a matrix is a collection of data points, and we use linear algebra techniques like the singular value decomposition (PCA) to understand the collection. As a verb, a matrix acts on a vector: it takes a vector as an input and produces another vector as output. With square matrices, we can model some transformations on the vector like rotation.


In this section,we use a specific notation to tell apart scale, vector, and matrix variables.


#### 1.1 notation

* scalars are lowercase $$a$$
* vectors are lowercase bold $$a$$
* a matrix is a bold, capital letter $$A$$
* $$a_i$$ is the ith element of the vector $$a$$
* $$A_{ij}$$ is the $${ij}^{th}$$ element of the matrix $$A$$
* $$A_i$$ is the $$i^{th}$$ row of matrix $$A$$ (similar to MATLAB’s notation)

The size of a matrix is the number of rows and columns. A vector, unless otherwise noted, is a column. A vector is a matrix (with only one column) and a scalar is also a matrix (with only one column and only one row). 

A common thing we want to do is to solve some linear system, where $$f(x)$$ is a (linear) function of $$x$$, which we can write as $$Ax$$. We want to solve a system of linear equations, so we have some b and want to solve for x giving us a system of linear equations $$Ax = b$$. We learn how to solve these systems by eliminating variables and plugging in partial results: by the end of this section you will understand how to tell if a system has one, zero, or many possible solutions, as well as methods of solving them. Another related problem is fitting a line to a set of data points, which also involves solving a linear system.