## Examples of some simple Bayesian networks


#### Example 1: Weather
Here is a simple Bayes net that illustrates these concepts. In this simple world, let us say the weather can have three states: sunny, cloudy, or rainy, also that the grass can be wet or dry, and that the sprinkler can be on or off. Now there are some causal links in this world. If it is rainy, then it will make the grass wet directly. But if it is sunny for a long time, that too can make the grass wet, indirectly, by causing us to turn on the sprinkler.


<img src="/assets/image03.gif" width="400" height="400" />



When actual probabilities are entered into this net that reflect the reality of real weather, lawn, and sprinkler-use-behavior, such a net can be made to answer a number of useful questions, like, "if the lawn is wet, what are the chances it was caused by rain or by the sprinkler", and "if the chance of rain increases, how does that affect my having to budget time for watering the lawn".



#### Example 2: Asia
Here is another simple Bayes net called Asia. It is an example which is popular for introducing Bayes nets. Note, it is for example purposes only, and should not be used for real decision making.

<img src="/assets/image05.jpg" width="566" height="320›" />


It is a simplified version of a network that could be used to diagnose patients arriving at a clinic. Each node in the network corresponds to some condition of the patient, for example, "Visit to Asia" indicates whether the patient recently visited Asia. The arrows (also called links) between any two nodes indicate that there are probability relationships that are known to exist between the states of those two nodes. Thus, smoking increases the chances of getting lung cancer and of getting bronchitis. Both lung cancer and bronchitis increase the chances of getting dyspnea (shortness of breath). Both lung cancer and tuberculosis, but not usually bronchitis, can cause an abnormal lung x-ray. And so on.


