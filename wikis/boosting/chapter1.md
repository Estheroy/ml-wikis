## What is Boosting?

Boosting is a method for combining multiple classifiers to improve the accuracy of the predictions. Methods for using multiple models are in general called ensemble methods, where each classifier has a different idea about what the mapping from **features** to **labels** should be. When predictions are made, the output of the classifiers is combined to produce the final prediction. In some methods for combining multiple classifiers, each classifier gets a vote, and the category with the most votes is the one output by the ensemble. 

<p align="center">
  <img src="/assets/image5.png" style="width:244px; height:236px;"/>
</p>
###### Boosting is a method for combining multiple classifiers

Boosting has several improvements over basic ensemble methods. First, unlike simple voting, in boosting some classifiers can have more influence over the final effect through the use of **weights**. Because most boosting methods are for classification, consider the output as being either +1 or -1 through use of the sign function. Each individual classifier is $$G_m(x)$$, and outputs either a +1 or -1. The combined decision is made through use of weights $$\alpha_m$$, where each weight is some real number corresponding to how much influence the classifier has in the final decision. At the end, this sum will either be positive or negative depending on what category the ensemble of classifiers, as a group, predicts. 

$$
G(x)=\mbox{sign} \left(  \sum_{m=1}^N \alpha_m G_m(x)  \right)
$$

If each weight, $$\alpha$$, were equal, the formula would just compute an average of all the classifiers (this would be a very vanilla ensemble method). Boosting chooses the value of the weights so that the better classifiers can contribute more to the final decision. 

With any ensemble method, we need to have classifiers which make different predictions in order to benefit from use of the ensemble. Boosting makes the individual classifiers behave differently by forcing them to focus attention on the “**harder**” to classify data points through the use of weights for each data point: a data point with more weight is more important to obtain correct classification on. In this way, boosting not only uses multiple classifiers, but tunes the individual classifiers to obtain the best performance of the entire ensemble. 

Boosting often performs well in **classification problems**, and has the advantage that there are no parameters to tune, so it’s very good “out of the box” technique. 