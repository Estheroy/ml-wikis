## Matrix Operations

There are many operations we can perform on a matrix, some are similar to what we would do with scalars, but other operations (like multiplication) behave differently than their scalar counterpart.

#### 2.1 Addition and Subtraction
These operations are defined element wise: $$A − B$$ has in each entry $$A_{ij} − B_{ij}$$. Notice that for a scalar, this is exactly the same as addition and subtraction we’d do with integers.


#### 2.2 Transpose
The transpose changes the shape of a matrix, by switching rows and columns, so that element $$A_{ij}$$ goes to location $$A_{ji}$$ in the transpose $$A^T$$ . The transpose of a vector (column) is a row.

#### 2.3 Norm
Another useful notion (particularly in the later sections) is the norm, which is a way to measure the length of a vector. One way is to take every element in the vector, squares it, compute the sum, and then the square root. The norm is written $$||a||$$. There are other norms possible, and which occur in machine learning: for example, we could also sum the absolute values of a vector. To tell apart these norms, additional notation is used, for example $$||a||_2$$ (squared - known as the l2 norm ) vs $$||a||_1$$ (absolute value - known as the l1 norm).

#### 2.4 Dot Product
With vectors $$a$$ and $$b$$, there are a few ways to define the dot product. The first is $$a^T b = \sum_i a_i \times b_i$$ from this definition, we can immediately see that the dot product makes no sense if the vectors are not the same size. Another way to define the dot product is $$||a||||b||cosθ$$ the length of each vector, times the angle between them. From the second definition, we can see that if two vectors are perpendicular (have an angle of 90 degrees between them), the dot product is zero because the cosine of 90 is $$0$$ - we use the term **orthogonal** for perpendicular vectors.


One thing we often do is try to figure out what side of a line a vector is on (above or below). Start with two vectors $$w$$ and $$x$$: we want to use $$w$$ to define the line (we call this the weight vector), and $$x$$ will be a point, and we want to see what side of the line it is on. The boundary is actually perpendicular to the weight vector $$w$$. For example, let’s say we wanted to see if our point was to the left, or right of the y-axis. Our weight vector has to be perpendicular, so we use the vector $$[ 1 \ 0 ]$$. This vector picks up the $$x$$ coordinate of a vector, and if it’s positive we’re on the right, and if it’s negative, we’re to the left. For a point which is on the y-axis, the $$x$$ coordinate is zero: we are exactly on the boundary. Now in general, we can use any $$w$$, which has the effect of rotating the line. 

The dot product also relates to trigonometry: this is by design, the idea oflinear is to extend your ideas of geometry to higher-dimensional spaces. An anexample, with two vectors, we can calculate the distance between them usingsubtraction, by subtracting $$c = b − a$$. In two dimensions, we can also solve thisanother way, by noticing that these form the sides of a triangle - the length ofeach side of the triangle is the length of each side, for which we use the norm. The norm can also be written as the dot product $$\sqrt{a^Ta}$$.

Because this might not be a right triangle, we use the law of cosines.
$$||c|| = ||a|| + ||b|| − 2 \times ||a|| ||b|| cos \theta $$
$$(c^Tc)^2 =(a^Ta)^2 +(b^Tb)^2 −2\ times||a||||b||cos \theta$$
$$c^Tc = a^Ta + b^Tb^2 − 2 \times||a||||b||cos \theta$$
$$c^Tc=a^Ta + b^Tb^2 −2a^Tb$$
$$c^Tc = (a − b)^T (a − b)$$
Now we have $$c$$ expressed in terms of the dot products of $$a$$ and $$b$$. 

#### 2.5 Multiplication
Matrix multiplication can be defined from dot product. When multiplying $$AB = C$$, each element $$C_{ij}$$ is the dot product of row $$i$$ of $$A$$ and column $$j$$ of $$B$$ - from this, immediately we can see that matrix multiplication is only defined if the dimensions are the same - if each element is the same size. 

There are matrix - vector products, matrix -matrix products, and vector- vector products. Multiplying two vectors is the same as the dot product!

Matrix multiplication is **NOT associative**. When multiplying scalars, $$ab = ab$$, but in general for matrices, $$AB$$ is not equal to $$BA$$. 

As in the introduction, we can use a matrix to represent a linear function, $$f(x) = Ax$$. The size of the matrix tells us how the function works. For example, if $$A$$ is an $$n \times 1$$ matrix of ones, the function $$Ax$$ computes the sum of every element in $$x$$. If $$A$$ is square, the output is the same size as the input. There are some special matrices of this form, such as rotations.

#### 2.6 Identity
For a scalar, we have a special number 1, so that any scalar $$1x = x$$. For matrix multiplication we have a similar special matrix, the identity matrix $$I$$, which has ones on the diagonal, and zeros everywhere else.
$$\begin{bmatrix}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1 
\end{bmatrix}$$

#### 2.7 Inverse
For a scalar, we also have an inverse $$x\frac{1}{x} = 1$$ where 1 is the inverse of $$x$$: $$x$$ xmultiplying by the inverse gives the identity.

For matrices, we can describe the inverse in the same way, using $$A'$$ todescribe the inverse matrix. Again, as before, multiplying by the inverse gives the identity, in this case, it gives us the identity matrix. If we had the inverse, we could solve a system of linear equations very simply, by left-multiplying both sides by the inverse: 

$$Ax = b$$
$$A′Ax = A′b$$
$$x = A′b$$

The inverse of a matrix may not exist, in which case we can use the pseudoinverse, a matrix which has some, but not all properties of the inverse.