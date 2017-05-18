## What is LSTM 

Long Short Term Memory networks – usually just called “LSTMs” – are a special kind of RNN, capable of learning long-term dependencies. They were introduced by Hochreiter & Schmidhuber (1997), and were refined and popularized by many people in following work.1 They work tremendously well on a large variety of problems, and are now widely used.

As we talked earlier, LSTMs are explicitly designed to deal with the long-term dependency problem. Remembering information for long periods of time is practically their default behavior, not something they struggle to learn! All recurrent neural networks have the form of a chain of repeating modules of a neural network. In standard RNNs, this repeating module will have a very simple structure, such as a single layer of artificial neurons with a hyperbolic tangent activation.


![](/assets/RNN repeating module.jpg)

###### The repeating module in a standard RNN contains a single layer.

LSTMs also have this chain like structure, but the repeating module has a different local structure. Instead of having a single neural network layer, there are four, interacting in a very special way.

![](/assets/RNN repeating module with 4 layers.jpg)

###### The repeating module in an LSTM contains four interacting layers.

Don’t worry about the details of what’s going on. We’ll walk through the LSTM diagram step by step later. For now, let’s just try to get comfortable with the notation we’ll be using.

![](/assets/LSTM notation.png)

In the above diagram, each line carries an entire vector, from the output of one node to the inputs of others. The pink circles represent pointwise operations, like vector addition, subtraction, and pointwise multiplication, while the yellow boxes are learned neural network layers. Lines merging denote concatenation, while a line forking denote its content being copied and the copies going to different locations.

LSTM requires a very strong understanding of neural networks, including logistic and hyperbolic tangent activation functions, and is trained with an extension to the traditional gradient descent technique. It is extremely useful to understand the workings of a standard recurrent neural network, as this article will not be explaining their architecture.
