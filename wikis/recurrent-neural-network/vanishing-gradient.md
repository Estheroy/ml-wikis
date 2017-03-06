## Vanishing Gradient

Let’s take a closer look at the gradient we calculated above: Note that $$\frac{\partial s_3}{\partial s_k}$$ is a chain rule in itself! For example, $$\frac{\partial s_3}{\partial s_1}=\frac{\partial s_3}{\partial s_2}\frac{\partial s_2}{\partial s_1}$$. Also note that because we are taking the derivative of a vector function with respect to a vector, the result is a matrix (called the Jacobian matrix) whose elements are all the pointwise derivatives. We can rewrite the above gradient:

$$
\begin{eqnarray*}
\frac{\partial E_3}{\partial W} =\sum^3_{k=0}\frac{\partial E_3}{\partial \hat{y}_3}
\frac{\partial \hat{y}_3}{\partial s_3}\left(\prod^3_{j=k+1}\frac{\partial s_j}{\partial s_{j-1}}\right)\frac{\partial s_k}{\partial W}
\end{eqnarray*}
$$


It turns out tanh activation function maps all values into a range between -1 and 1, and the derivative is bounded by 1 (1/4 in the case of sigmoid) as well. You can see that the tanh and sigmoid functions have derivatives of 0 at both ends. They approach a  flat line. When this happens we say the corresponding neurons are saturated. They have a zero gradient and drive other gradients in previous layers towards 0. Thus, with small values in the matrix and multiple matrix multiplications (t-k in particular) the gradient values are shrinking exponentially fast, eventually vanishing completely after a few time steps. Gradient contributions from “far away” steps become zero, and the state at those steps doesn’t contribute to what you are learning: You end up not learning long-range dependencies. This is called the vanishing gradient problem. Vanishing gradients aren’t exclusive to RNNs. They also happen in deep Feedforward Neural Networks. It’s just that RNNs tend to be very deep (as deep as the sentence length in our case), which makes the problem a lot more common.

![](/assets/vanishing gradient problem rnn.png)

Besides truncating the error range, as described above, a common solution is to use ReLU instead of tanh or sigmoid activation functions. The ReLU derivative is a constant of either 0 or 1, so it isn’t as likely to suffer from vanishing gradients. An even more popular solution is to use Long Short-Term Memory (LSTM) or Gated Recurrent Unit (GRU) architectures. LSTMs were first proposed in 1997 and are the perhaps most widely used models in NLP today. GRU's, first proposed in 2014, are simplified versions of LSTMs. Both of these RNN architectures were explicitly designed to deal with vanishing gradients and efficiently learn long-range dependencies. Both, however, require a strong understanding or plain old RNNs, so it’s a good thing you’re reading this!