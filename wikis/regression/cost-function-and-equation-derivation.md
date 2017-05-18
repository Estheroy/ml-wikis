## Cost Function and Equation Derivation

Since we already have the linear regression equation: 
$$
\hat{y} = h(\vec{x})=\sum_{i=0}^{m}w_ix_i=\vec{w}\cdot \vec{x}
$$
and a corresponding cost function
$$
J(\vec{w})=\sum_{i=1}^n (h({x_i})-y_i)^2
$$

And all of the internal terms, $$x_i$$ and $$y_i$$ are just elements of the $$X$$ matrix and $$y$$ vector, we can solve for the $$w$$ that minimize $$J$$. For any dataset, a closed form solution for the ideal weights can be obtained via **direct estimation**.
For $$n$$ labels and $$m$$ constraints our model is a set of $$n$$ equations

$$
\hat{y}_i=h(\vec{x_i},\vec{w})=w_0+w_1x_{i1}+w_2x_{i2}+\dots+w_mx_{im} \quad (i=1,2,\dots,n)
$$

All of these equations can be rewritten as a single vector equation

$$
\vec{\hat{y}}= \textbf{X}\vec{w} =\begin{bmatrix} 1 & x_{11} & \dots & x_{1m}\\ 1 & x_{21} & \dots & x_{2m}\\ \vdots &  \vdots & \ddots & \vdots\\ 1 & x_{n1} & \dots & x_{nm}\end{bmatrix}\begin{bmatrix} w_0 \\ w_1 \\ \vdots \\ w_m  \end{bmatrix} = \begin{bmatrix} w_0 + w_1x_{11} + \dots + w_mx_{1m}\\ w_0 + w_1x_{21} + \dots + w_mx_{2m} \\ \vdots \\ w_0 + w_1x_{n1} + \dots + w_mx_{nm} \end{bmatrix}
$$

Therefore, we can compute **sum-squared error** directly, by taking the distance squared between the vector of predictions and the vector of true labels.

$$
J(\vec{w})=\left \| \vec{\hat{y}}-\vec{y} \right \|^2=\left \| \textbf{X}\vec{w}-\vec{y} \right \|^2
$$

The equation can be rewritten as

$$
J(\vec{w})=(\textbf{X}\vec{w}-\vec{y})^T(\textbf{X}\vec{w}-\vec{y})
$$

In this form, the function can be easily differentiated with respect to w, and solved closed form as follows. Firstly, we foil and simplify the expression

$$
J(\vec{w})= ((\textbf{X}\vec{w})^T-\vec{y}^T) (\textbf{X}\vec{w}- \vec{y}) \\ J(\vec{w})= (\textbf{X} \vec{w})^T \textbf{X}\vec{w}-\vec{y}^T\textbf{X}\vec{w}-(\textbf{X}\vec{w})^T\vec{y} +\vec{y}^T\vec{y} \\J(\vec{w})=\vec{w}^T \textbf{X}^T  \textbf{X} \vec{w} - \vec{y}^T \textbf{X} \vec{w}- \vec{w}^T \textbf{X}^T  \vec{y}  + \vec{y}^T \vec{y}
$$

When we take a derivative we get

$$
\frac{\mathrm{d} }{\mathrm{d} \vec{w}}J(\vec{w})= 2 \textbf{X}^T\textbf{X}\vec{w}-\textbf{X}^T\vec{y}-\textbf{X}^T\vec{y}\\ \frac{\mathrm{d} }{\mathrm{d} \vec{w}}J(\vec{w})=2\textbf{X}^T\textbf{X}\vec{w}-2\textbf{X}^{T}\vec{y}
$$

We set the derivative to zero to find the set of optimal weights.

$$
2\textbf{X}^T \textbf{X} \vec{w}^* - 2 \textbf{X}^T \vec{y} =0 \\\textbf{X}^T\textbf{X}\vec{w}^*=\textbf{X}^T\vec{y}\\(\textbf{X}^T\textbf{X})^{-1}(\textbf{X}^T\textbf{X})\vec{w}^*=(\textbf{X}^T\textbf{X})^{-1}\textbf{X}^T\vec{y}\\\vec{w}^*=(\textbf{X}^T\textbf{X})^{-1}\textbf{X}^T\vec{y}
$$

Where $$w*$$ is the vector of optimal regression coefficients. Notice that this method is an application of **linear least squares optimization**.
Recall that the **pseudoinverse** of the matrix $$A$$ is

$$
\textbf{A}^\dagger = (\textbf{A}^T\textbf{A})^{-1}\textbf{A}^T
$$

Therefore this form can also be expressed as the **pseudo-inverse** of $$A$$ multiplied by $$y$$

$$
\vec{w}^*=\textbf{X}^{\dagger}\vec{y}
$$

This means that for any dataset, we simply take the **pseudoinverse** of the features (concatenated with a vector of ones!) and multiply it against the labels, and this gives us the set of ideal fitting parameters for our training data.
