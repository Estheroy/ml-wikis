## What is Bayesian Statistics

Bayesian statistics uses the mathematical rules of probability to combine data obtain from real world with prior or subjective information to yield inferences which are more precise than would be obtained by either source of information alone.

In the Bayesian interpretation, probability measures a **degree of belief**. 
Bayes’ theorem then links the degree of belief in a proposition before and after accounting for evidence. For example, suppose it is believed with $$50 \%$$ certainty that a coin is twice as likely to land heads than tails. If the coin is flipped a number of times and the outcomes observed, that degree of belief may rise, fall or remain the same depending on the results.
For proposition $$A$$ and evidence $$B$$,
* $$P(A)$$, the prior probability, is the initial degree of belief in $$A$$.
* $$P(A | B )$$, the posterior probability, is the degree of belief having accounted for $$B$$.
* The quotient $$\frac{P(B |A )}{P(B)}$$ represents the support $$B$$ provides for $$A$$.
 

<br>

#### Frequentist Statistics

The debate between frequentist and bayesian have haunted beginners for centuries. Therefore, it is important to understand the difference between the two and how does there exists a thin line of demarcation!

It is the most widely used inferential technique in the statistical world. Infact, generally it is the first school of thought that a person entering into the statistics world comes across.

Frequentist Statistics tests whether an event (hypothesis) occurs or not. It calculates the probability of an event in the long run of the experiment (i.e the experiment is repeated under the same conditions to obtain the outcome).

Here, the sampling distributions of fixed size are taken. Then, the experiment is theoretically repeated infinite number of times but practically done with a stopping intention. For example, I perform an experiment with a stopping intention in mind that I will stop the experiment when it is repeated $$1000$$ times or I see minimum $$300$$ heads in a coin toss.


<br>

#### The Inherent Flaws in Frequentist Statistics


$$20^{th}$$ century saw a massive upsurge in the frequentist statistics being applied to numerical models to check whether one sample is different from the other, a parameter is important enough to be kept in the model and variousother  manifestations of hypothesis testing. But frequentist statistics suffered some great flaws in its design and interpretation which posed a serious concern in all real life problems. 

1.p-values measured against a sample (fixed size) statistic with some stopping intention changes with change in intention and sample size. i.e If two persons work on the same data and have different stopping intention, they may get two different  p-values for the same data, which is undesirable.

 * For example: Person $$A$$ may choose to stop tossing a coin when the total count reaches $$100$$ while $$B$$ stops at $$1000$$. For different sample sizes, we get different t-scores and different p-values. Similarly, intention to stop may change from fixed number of flips to total duration of flipping. In this case too, we are bound to get different p-values.


2.Confidence Interval like p-value depends heavily on the sample size. This makes the stopping potential absolutely absurd since no matter how many persons perform the tests on the same data, the results should be consistent.

3.Confidence Intervals are not probability distributions therefore they do not provide the most probable value for a parameter and the most probable values.

These three reasons show the drawbacks of the frequentist approach and explain why there is a need for bayesian approach.

<br>

#### Difference between bayesian statistics and classical statistics


In contrast to bayesian statistics, classical statistical methods avoid prior distributions. In classical statistics, you might include in your model a predictor, or you might exclude it, or you might pool it as part of some larger set of predictors in order to get a more stable estimate. 


Also, one of the key ideas of Bayesian statistics is that "probability is orderly opinion, and that inference from data is nothing other than the revision of such opinion in the light of relevant new information.


1. In Bayesian inference you must—assign a prior distribution representing the set of values the coefficient can be. 
2. You can reproduce the classical methods using Bayesian inference: In a regression prediction context, setting the prior of a coefficient to uniform or “noninformative” is mathematically equivalent to including the corresponding predictor in a least squares or maximum likelihood estimate; setting the prior to a spike at zero is the same as excluding the predictor, and you can reproduce a pooling of predictors thorough a joint deterministic prior on their coefficients. 
3. In Bayesian inference you can do much more: by setting what is called an “informative prior,” you can partially constrain a coefficient, setting a compromise between noisy least-squares estimation or completely setting it to zero. 

It turns out this is a powerful tool in many problems, especially because in problems with structure, we can fit so-called hierarchical models which allow us to estimate aspects of the prior distribution from data.

 