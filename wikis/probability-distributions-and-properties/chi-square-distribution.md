## Chi-Square Distribution



<img src="/assets/image139.png" width="540" height="350" />


* Notation
	* $$U ∼ ChiSq(n)$$


* Interpretation
	* The Chi Square distribution with n degrees of freedom is the distribution of the sum of $$n$$ squared standard normal distributions.

* Type: 
	* Continuous 


* Parameter(s):
	* $$n$$ - degree of freedom, the number of independent pieces of information in estimate. For example, to estimate the population variance, one must first estimate the population mean. Therefore, if the estimate of variance is based on N observations, then there are $$N - 1$$ degrees of freedom.


* Probability Density Function:
	* $$f(x)=\dfrac{1}{\Gamma (n/2) 2^{n/2}}x^{n/2-1}e^{-x/2}$$


* Range:
	* $$U \in (0, \infty)$$	
	* $$n \in (0, \infty)$$
	* $$x \in [0, \infty)$$
	 
	
* Mean:
	* $$E(X) = n$$


* Variance:
	* $$Var(X) = 2n$$


* Application:

	* The chi-square distribution is a special case of the gamma distribution. A chi-square distribution with $$df = n$$ is equivalent to a gamma distribution $$Gamma(x; r = \frac{n}{2}, \lambda = \frac{1}{2} )$$.
	* The chi-square distribution is also a special case of normal distributions. For example, we have a random sample taken from a normal distribution. The chi-square distribution is the distribution of the sum of these random samples squared. The degrees of freedom are equal to the number of samples being summed. In other words, the normal distribution is a special case of chi-square distribution where $$n = 1$$. Also, it is useful to note that the chi-square distributions are always right skewed. However, the greater the degrees of freedom, the more the chi-square distribution looks like a normal distribution.

	* Many test statistics are distributed along a chi-square curve and chi-square test is a useful statistical test to look at the relationship differences between categorical variables. The two common tests using the chi-square distribution are 
		* The tests of deviations of differences between theoretically expected and observed frequencies.
		* The test for independence relationship between categorical variables.

	For example, we can conduct a chi-square test before we fit our data into a linear regression model. In chi-square test for independence, we can check if our explanatory variables and response variables are correlated. If they are highly correlated, we can gain more understanding on the dataset by fitting it to a linear regression model. Otherwise, linear regression models will not be a good fit for our dataset. For more information about statistical hypothesis test, you can read <Wiki Section Link>.


