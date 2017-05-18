## Duality of Confidence Interval

There is an important **duality between confidence intervals and hypothesis tests**. We can obtain a confidence interval by inverting a hypothesis test, and vice versa.


* Theorem of the duality of confidence intervals and hypothesis tests

* Suppose that for every value $$\theta_0$$ in $$\Theta$$ there is a test at level $$\alpha$$ of the hypothesis $$H_0: \theta = \theta_0$$. Denote the acceptance region of the test by $$A(\theta_0)$$. Then the set $$C(X) = {\theta : X \in A(\theta_0)}$$ is a $$100(1-\alpha)%$$ confidence interval for $$\theta$$.


<br>

Suppose that we do a hypothesis test. Remember that the decision to reject the null hypothesis $$H_0$$ or fail to reject it can be based on the p-value and your chosen significance level (also called $$\alpha$$). If the p-value is less than or equal to $$\alpha$$, you reject $$H_0$$; if it is greater than $$\alpha$$, you fail to reject $$H_0$$.

Our decision can also be based on the confidence interval (or bound) calculated using the same $$\alpha$$. For example, the decision for a test at the $$0.05$$ level of significance can be based on the $$95\%$$ confidence interval:

* If the reference value specified in H0 lies outside the interval (that is, is less than the lower bound or greater than the upper bound), you can reject $$H_0$$.
* If the reference value specified in $$H_0$$ lies within the interval (that is, is not less than the lower bound or greater than the upper bound), you fail to reject $$H_0$$.



## How it works?


All hypothesis tests are conducted the same way. The researcher states a hypothesis to be tested, formulates an analysis plan, analyzes sample data according to the plan, and accepts or rejects the null hypothesis, based on results of the analysis.

State the hypotheses. Every hypothesis test requires the analyst to state a null hypothesis and an alternative hypothesis. The hypotheses are stated in such a way that they are mutually exclusive. That is, if one is true, the other must be false; and vice versa.

#### Steps for conducting hypothesis testing

1.Formulate an analysis plan.
* The analysis plan describes how to use sample data to accept or reject the null hypothesis. It should specify the following elements. Formulate the null hypothesis and alternative hypothesis.


2.Significance level.
* Often, researchers choose significance levels equal to 0.01, 0.05, or 0.10; but any value between 0 and 1 can be used.


3.Test method.
* Typically, the test method involves a test statistic and a sampling distribution. Computed from sample data, the test statistic might be a mean score, proportion, difference between means, difference between proportions, z-score, t statistic, chi-square, etc. Given a test statistic and its sampling distribution, a researcher can assess probabilities associated with the test statistic. If the test statistic probability is less than the significance level, the null hypothesis is rejected.


4.Analyze sample data.
* Using sample data, perform computations called for in the analysis plan.


5.Test statistic.

* When the null hypothesis involves a mean or proportion, use either of the following equations to compute the test statistic.
* $$Test \ statistic = \frac{Statistic \ - \ Parameter}{Standard \ deviation \ of \ statistic}$$
* $$Test \ statistic = \frac{Statistic \ - \ Parameter}{Standard \ error \ of \ statistic}$$
* where Parameter is the value appearing in the null hypothesis, and Statistic is the point estimate of Parameter. As part of the analysis, you may need to compute the standard deviation or standard error of the statistic. Previously, we presented common formulas for the standard deviation and standard error.
* When the parameter in the null hypothesis involves categorical data, you may use a chi-square statistic as the test statistic. Instructions for computing a chi-square test statistic are presented in the lesson on the chi-square goodness of fit test.

6.P-value.
* The P-value is the probability of observing a sample statistic as extreme as the test statistic, assuming the null hypothesis is true.


7.Interpret the results.
* If the sample findings are unlikely, given the null hypothesis, the researcher rejects the null hypothesis. Typically, this involves comparing the P-value to the significance level, and rejecting the null hypothesis when the P-value is less than the significance level.
