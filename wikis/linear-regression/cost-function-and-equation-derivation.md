## Cost Function and Equation Derivation

Since we already have the linear regression equation

$$y = h(x) = \sum_{i=0}^{n}w_{i}x_{i} = \vec{w^{T}}\cdot \vec{x}$$

and a corresponding loss function

$$J(w) = \frac{1}{2}\sum_{i=1}^{m}(h(x_{i})-y^{i})^{2}$$

We can now just solve for w. This can actually be done with a closed form solution, specifically, we can use **Lagrange multipliers** to solve for w directly.

We can rewrite J\(w\) as:

$$J(w) = (Aw - y)^{T}(Aw - y)$$

Where A is the matrix whose rows are each x vector, w is the weight vector, y a column of labels corresponding to each x in A, and the entire term Aw - y, is a column vector of differences between model predictions and true labels. An element wise sum of a vector v can be written V\*V, hence the final form. This term is scalar valued, just like the original expression of J.

In this form, the function can be easily differentiated with respect to w, and solved closed form as follows:

$$D_{w}(J(w)) = D_{w}(Aw - y)^{T}(Aw - y)$$

$$D_{w}(J(w)) = D_{w}((Aw)^{T} - y^{T})(Aw - y)$$

$$D_{w}(J(w)) = D_{w}((Aw)^{T}Aw - y^{T}Aw - (Aw)^{T}y + y^{T}y)$$

$$D_{w}(J(w)) = D_{w}(w^{T}A^{T}Aw - y^{T}Aw - w^{T}A^{T}y + y^{T}y)$$

$$D_{w}(J(w)) = 2A^{T}Aw - A^{T}y -A^{T}y$$

$$D_{w}(J(w)) = 2A^{T}Aw - 2A^{T}y$$

We set the derivative to zero,

$$0 = 2A^{T}Aw - 2A^{T}y$$

$$A^{T}Aw = A^{T}y$$

$$(A^{T}A)^{-1}(A^{T}A)w = (A^{T}A)^{-1}A^{T}y$$

$$w= (A^{T}A)^{-1}A^{T}y$$

This form can can also be expressed as the pseudo-inverse of A multiplied by y

$$w = A^{\dagger}y$$

This means that for any dataset, we simply take the pseudoinverse of the features \(concatenated by a vector of ones first!\) and multiply it against the labels, and this gives us the ideal fitting parameters for our training data!

