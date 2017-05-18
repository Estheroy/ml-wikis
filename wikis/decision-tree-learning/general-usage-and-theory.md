## General Usage and Theory

#### Representing the Data

Like all **supervised** machine learning methods, decision trees must be built based on data consisting of 1) a set of vectors in **feature space**, as well as 2) a label, or target value. Both the data points and the targets can be discrete or continuous-valued. More formally, a **training set** must come in the form:


$$X$$ is defined as the input matrix of shape m x n, where $$m$$ is the number of instances in the dataset and $$n$$ is the dimensionality of the feature space. The $$i^{th}$$ row corresponds to the ith instance and the elements $$x_{i1}, x_{i2}, \dots, x_{in}$$ in the $$i^{th}$$ row are the $$n$$ features associated with the $$i^{th}$$ instance. $$y$$ is the target vector where the $$i^{th}$$ element, $$y_i$$, is the target for the $$i^{th}$$ instance.

For any supervised machine learning method, we can expect our training set to be composed of data in this form. The goal of training with a decision tree learning algorithm is to construct a tree that will return accurate targets for each previously unseen feature vectors.


#### Components of the Tree

A decision tree can be thought of as a **multiway search tree**, similar to those covered in an undergraduate data structures course. In the context of a decision tree, there are three core components to consider: 1) **non-leaf nodes**, 2) **edges**, and 3) **leaf nodes**.

In this section, we will introduce the functional components of any decision tree. Because training a **decision tree classifier** is equivalent to constructing a multiway tree, we have to consider a trained decision tree that has already been constructed to understand the core components. A later section will cover **decision tree learning algorithms** to actually construct the tree.

Recall that the **root node** of a multiway tree is the node that has no directed edges pointing to them. It is usually drawn as the topmost node from which the tree grows downward. **Leaf nodes** are, correspondingly, nodes that have no directed edges pointing out of them. A node that is not a leaf node is denoted as a **non-leaf node**. Note that, by definition, a root node is a non-leaf node. A visual representation of a multiway tree is depicted in Figure 1.




###### Figure 1: A Generic multiway tree with labelled components. The root node is the topmost node in the tree. The leaf nodes (colored green)  are the nodes with no children. The non-leaf nodes (colored brown) are nodes that are not leaf nodes. Note that a root node is regarded as a special instance of a non-leaf node.

Each non-leaf node represents a feature of the dataset to test at prediction time. For a given non-leaf node, each outward edge represents a possible value for the feature being tested. In other words, a non-leaf node can be regarded as a question about a feature value of an instance, and an outward edge can be regarded as a possible answer. Note that for every possible answer to the question represented by the non-leaf node, there must be a corresponding outward edge. The answer to the question associated with the current non-leaf node dictates which edge to traverse.  **Figure 2** illustrates this concept. 



###### Figure 2: Interpretation of Generic Decision Trees. A non-leaf node is regarded as a question. An outward edge is a possible answer to the question represented by the node that the edge stems from. 


A leaf nodes, on the other hand, represents a class that an instance belongs in. When we traverse the decision tree and arrive at a leaf node, our decision tree classifier will output the class represented by that leaf node, marking the end of the algorithm. 



#### Running the Tree 

Recall that to traverse a tree, we begin at the root node. From there, we follow a single edge and visit the node that the edge points to. We repeat the process of following edges and visiting nodes until we reach a leaf node, which marks the end of a traversal.
Classification of an input vector is performed by traversing the tree.  Each non-leaf node represents a question about some feature of the input vector. The answer to this question determines which outward edge to follow. We continue the series of 1) testing attributes for each non-leaf node and 2) following the appropriate outward edge until we hit a leaf node. 
Informally, the classification of an instance can be thought of as asking a sequence of questions that increasingly clarify which class an instance belongs to.

To apply our understanding of the core components, consider the root node, labelled ‘outlook’, of the decision tree depicted in **Figure 3** below:



###### Figure 3: Decision tree to determine whether current weather conditions are fit for a game of tennis. Each feature--outlook, humidity, and wind--is nominal.

The decision tree depicted in **Figure 3** is used to decide whether the weather on a given day is fit for tennis, based on three nominal features: outlook, humidity and wind. The root node is labelled ‘outlook,’ so the inference algorithm begins by testing the value of the ‘outlook’ feature in a given input vector. Based on the value of the ‘outlook’ feature in the input vector, we will take one of three possible paths to a subsequent child node.
Recall that every possible value for a given nominal feature must be represented by an outward edge stemming from the node corresponding to that feature. For example, because the ‘outlook’ node has only three outward edges--sunny, overcast, or rainy--the ‘outlook’ value of any given instance must take one of those three values. If our input’s ‘outlook’ value is ‘sunny,’ then the algorithm will take the leftmost edge from the root node. If the ‘outlook’ is overcast, it takes the middle edge, and if the ‘outlook’ is rain, it takes the rightmost edge. 
Let us now run classification on the decision tree described in Figure 3. Let our input vector x be composed of ‘outlook’, ‘humidity’, and ‘wind’ values, in that order.

$$
x = \{sunny, normal, weak\}
$$

We begin at the root node of the decision tree in **Figure 3**. Since the root node specifies the feature _‘outlook’_ and $$x$$ has the value _‘sunny’_, we take the leftmost edge and land on the node representing _‘humidity’_. $$x$$ has value _‘normal’_ for _‘humidity’_, so we take the right edge and land on the node containing _‘yes’_. Since this is a leaf node, we interpret the _‘yes’_ as a class instead of an attribute to test, so we are done; based on the decision tree, $$x$$ is in class _‘yes’_.


#### Decision Trees with Continuous Features

In the case where we are building a decision tree on a dataset that contains continuous features, the interpretation of the core components in a decision tree remain the almost identical. Each **leaf node** still represents one possible class an instance can belong in. Each **non-leaf node** still represents a question regarding a feature value of a given instance. However, in the continuous case, there is a slight nuance: the question asks whether the feature value of a given instance is 1) less than or 2) greater than or equal to some split point. Note that split points are learned during tree construction and will be covered in a later section. Since there are only two possible outcomes ($$\gt$$ or $$\leq$$), all nodes representing continuous features to test can only have two outward edges. **Figure 4** depicts a decision tree built decide whether a day is suitable for tennis, but assumes that the ‘humidity’ and ‘wind’ features are continuous.



###### Figure 4: Determining whether current weather conditions are fit for a game of tennis. The humidity and wind features are assumed to be continuous.

In **Figure 4** above, we see that there are two outward edges stemming from the _‘humidity’_ node. That node represents the question: “Is the humidity value of a given instance 1) greater than or 2) less than or equal to 30%?”. Note that in this question, 30% is the split point, which will be covered in a later section. So, if the humidity is less than 30%, then the right edge is traversed and the instance is classified as _‘yes’_. If the humidity is greater than or equal to 30%, then the left edge is traversed and the instance is classified as _‘no’_.
 
Suppose we have the following input that we wish to classify with the decision tree described in **Figure 4**. Let our input vector $$x$$ be composed of outlook, humidity, and wind features, in that order.

$$
x = \{sunny, 20\%, 3 mph\}
$$

We begin at the root node in **Figure 4**, which tests the _‘outlook’_ attribute. Since $$x$$ has an _‘outlook’_ value of _‘sunny’_, we take the leftmost edge, landing on the _‘humidity’_ node. Since $$x$$ has a _‘humidity’_ value of 20%, we take the right edge, because 20% is less than 30%, the split point. Thus, we land on a _‘yes’_ leaf node, and so $$x$$ is classified as _’yes’_. 

