## What is Optimization

![](/assets/optimization_general.png)

In order to solve many machine learning problems, we formalize them into an optimization problem. Optimization is the process of minimizing or maximizing a function by moving the value of some dependent variable. There are two key ways to optimize a function; closed-form and sampling. Closed form methods are done by solving an explicit formula for the ideal value of the variable. Sampling methods are more numerous, but typically have the same core structure. Sampling involves repeatedly trying, checking, and adjusting. Specifically, the method is to try a set of values and then, based on how well they work, intelligently move the values in a direction likely to optimize our function. 

Some extremely famous examples of sampling techniques are **gradient descent** and inner-point methods. We’ll be covering the theory of optimization, and use gradient-descent as an example case.
The terms training, or learning, which appear ubiquitously in machine learning, are in fact usually referring to an optimization process. We call those cases “optimization” because what’s being minimized is an error function over some parameters. Optimizing in this way is equivalent to choosing some ideal parameters. In general the optimization process has three major components: a model, a loss function and an optimization function. 

