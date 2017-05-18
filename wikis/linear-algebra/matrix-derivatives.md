## Matrix Derivatives

In this section I work through least squares as an example of taking the gradient. The material is also relevant later in the basis, span and nullspace wiki.


#### 3.1 Least Squares

We want to fit a line to some data points. You might have done this in high school geometry, where you think of a line as $$y = mx + b$$

and then you’re given a pair of points, and you want to find the line that goes through those points. Then you use algebra to solve for a and b. We have two values for $$y$$, which we call $$y_1$$ and $$y_2$$. We have two $$x$$ values which we call $$x_1$$ and $$x_2$$. Now we can solve for $$m$$ (the slope) by using the formula $$m = \frac{y_2 − y_1}{x_2 − x_1}$$ and after we have $$m$$ we can use the point-slope formula to find a value for $$b$$, the y-intercept.

What we’re really doing with the high school formulas is solving a system of linear equations. 
$$\bigg(  \bigg) \bigg( \bigg)  = \bigg(y_1 y_2\bigg)$$

We can rewrite this in matrix form $$Xw = y$$

and you can multiply this out to double check. Every entry of the y vector is a dot product between a data point $$x_i$$ and the weight vector $$w$$. It might be, however, that the is no solution to this system: there exists no vector $$w$$, which gives $$y$$ when multiplied by $$X$$. What we can do, however, is find the solution which makes the difference between $$Xw − y$$ as small as possible.We collect the errors in a vector $$r = Xw − y$$

now our mistakes are in this vector, $$r$$ which we call the residual (or error0, and we want to measure how big this vector is using the norm $$f(x) = \sqrt{\sum_{i=1}^nx_i^2}$$

When we apply this to data, we have a matrix $$X$$ where examples are in rows and a column vector $$y$$, and we want to find the vector $$w$$ which makes the error as small as possible

minimize $$\frac{1}{2}||y − Xw||_2$$.

The l2 norm can be written out in terms of the individual components of the residual vector

$$minimize \sqrt{\sum_{i−1}^n(y_i − x_{(i,:)}w)^2}$$

we can remove the square root by squaring the loss function, and we alsomultiply by 1) to make it cleaner later. We can get away with this because 2squaring does not change the location of the minimum. We are left with this function to solve:

$$minimize \frac{1}{2}||y − Xw||^2_2$$

Recall from calculus that we’ll be at a maximum, minimum, or saddle point when the derivative of our function is zero: in this case, we will always arrive at minimum. We first expand by multiplying out the terms

$$L(w) = ||y − Xw||^2_2 $$
$$L(w)= \frac{1}{2}(y−Xw)^T(y−Xw)$$
$$L(w)= \frac{1}{2}(y^Ty−w^T X^T y − y^T Xw + w^T X^T Xw)$$ 
 
Now, we find the derivative with respect to $$w$$
$$\nabla_wL(w)= \frac{1}{2}(0−X^Ty−X^Ty+2((X^TX)^T +X^TX))$$
$$\nabla_wL(w) = X^T y − (X^TX)w.$$

We used a lot of the same calculus rules as if we had written this out with scalars, but we have to be a little more careful because we’re dealing with matrices and vectors. Notice that the derivative is a vector,and the the same size as $$w$$. Every entry of this vector contains the partial derivative : how much the error would change if we changed just this entry of $$w$$. We call this vector of partial derivatives the **gradient.**

We can stop here with a system of linear equations $$(X^T X)w = X^T y$$ which are called the normal equations.

This system describes the solution vector $$w$$ to our linear system: unlike theoriginal system, $$Xw = y$$ which has no solution, the normal equations always have a solution.



#### 3.2 The Derivative by each data point
There’s another way we can look at the derivative, which will be useful when we get to gradient descent. We started by writing our loss in terms of the individual elements of the residual vector

$$minimize \ \sqrt{\sum^n_{i−1}(y_i − x_{(i,:)}w)^2}$$

and we can again, square it to get rid of the square root and multiply it by$$\frac{1}{2}$$

$$minimize \ \sum^n_{i−1}(y_i − x_{(i,:)}w)^2$$

which gives us the loss function as a sum over the data points.

We can take the derivative of each individual entry
$$\nabla_wL(w) =  (y_i − x_{(i,:)}w)x^T(i,:)$$


using the Chain Rule. The transpose dangling off the end is because our data points were originally rows, so $$x_{(i,:)}$$ is a row, and we transpose it to be a column. We can also sanity-check the derivative: we are adding columns the size of $$x$$, which gives us a column vector the same size as $$w$$. Each column of $$x$$ that we add in is scaled by the size of the residual: the gradient is the sum of the data points, weighed by how bad our prediction error was on each data point.