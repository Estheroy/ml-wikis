## Model

In many machine learning problems, specifically in supervised learning settings, we want to classify data points into a certain class. Let’s assume a generic case where we have a training dataset of N data points and K distinct classes. Let’s represent each datapoint as $$x_i$$, for some i. Each datapoint is associated with a correct label $$y_i$$. A label can be seen as a point in K-dimensional space, where each element of a label is either a 0 or a 1. Thus, $$y\subset\{0,1\}^D$$, Each image xi  has D features, meaning $$x\subset\Re^D\$$.This gives us a training dataset, of shape $$(D, N)$$.

A **model** is simply a function that maps the features to class values using weights, which is 
   $${\rm M}:{\rm R}^{\rm D}\to(0,1)^{\rm K}$$

Where $$(0,1)^k$$ refers to a k-element vector whose elements are all strictly between 0 and 1.
Almost all parametric models have the form.

$$
\begin{eqnarray*}
M(x_i;W,b)=f(Wx_i+b)
\end{eqnarray*}
$$

In the above equation, we are assuming that the point x i is ordered as a single column vector of shape $$[D, 1]$$. The matrix W of size $$[K, D]$$, and the vector b of size $$[K, 1]$$ are the **parameters** of the function. The parameters in W are often called the **weights**, and b is called the **bias**.

 You’ll notice that each **weight** is multiplied against an element of x, but the **biases** are simply added on. It is natural to think of biases as just a special set of weights that aren’t multiplied in. As a result, the b term is often dropped from formal expression, even though a set of additive weights are still being applied. This is done with a slightly different formalism. To see this, consider the fact that

$$Wx+b=W'x'$$

Where W’ is W with the bias vector, b, concatenated as the rightmost column. x’ is x with a concatenated to the bottom of the vector. It is common to use this sort of “augmented” W that includes b, and “augmented” x that includes a 1, when we drop the b term in formal expression. This is, except where an explicit b is seen, the form we prefer.

![](/assets/optimization2.png)

For our example, pictured below, each class prediction is a linear function over a high dimensional space. What this means is that  $$f(Wx_i+b)=Wx_i+b$$. In practice, our models are RARELY this simple, but the point to be illustrated here does not require a complex model.

<img src="/assets/linear_output_example.png" width="700" height="300"/>

<img src="/assets/sigmoid_output_example.png" width="870" height="300"/>


The matrix multiplication $$W * x_i$$ is effectively evaluating k separate classifiers in parallel (one for each class), where each classifier is a row of W. So we can say each row of W is a set of weights for each feature of data. We have to decide at this point what prediction function to use. In the illustrated example above, we showed the case where the output of the model’s top level function is just the input, which is NEVER done in active research. Sticking with the multi-class example shown above, we must decide if the possible classes are **mutually-exclusive or not**. If know that there is only one class of object in each image, which means that the potential classes are mutually exclusive, we will use the softmax function. If it’s possible for an image to contain every class that we’re interested in, in which the classes are not mutually-exclusive, we will use an element-wise logistic function.

An advantage of parametric models is that the training data is used to learn the parameters W and b, but once the learning is complete we can discard the entire training set and only keep the learned parameters. That is because a new test data can be simply feed through the functions and classified based on the computed scores.
