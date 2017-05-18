## Why Support Vectors

Writing our classifier as a function of some training vectors, plus their associated alpha values, allows for interesting additional tricks. We have changed the logic of the problem, as well as the logic of the classifier. Instead of learning and using a weight vector, we’re learning a set of alphas, storing and using the set of points associated with those alphas. 

It is important to remember that the dot product is a similarity measure for vectors. The dot product of two vectors tells you how ‘similar’ they are.

The dual form classifier can be seen, then, as taking a new point to be classified, computing all the similarity values between that point and all the support vectors, and weighing those similarity by class and importance, and summing those weighed values.

Because we’re writing our classifier as a function over a set of **dot products**, we can leverage some mathematical facts that add an incredible amount of depth and versatility to SVM methods. We can replace the dot-product in our formulation with a Kernel function, which allow us to extend SVMs to non-linear pattern problems. This is called kernel SVM, and is treated in depth in the **Kernel SVM wiki**.