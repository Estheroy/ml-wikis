## General Rules in Probability

#### 1.Complement Rule 


<img src="/assets/image12.png" width="187" height="100" aligh="middle"/>



The probability of the complement of A is $$P(Ā) = 1 - P(A)$$

<br><br>
#### 2.Disjoint Union Rule
	

Disjoint Union is a binary operator that combines all distinct elements of two sets while still “remembering” where each element came from. Even if the same element lies in both A and B, they will still form two distinct elements in the disjoint union of A and B.
	
* Properties:
	* A is the disjoint union of A and ∅
	* $$Ω$$ is the disjoint union of A and $$Ā$$

<br><br>
#### 3.Subset Rule


<img src="/assets/image09.png" width="187" height="100" aligh="middle"/>



A is a subset of B: $$𝐴 ⊆ 𝐵$$. The occurrence of event A indicates the occurrence of event B.


* Properties:
	* $$P(A ∪ B) = P(B)$$ which means $$A ⊆ B \rightarrow P(A ∪ B) = P(B)$$.

	This can also be read as if A is a subset of B, A union B is just B itself.
	* $$P(A ∩ B) = P(A)$$

<br><br>
#### 4.Independence Rule



<img src="/assets/image05.png" width="187" height="100" aligh="middle"/>



Two events A and B are independent if **the chance of B does not depend on whether A happen or not**. 

* Properties:
Two events A, B are independence if  $$P(𝐴 ∩ 𝐵) = 𝑃(𝐴)𝑃(𝐵)$$. 

**Note: if A or B is ∅, A and B are always independent.** 



<br><br>
#### 5.Mutually Exclusive Rule (Disjoint) 
	
	

<img src="/assets/image16.png" width="187" height="100" aligh="middle"/>



A and B are two mutually exclusive events. **The occurrence of event B indicates that the occurrence of A is impossible.**


* Properties:
	* $$𝑃(𝐴 ∪ 𝐵) = 𝑃(𝐴) + 𝑃(𝐵)$$ 
	* $$𝑃(𝐴 ∩ 𝐵) = 0$$

<br><br>
#### 6.Inclusion-Exclusion Rule 



<img src="/assets/image17.png" width="187" height="100" aligh="middle"/>



In general, $$𝑃(𝐴 ∪ 𝐵) = 𝑃(𝐴) + 𝑃(𝐵) − 𝑃(𝐴𝐵)$$ 
From the venn diagram in the left, we can see that summing of $$P(A)$$ and $$P(B)$$ will count $$P(A ∩ B)$$ twice and thus we need to subtract one $$P(A ∩ B)$$ from their sum. 
Note: Mutually exclusive events is a special case for inclusion-exclusion rule. Since for **mutually exclusive events** $$P(A ∩ B) = 0$$, $$P(A ∪ B) = P(A) + P(B)$$ 


<br><br>
#### 7.Partition Rule 



<img src="/assets/image13.png" width="187" height="100" aligh="middle"/>



A event can be partitioned into finite or countably infinite mutually disjoint events of A. 

* Properties:
	* $$A_1, A_2, ... , A_n$$ are partitions of $$A$$ if $$𝐴_𝑖𝐴_𝑗$$ = ∅ and $$A_1 ∪ A_2 ∪ … ∪ A_𝑛 = A$$


<br><br>
#### 8.Difference Rule 



<img src="/assets/image09.png" width="187" height="100" aligh="middle"/>




If outcome of A implies the occurrence of B, then P(A) ≤ P(B). The probability that B occurs and A does not occur is the difference between the probability of these two events.
* Properties:
	* $$P(B ∩ Ā ) = P(B) - P(A)$$


<br><br>
#### 9.De Morgan’s Law

De Morgan’s Law describes the effect of complement on the relationship between two events with sets operation.

* Properties: 	
	* The complement of the union of two sets is the same as the intersection of their complements.
	* The complement of the intersection of two sets is the same as the union of their complements.
	

<br><br>
#### 10.General rules for 3 or more events 



<img src="/assets/image04.png" width="191" height="184" aligh="middle"/>



* a) Inclusion-Exclusion Rule

$$P(A∪B∪C) = P(A)+P(B)+P(C)-P(AB)-P(AC)-P(BC)+P(ABC)$$


* b) Partitions
$$P(A∪B∪C) = P(ABC)+P(AB\bar{C})+P(\bar{A}BC)+P(A\bar{B}C)+P(AB\bar{C})+P(\bar{A}\bar{B}C)+P(\bar{A}B\bar{C})+P(A\bar{B}\bar{C})$$

* c) Complement
$$P(A∪B∪C) = 1-P(\bar{A}\bar{B}\bar{C})$$

		
* d) Independence
Three events A, B and C are independent if they are both **mutually independent** and **pairwise independence**. The following set of statements are sufficient to prove event A, B and C are mutually independent.
	
	* $$P(AB) = P(A)P(B)$$
	* $$P(AC) = P(A)P(C)$$
	* $$P(BC) = P(B)P(C)$$
	* $$P(ABC) = P(A)P(B)P(C)$$


