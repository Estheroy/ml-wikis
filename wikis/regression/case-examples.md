## Case Examples

Let’s consider a simple case when our task is to fit one variable to one label. We shall construct the matrix of features and concatenate a vector of ones to it, and write a form for the vector of labels and the vector of weights. For our problem they will look like this

$$
\textbf{X}=\begin{bmatrix}1 & x_1\\ 1 & x_2\\ \vdots & \vdots\\ 1 & x_n\end{bmatrix}\vec{y}=\begin{bmatrix}y_1 \\ y_2  \\ \vdots  & y_n\end{bmatrix}\vec{w}=\begin{bmatrix}w_0 \\ w_1\end{bmatrix}
$$

where $$n$$ is the sample size. We find the optimal weights from the expression.

$$
\vec{w}^*=\textbf{X}^{\dagger}\vec{y}
$$

The plot below shows the scatter plot of the data and the line $$y= w_0 +w_1x$$

<p>
<img class="banner" src="/assets/image11.jpg" />
</p>


Notice that the line has about equal amount of data points above and below it. This indicates that the model is successful. Because the line has a positive slope we can conclude that the label and the feature have a **positive correlation** (as feature increases, the label also increases). The converse is true if the slope of the line is negative.


Let’s extend the number of features. We have two features $$x1$$ and $$x2$$ which describe the label $$y$$. A scatter plot in 3D for such data is shown below.

<p>
<img class="banner" src="/assets/image36.jpg" />
</p>


Therefore we can construct the matrix X which is defined as

$$
\textbf{X}=\begin{bmatrix}
1 & x_{11} & x_{21}\\
1 & x_{12} & x_{22}\\
\vdots & \vdots\\ 
1 & x_{1n} & x_{2n}
\end{bmatrix}
$$

Where we have 3 columns because we have $$3-1=2$$ features. 
The vector of optimal weights $$w$$ is still

$$
\vec{w}^*=\textbf{X}^{\dagger}\vec{y}
$$

This equation will yield a 3-entry column vector $$w^*$$. 

$$
\vec{w}^*=\begin{bmatrix} w_0^* \\ w_1^* \\ w_2^* \end{bmatrix}
$$

Therefore our linear surface of best fit is 

$$
y=w_0^*+w_1^*x_1 + w_2^*x_2
$$

This graph below shows a dataset of two features, $$x_1$$ and $$x_2$$ plotted against their true labels $$y$$. Each point is plotted as a red dot. The best fitting linear surface, given by the weights $$w_0$$, $$w_1$$, and $$w_2$$ is plotted over a range of values to show how our model would predict any point along this range.

<p>
<img class="banner" src="/assets/image16.jpg" />
</p>


The following graphs show this same image from different perspectives. Note how the surface lines up with the direction of greatest variance.


<p>
<img class="banner" src="/assets/image30.jpg" />
</p>


<p>
<img class="banner" src="/assets/image31.jpg" />
</p>






