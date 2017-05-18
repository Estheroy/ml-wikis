## Concrete Example of Probabilistic Graphical Model

Probabilistic Graphical Models (PGM) are graph-based models that are used to represent probabilistic reasoning tasks. Just like any graph, a PGM is composed exclusively of a set of nodes and edges. Each node represents a random variable and each edge represents a conditional probability relationship between random variables. All of the random variables’ distributions are formally described as conditional probabilities, dependent on the connections between nodes. 

For example, consider two events, A and B. The relationship between these events can be written in the following model.


This model encodes all information about dependence of these events on each other. Moreover, we can compute its joint-probability distribution $$P(A,B)$$ to be equal to
<p>
<img class="banner" src="/assets/image9.png" />
</p>
$$P(A,B)=P(A)P(B|A)$$


In PGMs, nodes represent the random variable, a variable that can take on one of a set number of values with an associated probability. This is written as P(X = x), where the capital X is the random variable, and x is the specific value. The edges are used to represent a dependence relationship between the two random variables they connect. 

Consider the following example.
<p>
<img class="banner" src="/assets/image11.png" />
</p>


In this example we have 4 nodes to represent the relation among four discrete events. 
The node R is used to represent whether or not it rains. 
The node W is used to represent whether the grass is wet. 
The node B is used to represent whether I break my leg. 
The node A is used to represent whether I get an A in the class.
The arrow points from R to W because the probability that the grass is wet is dependent on whether it rains. Also, when we see wet grass, this changes our expectations about whether it recently rained. Since it is more likely for me to break my leg if the grass is wet, we say that those events are dependent, and so we draw an arrow from W to B. The event that you get an A in the course is independent from all the events above, we denote this event A, and there are there are no arrows pointing to or from it. In general, we draw arrows between random variables in the direction that corresponds to a conditional probability that we are sure of.

By definition, the joint probability distribution of the events above is.

$$P(R,W,B,A)=P(B|W,R,A)P(W|R,A)P(R|A)P(A)$$
Because in our model we have assumed that A is is independent of anything, $$P(R|A) =  P(R)$$, $$P(W|R,A) = P(W|R)$$ and $$P(B|W,R,A)=P(B|W,R)$$. If we substitute these expressions into the expression above we get

$$P(R,W,B,A)=P(B|W,R)P(W|R)P(R)P(A)$$

Let’s consider another example. Suppose we want to use a diagnostic system to decide if there is a fire in a building. This isn’t trivial if we have a potentially noisy sensor, as well as possibly conflicting messages of what could be going on. Let’s say the system receives a report when a large number of people are leaving the building. Suppose the report sensor is noisy, which means that there is some unreliability to it. The fire alarm will cause an evacuation, but the alarm can go off by itself, or there are some other causes that could also cause the alarm. Assume that a fire also causes smoke to rise from the building.
We can model this circumstances, and build a diagnostic system, as a PGM where the random variables correspond to the measurable events. There are many ways to build this PGM, but let’s consider the example where the events all have boolean value, which means that they can be either true or false. Our model will have six binary discrete random variables:
1. Tampering (aka $$T$$) is true when there is tampering with the alarm.
2. Fire (aka $$F$$) is true when there is a fire.
3. Alarm (aka $$A$$) is true when the alarm sounds.
4. Smoke (aka $$S$$) is true when there is visible smoke.
5. Leaving (aka L) is true if there are many people visibly leaving the building at once.
6. Report (aka R) is true if there is a report given by any of the people leaving. Report is false if there is no report of leaving.

These same 6 variables have the following conditionality relationships:
Fire ($$F$$) is conditionally independent of Tampering ($$T$$) (given no other information).
Alarm ($$A$$) depends only on both Fire ($$F$$) and Tampering ($$T$$). That is, we are making no independence assumptions about how Alarm ($$A$$) depends on its predecessors given this variable ordering.
Smoke ($$S$$) depends only on Fire ($$F$$) and is conditionally independent of Tampering ($$T$$) and Alarm ($$A$$) given whether there is a Fire ($$F$$).
Leaving ($$L$$) only depends on Alarm ($$A$$) and not directly on Fire ($$F$$) or Tampering ($$T$$) or Smoke ($$S$$). That is, Leaving ($$L$$) is conditionally independent of the other variables given Alarm ($$A$$).
Report ($$R$$) only directly depends on Leaving ($$L$$).

Given all these cases, the PGM corresponding to our task is shown below.
<p>
<img class="banner" src="/assets/image7.png" />
</p>



This PGM corresponds to a joint probability distribution

$$P(T,F,A,S,L,R)=P(R|L,A,F,T)P(L|A,F,T)P(S|F)P(A|F,T)P(F)P(T)$$

In both of the examples above example, each random variable, “tampering,” “fire,” etc. can take on one of two values, “True” and “False.” The conditional probabilities, or edges in the graph, will be defined correspondingly, for example: $$P(Alarm=True|Fire=True)$$ would be a legal probability. A conditional probability such as $$P(Report=False|Fire=True)$$ could be calculated, and has meaning, but would not correspond to any single edge in the graph. A case like P(Fire=True|Report=False)would fall almost into the same case. It is legal, meaningful, and computable, does not correspond to any single edge on our graph, and would need to be calculated differently from the above.


The above can be restated in the following terms: for any usable PGM, we have a set of probabilities, **one for every edge in the graph**, that will allow us to make direct inferences. For example, $$P(Report=False|Leaving=True)$$ will have a value between 0 and 1, and this probability value will be associated with the edge between the ‘leaving’ and ‘report’ nodes. Finding this probability is a matter of statistics, you’d have to measure how many false positives, true positives, false negatives, and true negatives occurred during some testing stage of the reporting sensor; these values then can be used to define the probability functions at this edge.
However, to ask what $$P(Alarm=True|Smoke=True)$$ is is a bit more complicated. There is no direct probability, and we would need to infer by calculation, using the rules and techniques of probability theory. 
