## Independent and Dependent Events

We briefly introduce independent and dependent events in previous section, and here we will talk about them in depth.


#### Independent Events

In probability, events can be independent, meaning the probability of each event is not affected by the probability of any other events.

Two events A and B are independent if their joint probability equals the product of their probabilities: $$P(A \cap B) = P(A)P(B)$$ 
For more then two events, they must be both pairwise independent and mutually independent to be considered as independent events. 
* Pairwise independent: $$P(A_m \cap A_k) = P(A_m)P(A_k)$$
* Mutually independent: $$\begin{align*}
 P(\bigcap_{i=1}^{n} A_i) = \prod_{i=1}^{n} P(A_i) \end{align*}
$$ 

###### Properties of independent events:
$$P(A|B) = P(A)$$
$$P(B|A) = P(B)$$


###### Example: Tossing
Each toss of a coin is a perfect isolated thing. The result of last toss will not affect the current toss. The chance of head is always $$50\%$$, just like any toss of the coin. So each toss is an independent event.
 
 
#### Dependent Events
Events can also be dependent, meaning the probability of each event is affected by the probability of any other events.


###### Example: Marbles in a Bag
 * Suppose we have 2 blue and 3 red marbles in a bag. What are the chanced of getting a blue marble? The chance of getting the first blue marble is $$\frac{2}{5}$$. But after taking one out the chances change. 
 * For the chance of second blue marble 
   * If we get a **red** marble in the first time, then the chance of getting a blue marble is $$\frac{2}{4}$$
   * If we get a **blue** marble in the first time, then the chance of getting a blue marble is $$\frac{1}{4}$$
 * Notice that the chance of each event depends on what happened in the previous event, and they are called dependent events.


#### Disjoint Event

Disjoint events means two events that do not occur at the same time, also known as mutually exclusive events. 

Many people will confuse independent events with disjoint events. Events are considered disjoint if they never occur at the same time while independent events will never be disjoint. Since P(B) > 0 and P(B. A) = 0, the requirement that an event be contained by A does affect the probability of B occurring, so A and B are not independent. Thus, if A and B are mutually exclusive, they are not independent.


* For example, being a freshman and being a sophomore would be considered disjoint events because an individual cannot be classified as both at the same time. 
* For example, if there is no relationship between gender and class status, then we could say that being a man and being a senior are independent events; there are some men who are seniors thus they are not disjoint events.

