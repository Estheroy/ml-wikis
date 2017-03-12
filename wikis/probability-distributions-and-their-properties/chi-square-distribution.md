## Chi-Square Distribution



<img src="/assets/image139.png" width="540" height="350" />


* Notation
	* $$U ∼ ChiSq(n)$$


* Interpretation
	* The Chi Square distribution with n degrees of freedom is the distribution of the sum of n squared standard normal distributions. Normal distribution is a special case of Chi-Square distribution where n = 1. The Chi Square distribution is also a special case of Gamma Distribution -  $$Gamma(\frac{n}{2}, \frac{1}{2})$$. 


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

	* Many hypothesis test statistics are approximately distributed as Chi Square Distribution.  
	* For example, we might want to conduct a chi-square before we fit our data into a linear regression model. In chi-square test for independence, we make two hypotheses about the relationship between your explanatory variables and response variable. The null hypothesis states that there is no relationship between them while the alternative hypothesis suggests that the variables are related. Based on the chi-square statistics calculated from our dataset, we can determine the relationship between our explanatory variables and response variables as well as whether we can gain more understanding on the dataset by fitting it to a linear regression model. For more information about statistical hypothesis test, you can read here.



