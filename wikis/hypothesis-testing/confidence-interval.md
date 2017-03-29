## Duality of Confidence Interval

There is a important **duality between confidence intervals and hypothesis tests**. We can obtain a confidence interval by inverting a hypothesis test, and vice versa. 


* Theorem of the duality of confidence intervals and hypothesis tests

    * Suppose that for every value $$\theta_0$$ in $$\Theta$$ there is a test at level $$\alpha$$ of the hypothesis $$H_0: \theta = \theta_0$$. Denote the acceptance region of the test by $$A(\theta_0)$$. Then the set $$C(X) = {\theta : X \in A(\theta_0)}$$ is a $$100(1-\alpha)%$$ confidence interval for $$\theta$$.


<br>

Suppose that we do a hypothesis test. Remember that the decision to reject the null hypothesis $$H_0$$ or fail to reject it can be based on the p-value and your chosen significance level (also called $$\alpha$$). If the p-value is less than or equal to $$\alpha$$, you reject $$H_0$$; if it is greater than $$\alpha$$, you fail to reject $$H_0$$.

Our decision can also be based on the confidence interval (or bound) calculated using the same $$\alpha$$. For example, the decision for a test at the $$0.05$$ level of significance can be based on the $$95\%$$ confidence interval:

* If the reference value specified in H0 lies outside the interval (that is, is less than the lower bound or greater than the upper bound), you can reject $$H_0$$.
* If the reference value specified in $$H_0$$ lies within the interval (that is, is not less than the lower bound or greater than the upper bound), you fail to reject $$H_0$$.