## Choosing K as a Hyper-Parameter

K is usually chosen by using a **validation set**, which is a subset of the training data that is kept out of training. In the case of KNN, creating a validation set reduces to restricting the points the algorithm can “see.” The points that it can’t ‘see’ are then all classified on, and their true **labels** are compared to the algorithm’s output. By running on a held-out portion of the training set, which we have labels for, we can judge the performance of various choices of K. Below is an illustration of the effects on classification boundaries between different choices of K. Notice the smoother boundary in the right case.

![](/assets/effect_of_k.png)

We decide of the best K according to the **elbow rule**. We run on the validation set many times, storing the accuracy at every run, and vary the value of K across those runs. We then plot the validation accuracies as a function of K. The elbow rule refers to the fact that there will be a point of diminishing returns on the set, which well resemble a joint on a line plot; the highest value of K before this point is the ideal K.

![](/assets/knn-example.png)

In this example, we would choose a K of 3.

