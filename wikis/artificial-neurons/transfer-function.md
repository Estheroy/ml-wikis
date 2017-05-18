## Transfer Function

All artificial neurons have **weights**, which are determined during model training stage. For this article, we are concerned only with what the AN does with a set of weights, not with how those weights might be calculated or learned. Assume, for all cases in this article, that an ideal set of weights has already been found. Consider seeing our introduction to machine learning for a fuller treatment.

**Weights** are a set of stored internal scalars that are linearly combined with an input vector. If our vector is in some feature space, then a set of scalars can be used to define a **hyperplane** in that feature space. Specifically, the definition of a hyperplane is a set of points x that satisfy:

$$
\vec{\mathbf{w}} \cdot \vec{\mathbf{x}} + b = 0
$$

where weights, $$W$$, is a set of parameters being multiplied against a vector in feature space, and b is an offset bias, which should just be seen as an additional, but slightly special, weight.

Artificial neurons work on the concept of a **decision boundary**. ANs store an internal set of weights, W and b. Any particular set of weights will correspond to a specific decision boundary. The AN takes a vector, x, as an argument, and calculates how far that vector is from the decision boundary, as well as in what direction. The transfer function is the process of performing that calculation.

<p align="center">
  <img src="/assets/image12.png" style="width:333px; height:300px;"/>
</p>
###### Decision Boundary(Red) separates two classes (Blue and Green)

The artificial neuron computes whether a datapoint is above or below the decision boundary by simply substituting the datapoint, $$x$$, into the **transfer function** $$w*x + b$$. $$W$$ and $$b$$ here are the internal stored parameters. The location of the point with respect to the decision boundary is determined by two things, the **sign** and the **magnitude** of the transfer function evaluated at the point.

The **sign of the transfer function** output indicates whether the point is above or below the decision boundary. The absolute value of the transfer function for some point is proportional to the distance from that point to the decision boundary. In this way, we can encode the location of the point with respect to the boundary with a single scalar, the output of the transfer function.

The **transfer function output** for a point is fed into the **activation function**, which can be one of many possible functions, depending on user choice.
<p align="center">
  <img src="/assets/image11.png" />
</p>