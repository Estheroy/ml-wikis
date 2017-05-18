## Wiki Title

#### Wiki Section title ####

Make sure you follow the same formatting from Google doc. (bolding etc.)

#### How to add image & Set image size ####

![](/assets/Lorem.jpg)
<img src="/assets.Lorem.jpg" width="200" height="300" />

###### Use title 6 for image description

#### Mathematical Formula ####

Write all the mathematical formula in Latex.

Examples:
$$ y = x $$
$$P(C=1|x)=\sigma(w_0+w_1x_1+w_2x_2+w_3x_3+\cdots w_dx_d)=\sigma(w\cdot x)$$, where
$$w=[w_0,w_1,\cdots,w_d]$$ and $$ x=[1,x_1,x_2,\cdots,x_d]$$
$$
\begin{eqnarray*}
J(\theta)=-\sum_{i}(y^{(i)}\log(h_{\theta}(x^{(i)}))+(1-y^{(i)})\log(1-h_{\theta}(x^{(i)})))
\end{eqnarray*}
$$


#### Useful Syntax for Markdown ####


- Headings

    - # This is an h1 tag
    - ## This is an h2 tag
- Blockquote

    - > This sentence is in a shaded block
- Bold Text

    - **This is bold text**
    - __This is bold text__
- Italics Text

    - *This is italics text*
    - _This is italics text_
- Both italics and bold Text

    - ***This is italics text***
    - **_This is italics text_**
- Unordered Lists

    - One layer

        - * Item 1
        - * Item 2
        - * Item 3
    - Multi-layer

        - * Item 1

            - * Sub-item 1
            - * Sub-item 2
- Ordered Lists

    - 1.Item 1
    - 2.Item 2
    - 3.Item 3
- Links

    - Inline links

        - [link texts](url)
    - Reference links

        - [link texts][tag for the link]
        - [tag for the link]: url
- Images

    - Inline Images

        - ![alt text](url)
    - Reference Images

        - ![alt text][tag for the link]
        - [tag for the link]: url
- New lines breakdown

    - Use two spaces at the end of the sentence to force markdown break line
