## Uniform Distribution


<img src="/assets/image145.png" width="540" height="350" />


* Notation
	* $$X ∼ Unif(a, b)$$


* Interpretation
	* Uniform Distribution is a symmetric probability distribution on a fixed interval. It has a constant probability for any value within the interval $${a,b}$$ and 0 elsewhere.


* Type: 
	* Discrete or Continuous


* Parameter(s):
	* $$a$$ - the minimum value allowed
	* $$b$$ - the maximum value allowed


* Probability Density Function:

	* Discrete Uniform Distribution: 
		$$f(x) = \frac{r}{b - a  + 1}$$
	* Continuous Uniform Distribution:
		$$f(x) = \frac{1}{b - a  + 1}$$


* Range:
	* $$x \in (a, b)$$


* Mean:

	* Discrete Uniform Distribution:
		$$E(X) = \frac{1}{b - a  + 1}$$
	* Continuous Uniform Distribution:
		$$E(X) =\frac{1}{b - a}$$


* Variance:
	* Discrete Uniform Distribution:
		$$Var(X) = \frac{[(b - a + 1)^2 - 1]}{12}$$
	* Continuous Uniform Distribution:
		$$Var(X) = \frac{[(b - a)^2]}{12}$$


* Application:

	* One of the most important applications of the uniform distribution is in the randomly generation of numbers. The standard uniform distribution can be used for generating random numbers on the $$(0, 1)$$ interval. Furthermore, we can apply transformations to the uniform random variable to generate random numbers in arbitrary range.
	
	* The uniform distribution defines equal probability over a given range for either a continuous or a discrete distribution, it is often used as a inference distribution in bayesian statistics when we know nothing about our target distribution.
