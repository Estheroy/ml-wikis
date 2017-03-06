## Gradient Computation

The computation of the gradient of cross entropy loss function is very simple and elegant. First, we apply the chain rule here:
$$
\begin{eqnarray*}
\frac{\partial J(w)}{\partial w_j}&=&\frac{\partial J(\theta)}{\partial h_{\theta}(z)}*
\frac{\partial h_{\theta}(z)}{\partial z}*\frac{\partial x}{\partial w_j}
\end{eqnarray*}
$$
where $$\sigma(z)=h_{\theta}(x)=\frac{1}{1+e^{-z}}$$ and $$z=w\cdot x$$.

The derivative of $$J(\theta)$$ with respect to $$h_{\theta}(z)$$ is just:
$$
\frac{y^{(i)}}{h_{\theta}(z)}+\frac{y^{(i)}-1}{1-h_{\theta}(z)}
$$
The derivative of the sigmoid function, $$h_{\theta}(z)=\frac{1}{1+e^{-z}}$$ with
respect to z is just $$(1-h_{\theta}(z))h_{\theta}(z)$$

The derivative of z, the dot product, with respect to any weight $$w_j$$ is just $$x_j$$
So put those three above derivatives in the chain rule:
$$
\begin{eqnarray*}
=\left(\frac{y^{(i)}}{h_{\theta}(x)}+\frac{1-y^{(i)}}{1-h_{\theta}(x)}\right)(1-h_{\theta}(x))h_{\theta}(x)*x\\
=(y^{(i)}*(1-h_{\theta}(x))+(1-y^{(i)})*h_{\theta}(x))*x\\
=(h_{\theta}(x)-y^{(i)})*x
\end{eqnarray*}
$$

Adding the summation over all the data samples, the derivative of the error with respect to any weight $$w_j$$ is:

$$
\frac{\partial J(w)}{\partial w_j}=\sum^n_{i=1}x^{(i)}_j(h(x^{(i)})-y^{(i)})
$$
