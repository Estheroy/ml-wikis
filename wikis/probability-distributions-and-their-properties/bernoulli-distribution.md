## Bernoulli Distribution



* Notation
	* $$X ∼ Bernoulli(p)$$


* Interpretation: 

	* Bernoulli Random Variable is used for study the chance of occurring of a single experiment or trial with probability $$p$$ for successful occurrence and probability $$1-p$$ for unsuccessful occurrence. Bernoulli Distribution is also a special case of binomial distribution with the number of trails = 1.


* Type: 
	* Discrete


* Parameter(s):
	* p - probability of success on a single trial
	* k - indicator for occurrence of event. ($$k = 0$$ indicates unsuccessful occurrence, $$k = 1$$ indicates successful occurrence)

  
* Probability Density Function:
	
	* a piecewise function:
		$$ f(x) = 
       \left\{
       \begin{array}{lll}
         p & \qquad k = 1 \\
         1 − p & \qquad k = 0 \\
       \end{array}
       \right.$$
       
	* a continuous function:
	$$f(k) = p ^ {x} (1 - p) ^ {1 - x} \qquad \qquad x = 0, 1$$

	
	
* Range: 
	* $$p \in [0, 1]$$
	* $$ k \in {0, 1}$$
	* $$ x \in 0,1$$


* Mean: 
	* $$E(X) = p$$


* Variance:
	* $$E(X) = p(1 - p)$$
	 

* Application:
	
	* Since Bernoulli Distribution is a special case of Binomial Distribution on a single trial, Bernoulli Distribution can be applied on any one-time trials where the probability of success and failure is fixed and known. 
	
		1. The chance of head or tail in the next coin flip given the probability of the coin flip for each side.
		2. The probability of raining today given that the weather today will be either raining or sunny
