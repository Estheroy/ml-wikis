## Bayesian Probability

Let’s take an example of coin tossing to understand the idea behind bayesian inference.

An important part of bayesian inference is the establishment of parameters and models. Models are the mathematical formulation of the observed events. Parameters are the factors in the models affecting the observed data. For example, in tossing a coin, fairness of coin may be defined as the parameter of coin denoted by $$\theta$$. The outcome of the events may be denoted by $$D$$.

It is easy to calculate that the probability of 4 heads out of 9 tosses(D) given the fairness of coin $$(\theta)$$. i.e $$P(D|\theta)$$ is $$\frac{4}{9}$$.
However, we should be more interested in knowing : Given an outcome $$(D)$$ what is the probbaility of coin being fair $$(\theta=0.5)$$

Lets represent it using Bayes Theorem:
$$
\begin{align}
P(\theta|D)= \frac{P(D|\theta) \times P(\theta))}{P(D)}
\end{align}
$$

Here, 
* $$P(\theta) $$ is the prior i.e the strength of our belief in the fairness of coin before the toss. It is perfectly okay to believe that coin can have any degree of fairness between $$0$$ and $$1$$. 

* $$P(D|\theta)$$ is the likelihood of observing our result given our distribution for $$\theta$$. If we knew that coin was fair, this gives the probability of observing the number of heads in a particular number of flips.

* $$P(D)$$ is the evidence. This is the probability of data as determined by summing (or integrating) across all possible values of $$\theta$$, weighted by how strongly we believe in those particular values of $$\theta$$.

If we had multiple views of what the fairness of the coin, then this tells us the probability of seeing a certain sequence of flips for all possibilities of our belief in the coin’s fairness.

* $$P(\theta|D)$$ is the posterior belief of our parameters after observing the evidence i.e the number of heads.


To define our model correctly , we need two mathematical models before hand. One to represent the likelihood function $$P(D|\theta)$$ and the other for representing the distribution of prior beliefs. The product of these two gives the posterior belief $$P(\theta|D)$$ distribution. Since prior and posterior are both beliefs about the distribution of fairness of coin, intuition tells us that both should have the same mathematical form.


<br>
#### Prior Probability

This distribution is used to represent our strengths on beliefs about the parameters based on the previous experience.

But, what if one has no previous experience?

Don’t worry. Mathematicians have devised methods to mitigate this problem too. It is known as uninformative priors. I would like to inform you beforehand that it is just a misnomer. Every uninformative prior always provides some information event the constant distribution prior.

The mathematical function used to represent the prior beliefs is known as beta distribution. It has some very nice mathematical properties which enable us to model our beliefs about a binomial distribution.

Probability density function of beta distribution is of the form :

$$
\begin{align}
f(x) = \frac{x^{\alpha-1}(1-x)^{\beta-1}}{B(\alpha, \beta)}
\end{align}
$$

where, our focus stays on numerator. The denominator is there just to ensure that the total probability density function upon integration evaluates to 1.
Note: $$B(\alpha, \beta)$$ is the beta function with parameters $$\alpha$$ and $$\beta$$. See Wiki Probability Distributions and their Properties for more details.

In the above notation, $$\alpha$$ and $$\beta$$ are called the shape deciding parameters of the density function. Here $$\alpha$$ is analogous to number of heads in the trials and $$\beta$$ corresponds to the number of tails. The diagrams below will help you visualize the beta distributions for different values of $$\alpha$$ and $$\beta$$.


For example, we can drawn the following inference:

1. When there was no toss we believed that every fairness of coin is possible as depicted by the flat line.
2. When there were more number of heads than the tails, the graph showed a peak shifted towards the right side, indicating higher probability of heads and that coin is not fair.
3. As more tosses are done, and heads continue to come in larger proportion the peak narrows increasing our confidence in the fairness of the coin value.
 

<br>
#### Posterior Probability
The reason that we chose prior belief is to obtain a beta distribution. This is because when we multiply it with a likelihood function, posterior distribution yields a form similar to the prior distribution which is much easier to relate to and understand. If this much information whets your appetite, I’m sure you are ready to walk an extra mile.

Let’s calculate posterior belief using bayes theorem.

Calculating posterior belief using Bayes Theorem

$$
\begin{align}
P(\theta|z, N) = \frac{P(z, N|\theta)P(\theta)}{P(z, N)} = \frac{\theta^z(1-\theta)^{N-z} \times \theta^{\alpha-1}(1-\theta)^{\beta -1}}{B(\alpha, \beta)P(z, N)}
= \frac{\theta^{z+\alpha-1} (1-\theta)^{N-z+\beta-1}}{B(z+\alpha, N-z+\beta)}
\end{align}
$$


Now, our posterior belief becomes,

$$
\begin{align}
P(\theta|z+\alpha, N-z+\beta)
\end{align}
$$


This is interesting. Just knowing the mean and standard distribution of our belief about the parameter θ and by observing the number of heads in N flips, we can update our belief about the model parameter(θ).


Lets understand this with the help of a simple example:

Suppose, you think that a coin is biased. It has a mean (μ) bias of around 0.6 with standard deviation of 0.1.

Then ,

$$\alpha= 13.8 , \beta=9.2$$

i.e our distribution will be biased on the right side. Suppose, you observed 80 heads $$(z=80)$$ in $$100$$ flips $$(N=100)$$. Let’s see how our prior and posterior beliefs are going to look:

* $$prior = P(\theta|\alpha,\beta)=P(\theta|13.8,9.2)$$

* $$posterior = P(\theta|z+\alpha,N-z+\beta)=P(\theta|93.8,29.2)$$

<br>

#### Bayes Factor
Bayes factor is the equivalent of p-value in the bayesian framework. Lets understand it in an comprehensive manner.

The null hypothesis in bayesian framework assumes $$\infty$$ probability distribution only at a particular value of a parameter and a zero probability else where. $$(M1)$$

The alternative hypothesis is that all values of θ are possible, hence a flat curve representing the distribution. $$(M2)$$


Bayesian statistics adjusted credibility (probability) of various values of $$\theta$$. It can be easily seen that the probability distribution has shifted towards $$M2$$ with a value higher than $$M1$$ i.e $$M2$$ is more likely to happen.

Bayes factor does not depend upon the actual distribution values of θ but the magnitude of shift in values of $$M1$$ and $$M2$$.

Bayes factor is defined as the ratio of the posterior odds to the prior odds,
$$
\begin{align}
Bayes' \ Factor = \frac {P(M = null|z, N)}{P(M=alternative|z, N)} : \frac{P(M = null)}{P(M = alternative)}
\end{align}
$$

To reject a null hypothesis, a $$ Bayes' \ Factor \lt \frac{1}{10}$$ is preferred.

We can see the immediate benefits of using Bayes Factor instead of p-values since they are independent of intentions and sample size.

<br>

####  High Density Interval 

High Density Interval (HDI) is formed from the posterior distribution after observing the new data. Since HDI is a probability, the $$ 95 \% $$ HDI gives the $$95 \%$$ most credible values. It is also guaranteed that $$95 \%$$ values will lie in this interval unlike Confidence Interval.

Notice that the $$95 \%$$ HDI in prior distribution is wider than the $$95 \%$$ posterior distribution. This is because our belief in HDI increases upon observation of new data.