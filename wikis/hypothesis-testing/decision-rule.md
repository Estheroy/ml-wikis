## Decision Rule

#### Critical value approach

In hypothesis testing, a critical value is a point on the test distribution that is compared to the test statistic to determine whether to reject the null hypothesis. If the absolute value of your test statistic is greater than the critical value, you can declare statistical significance and reject the null hypothesis. Critical values correspond to $$\alpha$$, so their values become fixed when you choose the test's $$\alpha$$.


Here we have an example concerning the mean grade point average, suppose we take a random sample of $$n = 15$$ students majoring in mathematics. Since $$n = 15$$, our test statistic $$t^*$$ has $$n - 1 = 14$$ degrees of freedom. Suppose we set our significance level $$\alpha$$ at 0.05, so that we have only a $$5\%$$ chance of making a Type I error.


##### Examples for critical value approach

* Critical value for right-tailed test
* The critical value for conducting the right-tailed test $$H_0$$ : $$\mu = 3$$ versus $$H_A$$ : $$\mu > 3$$ is the t-value, denoted $$t_{\alpha, n-1}$$, such that the probability to the right of it is $$\alpha$$. It can be shown using either statistical software or a t-table that the critical value $$t_{0.05,14}$$ is 1.7613. That is, we would reject the null hypothesis $$H_0$$ : $$\mu$$ = 3 in favor of the alternative hypothesis $$H_A$$ : $$\mu$$ > 3 if the test statistic $$t^*$$ is greater than 1.7613.


* Critical value for right-tailed test
* The critical value for conducting the left-tailed test $$H_0$$ : $$\mu = 3$$ versus $$H_A$$ : $$\mu < 3 $$ is the t-value, denoted $$-t_{\alpha, n-1}$$ , such that the probability to the left of it is α. It can be shown using either statistical software or a t-table that the critical value $$-t_{0.05,14}$$ is -1.7613. That is, we would reject the null hypothesis $$H_0$$ : $$\mu$$ = 3 in favor of the alternative hypothesis $$H_A$$ : $$\mu$$ < 3 if the test statistic $$t^*$$ is less than -1.7613.



* Critical value for right-tailed test
* There are two critical values for the two-tailed test $$H_0$$ : $$\mu = 3$$ versus $$H_A$$ : $$H_A: \mu \neq 3 $$ — one for the left-tail denoted $$-t_{α/2, n - 1}$$ and one for the right-tail denoted $$t_{α/2, n - 1}$$. The value $$-t_{α/2, n - 1}$$ is the t-value such that the probability to the left of it is $$\frac{\alpha}{2}$$, and the value $$t_{α/2, n - 1}$$ is the t-value such that the probability to the right of it is $$\frac{\alpha}{2}$$. It can be shown using either statistical software or a t-table that the critical value $$-t_{0.025,14}$$ is -2.1448 and the critical value $$t_{0.025,14}$$ is 2.1448. That is, we would reject the null hypothesis $$H_0$$ : $$\mu = 3$$ in favor of the alternative hypothesis $$H_A$$ : $$\mu \neq 3$$ if the test statistic $$t^*$$ is less than -2.1448 or greater than 2.1448:

#### P-value approach

The P-value approach involves determining "likely" or "unlikely" by determining the probability — assuming the null hypothesis were true — of observing a more extreme test statistic in the direction of the alternative hypothesis than the one observed.

* If the P-value is small, say less than (or equal to) $$\alpha$$, then it is "unlikely."
* If the P-value is large, say more than $$\alpha$$, then it is "likely."


If the P-value is less than (or equal to) $$\alpha$$, then the null hypothesis is rejected in favor of the alternative hypothesis. And, if the P-value is greater than $$\alpha$$, then the null hypothesis is not rejected.


Here, we have four steps to use the P-value approach to make the decision for hypothesis test.

1. Specify the null and alternative hypotheses.
* Using the sample data and assuming the null hypothesis is true, calculate the value of the test statistic. Again, to conduct the hypothesis test for the population mean $$\mu$$, we use the t-statistic $$t^∗ = \frac{\bar{x}−\mu}{\frac{s}{\sqrt{n}}}$$ which follows a t-distribution with $$n - 1$$ degrees of freedom.

2. Using the known distribution of the test statistic, calculate the P-value.
* If the null hypothesis is true, what is the probability that we will observe a more extreme test statistic in the direction of the alternative hypothesis than we did?


3. Set the significance level, $$\alpha$$.
* $$\alpha$$ is the probability of making a Type I error to be small and the common value for $$\alpha$$ are 0.01, 0.05, or 0.10.


