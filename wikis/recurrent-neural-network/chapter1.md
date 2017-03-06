## What is Recurrent Neural Network

Recurrent neural networks are a deep learning based sequence classifier.This article explains the nature and use of recurrent neural networks.
Humans don’t “reset” their thinking process constantly. For example, as you read this essay, you understand each word based on previous words you’ve read. This is true in a sentence, and also true across sentences and paragraphs; knowledge builds based on memory. For a sequence, where a later feature is dependent on an earlier one, it’s natural to use information gathered from earlier steps in the sequence to make inferences from the later.

Traditional neural networks can’t do this, and it seems like a major shortcoming. For example, imagine you want to classify what kind of event is happening at every point in a movie. It’s unclear how a traditional neural network could use knowledge gleaned from previous events in the film to inform later ones. A traditional network would attempt to apply the same computation to every frame, or a frame every second, totally agnostic to what may have occurred in previous frames. Recurrent neural networks address this issue. They are networks with internal states that persist through time, and so allow for time-dependent calculations to occur.

The idea behind RNNs is to make use of sequential information. In a traditional neural network we assume that all inputs (and outputs) are independent of each other. But for many tasks that’s a very poor assumption. If you want to predict the next word in a sentence the minimal amount you’d need to do this is a few words preceding it. RNNs are called recurrent because they perform the same task for every element of a sequence, with the output being dependent on outputs for previous elements in the sequence. Another way to think about RNNs is that they have “memory” which captures information about what has been calculated so far. In theory RNNs can make use of information in arbitrarily long sequences, but in practice they are limited to looking back only a few steps.

<img src="/assets/A rolled up RNN.png" width="300" width="190" />

###### ‘Loop’ diagram of an RNN. This is the core module that is repeated for every element in a sequence

In the above diagram, a chunk of neural network, A, looks at some input xt and outputs a value ht. A loop allows information to be passed from one step of the network to the next. These loops might make recurrent neural networks seem a bit mysterious. However, if you think carefully, it turns out that they aren’t all that different than a normal neural network. A recurrent neural network can be thought of as multiple copies of the same network, each passing a message to a successor. Consider what happens if we unroll the loop through time:

![](/assets/An unrolled RNN .png)

###### An unrolled recurrent neural network. Forward in the sequence is to the right in this diagram.

In this diagram, we see that successive data points in a sequence are all fed into the hidden layer. This layer, however, also takes an input from the previous copy of itself, and feeds output into the next copy of itself. This chain-like nature reveals that recurrent neural networks are intimately related to sequences and lists. They’re the natural deep learning architecture to use for such data. And they certainly are used! In the last few years, there has been incredible success applying RNNs to a variety of problems: speech recognition, language modeling, translation, image captioning… The list goes on.  [This fun post](http://karpathy.github.io/2015/05/21/rnn-effectiveness/) by Andrej Karpathy demonstrates what character-level language models based on RNNs are capable of.
