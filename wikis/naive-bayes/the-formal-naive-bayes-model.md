## The Formal Naive Bayes Model

![](/assets/bayesian.png)

Naive Bayes methods are a set of supervised learning algorithms based on applying Bayes’ theorem with the “naive” assumption of independence between every pair of features. Given a class variable $$y$$ and an n-dimensional feature vector with elements $$x_{1}$$through $$x_{n}$$, Bayes’ theorem states the following relationship:

$$P(y|x_{1},...,x_{n}) = \frac{P(y)P(x_{1},...,x_{n}|y)}{P(x_{1},...,x_{n})}$$

Using the naive independence assumption that

$$P(x_{i}|y,x_{1},...,x_{i-1},x_{i+1},...,x_{n}) = P(x_{i}|y)$$

for all i, this relationship is simplified to

$$P(y|x_{1},...,x_{n}) = \frac{P(y)\prod_{i=1}^{n}P(x_{i}|y)}{P(x_{1},...,x_{n})}$$

Since $$P(x_{1},...,x_{n})$$ is constant given the input, we can use the following classification rule:

$$P(y|x_{1},...,x_{n}) \propto P(y)\prod_{i=1}^{n}P(x_{i}|y)$$

$$\Rightarrow \hat{y} = argmax_{y}P(y)\prod_{i=1}^{n}P(x_{i}|y)$$

We use the categorical probabilities, or the output of our stored distributions to compute the likelihood, $$P(x_{i}|y)$$. The prior, $$P(y)$$, is just the percentage of training examples that were of class $$y$$.

