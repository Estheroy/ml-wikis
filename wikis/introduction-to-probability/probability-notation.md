## Probability Notation

Probability theory make extensive use of **set notation**, so let us first introduce some relevant set operation notation and terminology. Suppose we have a randomized experiment that has some fixed set of possible outcomes. The set of all possible outcomes is called **outcome space**, denoted as $$\Omega$$. Think of this as a collection of all possible occurrences within our framework. Probability is based on **axioms for events**, is a formal way of assigning numbers based on the relative number of events of a certain type within the outcome space.

1. $$0 ≤ P(A) ≤ 1$$ for all event $$A ⊆ Ω$$
2. $$P(Ω)=1$$
3. $$P($$∅$$)=0$$


Probability is ultimately a measure of relative sizes of possible events. $$\Omega$$, in the above, refers to all possible occurrences within whatever framework we’re using. In the case of a die, it is the set of all possible roll outcomes, in which case it would have six elements. In the case of a game of roulette, it is the set of all possible landing outcomes, and would have thirty-eight elements. In the case of two die rolls, we can write the outcome space as all possible pairs of roll outcomes, which would consist of thirty-six possible outcomes.


These axioms have extremely simple interpretations. Axiom one just defines the nature of probability, that any event is either impossible, somewhat possible, or definite to occur. The notation $$P(Ω)$$ can be read as “The probability that an event that occurs is within the space of all possible events.” Read in this way, the probability is naturally certain. $$P($$∅$$)$$ can be read as “The probability that something outside the space of all possible events occurs.” Intuitively, this should have a probability of 0.


The first axiom can be read as “any event within the space of possible outcomes has a probability between 0 and 1.” This just says that a probability can only have those values. If there is a set of events that all fall into the category A, and those events encompass half of all possible outcomes, then the $$P(A) = 0.5$$. Probability for events is always proportional in this way.


* Basic Set Notation Reference Table


|   Notation  | Meaning | 
|---------|:--:|
|   ∅   |empty set - impossible event | 
|$$Ω$$|outcome space - certain event|
|$$𝐴∪𝐵$$| A union B, A or B|
|$$𝐴∩𝐵$$ or $$AB$$|A intersect B, A and B|
|$$A^c$$ or $$Ā$$|A’s complement, Not A|

