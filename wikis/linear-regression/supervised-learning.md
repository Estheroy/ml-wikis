## Supervised Learning

**Supervised learning** is the name for training a **model** on data that includes class labels for each point. Each labeled example in the **training data** is a pair \(x,y\) consisting of an input vector x and an associated output value y.

Our goal is to learn a function that, for any vector x, returns the correct label y. We use the training data to build this function, and the hope is that whatever function we find that maps our training data points to their associated label will also generalize to new points. The idea is to learn the **underlying pattern** of the data, as opposed to accidental features like noise.

When the target variable that we’re trying to predict is continuous, or ordinal, such as price and temperature, we call the learning problem a **regression problem**. When the value we are predicting takes on only a finite number of discrete values, each arbitrarily identifying an abstract class, we call it a **classification problem**.

<p align="center">
	<img src="/assets/supervised-learning1.png" />
</p>

<p align="center">
	<img src="/assets/supervised-learning2.png" />
</p>

