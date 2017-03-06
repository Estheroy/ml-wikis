## Likelihood Inference

As we’ve seen, the NBC involves the use of the conditional probability of a testing point given a class. At classification time, every conditional probability, given every class, is used for classification. These conditional probabilities may be extracted from the training set and stored for classification time. Alternatively, they may be calculated at classification time based on some parameters. This choice depends on the type of features being used. If the features are binary or counts, or in general, marking occurrences of some event, then we may directly store the conditional probabilities of those features.

Alternatively, and necessarily for ordinal features, we can **fit a distribution** over each feature, for each class. We can store the **parameters** for these distributions, and with them calculate the likelihoods, rather than storing the direct probabilities. This is called storing **densities**.

| Class/Word | Nigerian | Prince | collateral | CNN | Total |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Spam | 400 | 600 | 400 | 20 | 1420 |
| Not Spam | 80 | 40 | 120 | 1000 | 1240 |

Here we see an example of a simplified dataset. Because the events we are modelling as features are counts, we can store the probabilities directly.

For example, the probability of an email that contains the words ‘CNN’ and ‘Prince’ would be classified as follows

$$P(spam|prince, CNN) \approx P(prince|spam)P(CNN|spam)P(spam) = \frac{600}{1420}\frac{20}{1420}\frac{1420}{2660} = .97$$

$$P(nonspam|prince, CNN) \approx P(prince|nonspam)P(CNN|nonspam)P(nonspam) = \frac{40}{1240}\frac{1000}{1240}\frac{1240}{2660} = 1.3$$

Thus, our classifier decides that such an email is not spam.

Storing densities is essential if the features of our space are measurements, as opposed to counts. Consider the example problem of classifying different species of fish based on length, weight, color, etc. You can’t reliably ‘count’ the occurrences of these features per class, but you can take them as features with a corresponding distribution. The user has a choice of distribution to use for density storage, but typically the **normal distribution** is used.

A fuller, more formal treatment can be found **below**.