4. Compare the P-value to $$\alpha$$.
* If the P-value is less than (or equal to) $$\alpha$$, reject the null hypothesis in favor of the alternative hypothesis. If the P-value is greater than $$\alpha$$, do not reject the null hypothesis.


#### Examples for p-value approach

In our example concerning the mean grade point average, suppose that our random sample of $$n = 15$$ students majoring in mathematics yields a test statistic $$t^*$$ equaling 2.5. Since $$n = 15$$, our test statistic $$t^*$$ has $$n - 1 = 14$$ degrees of freedom. Also, suppose we set our significance level $$\alpha$$ at 0.05, so that we have only a 5% chance of making a Type I error.

* P-value approach for right-tailed test
* The P-value for conducting the right-tailed test $$H_0 : \mu = 3$$ versus $$H_a : \mu \gt 3$$ is the probability that we would observe a test statistic greater than $$t^* = 2.5$$ if the population mean μμ really were 3. Recall that probability equals the area under the probability curve. The P-value is therefore the area under a $$t_n - 1 = t_14$$ curve and to the right of the test statistic $$t^* = 2.5$$. It can be shown using statistical software that the P-value is 0.0127.
* The P-value, 0.0127, tells us it is "unlikely" that we would observe such an extreme test statistic $$t^*$$ in the direction of $$H_a$$ if the null hypothesis were true. Therefore, our initial assumption that the null hypothesis is true must be incorrect. That is, since the P-value, 0.0127, is less than $$\alpha$$ = 0.05, we reject the null hypothesis $$H_0 : \mu = 3$$ in favor of the alternative hypothesis $$H_a : \mu \gt 3$$.
* Note that we would not reject $$H_0 : \mu = 3$$ in favor of $$H_a : \mu \gt 3$$ if we lowered our willingness to make a Type I error to $$\alpha = 0.01$$ instead, as the P-value, 0.0127, is then greater than $$\alpha$$ = 0.01.



* P-value approach for left-tailed test
* The P-value for conducting the left-tailed test $$H_0 : \mu = 3$$ versus $$H_a : \mu \lt 3$$ is the probability that we would observe a test statistic less than $$t^* = -2.5$$ if the population mean $$\mu$$ really were 3. The P-value is therefore the area under a $$t_n - 1 = t_14$$ curve and to the left of the test statistic $$t^* = -2.5$$. It can be shown using statistical software that the P-value is 0.0127.
* The P-value, 0.0127, tells us it is "unlikely" that we would observe such an extreme test statistic $$t^*$$ in the direction of $$H_a$$ if the null hypothesis were true. Therefore, our initial assumption that the null hypothesis is true must be incorrect. That is, since the P-value, 0.0127, is less than $$\alpha = 0.05$$, we reject the null hypothesis $$H_0 : \mu = 3$$ in favor of the alternative hypothesis $$H_a : μ \lt 3$$.
*Note that we would not reject $$H_0 : \mu = 3$$ in favor of $$H_a : μ \lt 3$$ if we lowered our willingness to make a Type I error to $$\alpha = 0.01$$ instead, as the P-value, 0.0127, is then greater than $$\alpha = 0.01$$.



* P-value approach for two-tailed test
* The P-value for conducting the two-tailed test $$H_0 : \mu = 3$$ versus $$H_a : \mu \neq 3$$ is the probability that we would observe a test statistic less than -2.5 or greater than 2.5 if the population mean $$\mu$$ really were 3. That is, the two-tailed test requires taking into account the possibility that the test statistic could fall into either tail (and hence the name "two-tailed" test). The P-value is therefore the area under a $$t_n - 1 = t_14$$ curve to the left of -2.5 and to the right of the 2.5. It can be shown using statistical software that the P-value is 0.0127 + 0.0127, or 0.0254.
* Note that the P-value for a two-tailed test is always two times the P-value for either of the one-tailed tests. The P-value, 0.0254, tells us it is "unlikely" that we would observe such an extreme test statistic $$t^*$$ in the direction of $$H_a$$ if the null hypothesis were true. Therefore, our initial assumption that the null hypothesis is true must be incorrect. That is, since the P-value, 0.0254, is less than $$\alpha$$ = 0.05, we reject the null hypothesis $$H_0 : \mu = 3$$ in favor of the alternative hypothesis $$H_a : \mu \neq 3$$.
* Note that we would not reject $$H_0 : \mu = 3$$ in favor of $$H_a : \mu \neq 3$$ if we lowered our willingness to make a Type I error to $$\alpha = 0.01$$ instead, as the P-value, 0.0254, is then greater than $$\alpha$$ = 0.01.