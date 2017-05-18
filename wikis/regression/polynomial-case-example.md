## Polynomial Regression

We can generalize the ideas that we developed previously to create a model that maps the features onto non-linear surfaces. For that purposes we add additional terms into our model equation. Let’s assume that number of features is still $$m$$, however, we can also add transformed versions of $$x_1,\dots,x_m$$ into the model. Transformed versions are $$x_1,\dots,x_m$$ taken to different integer powers. Our prediction for the ith feature constricted using an d-degree polynomial is
$$
\hat{y}_i = w_0 + w_{11}x_{i1} + w_{12} x_{i2} + \hdots +w_{1m}x_{im}+ w_{21}x_{i1}^2 + w_{22}x_{i2}^2 +\hdots+w_{2m}x_{im}^2+\dots\hdots +w_{(d-1)m}x_{im}^{d-1}+w_{d1}x_{i1}^d+w_{d2}x_{i2}^d+\hdots+w_{dm}x_{im}^d \quad (i=1,2,...,n) 
$$
The whole system of n equations can be rewritten in the matrix notation as 
$$
\begin{bmatrix}\hat{y}_1\\ \hat{y}_2 \\ \vdots \\ \hat{y}_n \end{bmatrix} = \begin{bmatrix}1 & x_{11} & x_{12} & \dots & x_{1m} & x_{11}^2 & x_{12}^2 & \dots & x_{1m}^2 & \dots\dots & x_{1m}^{d-1} & x_{11}^d & x_{12}^d & \dots & x_{1m}^d \\1 & x_{21} & x_{22} & \dots & x_{2m} & x_{21}^2 & x_{22}^2 & \dots & x_{2m}^2 & \dots\dots & x_{2m}^{d-1} & x_{21}^d & x_{22}^d & \dots & x_{2m}^d \\ \vdots & \vdots & \vdots & \ddots & \vdots & \vdots &\vdots & \ddots & \vdots & \ddots \ddots& \vdots & \vdots & \vdots & \ddots & \vdots \\1 & x_{n1} & x_{n2} & \dots & x_{nm} & x_{n1}^2 & x_{n2}^2 & \dots & x_{nm}^2 & \dots\dots & x_{nm}^{d-1} & x_{n1}^d & x_{n2}^d & \dots & x_{nm}^d \end{bmatrix} \begin{bmatrix} w_0\\ w_{11}\\ \vdots \\ w_{1m} \\ w_{21} \\ \vdots \\ w_{2m} \\ \vdots \\ \vdots \\ w_{dm} \end{bmatrix} 
$$

Notice that essentially the problem did not change from the linear case and the expression for the predicted values is still
$$
\vec{\hat{y}}= \textbf{X}\vec{w}
$$
Therefore similarly to before we define a loss function 
$$
J(\vec{w})=\left \| \textbf{X}\vec{w}-\vec{y} \right \|^2
$$
And through the means of **linear least squares optimization**, we arrive to the vector of optimal regression coefficients
$$
\vec{w}^*=(\textbf{X}^T\textbf{X})^{-1}\textbf{X}^T\vec{y} 
$$
Or equivalently
$$
\vec{w}^*=\textbf{X}^{\dagger}\vec{y}
$$
In this way, a polynomial regression is algorithmically extremely similar to a linear regression. The key difference is not in the solution, but in the formulation to the problem. If we define our X matrix to include higher order values of some features, then we can treat the problem as a linear regression problem over some variables that encode for higher order features. The solution and methods of approximation are completely identical beyond this simple extension.
