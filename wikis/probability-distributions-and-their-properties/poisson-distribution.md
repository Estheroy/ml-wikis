## Poisson Distribution



<img src="/assets/image139.png" width="540" height="350" />



* Notation
	* $$T ∼ Poisson(λ)$$


* Interpretation

	* Poisson Distribution describes the probability of different number of arrivals in a given time period or the number of points in a given area. If the probability of the event is small, then poisson distribution can also be used to approximate normal distribution. 


* Type: 
	* Discrete


* Parameter(s):
	* $$\lambda$$ - The rate of an event occurs


* Probability Density Function:
	* $$f(x)=\dfrac{e^{-\lambda} \lambda^x}{x!}$$


* Range:
	* $$\lambda \in (0, \infty)$$
	* $$x \in [0, \infty)$$


* Mean:
	* $$E(T) = λ$$


* Variance:
	* $$Var(T) = λ$$


* Application:
	
	* Poisson distribution is mostly used for simulating a poisson arrival process or a poisson random scatter, which have three constraints:
		1. The number of events occurring in non-overlapping intervals are independent.
		2. The probability of exactly one event happened in a short interval is known.
		3. The probability of two or more events happen in the same short interval of time is zero.

	* Example of poisson arrival process

	Suppose we know approximately each new customer will come to a grocery per 5 minutes, two customers will not arrive at the same time, and the fact that previous arriving customer does not affect the probability of next arriving customer. Then the number of customers coming to a grocery during any fixed time period can be predicted from poisson distribution.

	* Example of poisson random scatter 

	Suppose a volume of 1000 drops of water contains 2000 bacteria, separated from each other and mixed in water. A single drop is spread uniformly over the surface of a dish. After a few days, a visible colony of bacteria appears for around each bacteria. Then we can approximate the distribution of the number of colonies that appear over the whole plate with poisson distribution. 

	* Example of poisson thinning process
	
	Continuing from the bacteria example for poisson random scatter, let’s now suppose for each bacteria, because of the limited nutrition, the colony happens with probability p for each bacteria. We can still approximate the distribution of the number of colonies that appear with the updated probability.
	

