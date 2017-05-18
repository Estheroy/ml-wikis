## Markov Models

The is a whole class of PGM that we call the Markov Models. The Markov models fulfill the Markov property (aka memorylessness), specifically the probability of moving to the next state depends solely on the current state. For a sequence of random variables $$X_1, X_2, X_3,\dots $$in a direct chain shown below the Markov property states.

$$p(X_n|X_1, \dots,X_{n-1}) = p(X_n|X_{n-1})$$
<p>
<img class="banner" src="/assets/image5.png" />
</p>

The joint probability of all nodes can be expressed as a product, where for some random variables values $$X_1, X_2, X_3, \dots , X_n$$ 

$$p(X_1,\dots,X_N) = \sum_{n=1}^N p(X_n|X_1, \dots,X_{n-1}) = p(X_1)\sum_{n=2}^Np(X_n|X_{n-1})$$

where the random variables $$X_1 - X_n$$ can be discrete or continuous.
What this means computationally is that any vector of size $$N$$ can be assigned a probability with a Markov model of $$N$$ nodes. This technique of deciding how likely an observed sequence of values is, called inference, is the most common usage of Markov Models. Some commonly used Markov models are Markov Chains and Hidden Markov Models.
