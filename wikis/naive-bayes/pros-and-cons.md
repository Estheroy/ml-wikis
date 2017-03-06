## Pros and Cons

#### Pros

* NBC is easy and fast to make predictions
* NBC performs well in multiclass prediction.
* When the independence assumptions holds, a Naive Bayes classifier performs extremely efficiently, that is, it needs very little data to achieve high accuracy.
* It performs well in case of categorical input variables compared to numerical variable\(s\). For numerical variable, a distribution must be assumed \(which is a strong assumption\).

#### Cons

* If the test data set contains a category which was not observed in the training data set, then the model will assign a 0 \(zero\) probability and will be unable to make a prediction. This is often known as “Zero Frequency”. To solve this, we can use a smoothing technique. One of the simplest smoothing techniques is called Laplace estimation.
* In real life, it is almost impossible that we get a set of features which are completely independent.



