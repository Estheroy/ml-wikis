## How it works?

Here we have the generic form of Bayes theorem

$$P(C|x) = \frac{P(x|C)P(C)}{P(x)}$$

Let **x** be a vector composed of N elements, corresponding to N features in a dataset. For any new point, Bayes theorem allows us to calculate the probability of a certain class, P\(C\|**x**\), given P\(C\), P\(**x**\), and P\(**x**\|C\). Technically, these four terms are called the **posterior**, **prior**, **evidence**, and **likelihood**, respectively. Typically the likelihood, P\(x\|C\), is expressed as a joint probability, as in

$$P(C|x_{1},x_{2},x_{3},x_{4},...,x_{n}) = \frac{P(x_{1},x_{2},x_{3},x_{4},...,x_{n}|C)P(C)}{P(x_{1},x_{2},x_{3},x_{4},...,x_{n})}$$

However, because of our naive assumption, this term is replaced with a product of probabilities,

$$P(C|x_{1},x_{2},x_{3},x_{4},...,x_{n}) = \frac{P(x_{1}|C)P(x_{2}|C)P(x_{3}|C)P(x_{4}|C)...P(x_{n}|C)P(C)}{P(x_{1},x_{2},x_{3},x_{4},...,x_{n})}$$

The evidence, P\(**x**\), is a term that we can omit, as it is a normalization constant that does not change the outcome of our classifier. P\(C\) is the prior probability of our class, or more specifically, the percentage of training examples that are of class C. Taking these together, we come to the following expression to calculate the probability of a class given a datapoint.

$$P(C|x) = P(x_{1}|C)P(x_{2}|C)P(x_{3}|C)P(x_{4}|C)...P(x_{n}|C)P(C)$$

The NBC classifier computes this term for every class, and the classification rule is to return the class that maximizes this probability. The naive Bayes classifier is a **MAP**, or maximum a posteriori, based method, in that the classifier returns the class with the highest **likelihood** probability.

