## Bayesian Methods

<br>
#### Bayesian inference and big data

The essence of Bayesian statistics is the combination of information from multiple sources. We call this data and prior information, or hierarchical modeling, or dynamic updating, or partial pooling, but in any case it’s all about putting together data to understand a larger structure. 

Big data, or data coming from the so-called internet of things, are inherently messy: scraped data not random samples, observational data not randomized experiments, available data not constructed measurements. 

So statistical modeling is needed to put data from these different sources on a common footing. I see this in the analysis of internet surveys where we use multilevel Bayesian models to use non-random samples to make inferences about the general population, and the same ideas occur over and over again in modern messy-data settings.

<br>

#### Bayesian Spam Filtering
Although Bayes’ Theorem is used extensively in the medical sciences, there are other applications. For example, it’s used to filter spam. The event in this case is that the message is spam. The test for spam is that the message contains some flagged words (like “viagra” or “you have won”). Here’s the equation set up (from Wikipedia), read as “The probability a message is spam given that it contains certain flagged words”:

$$
\begin{align*}
P(spam | words) = \frac{P(words|spam)P(spam)}{P(words)}
\end{align*}
$$

The actual equations used for spam filtering are a little more complex; they contain more flags than just content. For example, the timing of the message, or how often the filter has seen the same content before, are two other spam tests.