---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Week 7

## Subspace

$$
\ker(A) = \set{\vec{x}\in\R^n : A\vec{x}=\vec{0}}
$$

To find a basis for $\ker(A)$:

1. Find $\operatorname{rref}(A)$.
2. Get the solution set.
3. Write the solution as a span of vectors.
4. Then, the vectors in the span are the basis of $W$.

$$
\begin{align*}
\operatorname{Im} &= \set{A\vec{x}: \vec{x}\in\R^n}&
\quad A = \begin{pmatrix}
    | & & | \\
    \vec{v}_1 & \cdots & \vec{v}_2 \\
    | & & |
\end{pmatrix} \\
&= \operatorname{span}\set{\vec{v}_1,\dots,\vec{v}_2}
\end{align*}
$$

To find a basis for $\operatorname{Im}(A)$:

1. Find $\operatorname{rref}(A)$.
2. Then, $\set{\vec{v}_i}$ corresponding to the pivot are the basis for $\operatorname{Im}(A)$.

<div><box-eg>

Given a set of a hundred vectors $\set{\vec{v}_1, \ldots, \vec{v}_{100}}$ in $\R^5$. Find its basis.

First, put the vectors in in a vector $A$:

$$
A = \begin{pmatrix}
    | & & | \\
    \vec{v}_1 & \cdots & \vec{v}_2 \\
    | & & |
\end{pmatrix}
$$

Then, do Gaussian to get its (reduced) row echelon form. Let's say there are pivots in columns one, three, and 37:

$$
\operatorname{rref}(A) = \begin{pmatrix}
    1 & & 0 & & 0 & \\
    0 & & 1 & & 0 & \\
    0 & \cdots & 0 & \cdots & 1 & \cdots\\
    0 & & 0 & & 0 & \\
    0 & & 0 & & 0 & \\
\end{pmatrix}
$$

Then, the corresponding vectors in $A$
$$
\set{\vec{v}_1, \vec{v}_3, \vec{v}_{37}}
$$

is a basis of $\set{\vec{v}_1, \ldots, \vec{v}_{100}}$.

</b-eg></div>

<div><box-note>

$$
\ker(A) = \set{\vec{x}\in\R^n : A\vec{x} = \vec{0}} \\
\operatorname{span}\set{\vec{v}_1, \ldots, \vec{v}_n} =
\operatorname{Im}\begin{pmatrix}
    | & & | \\
    \vec{v}_1 & \cdots & \vec{v}_n \\
    | & & |
\end{pmatrix} \\
A\vec{x} = \sum_{i=1}^n x_i\vec{v}_i
$$

</b-note></div>

<div><box-eg>

$$
\begin{align*}
    W &= \operatorname{span}\Set{
        \begin{pmatrix}
            1 \\ 1 \\ 1
        \end{pmatrix},
        \begin{pmatrix}
            2 \\ 3 \\ 1
        \end{pmatrix},
        \begin{pmatrix}
            3 \\ 4 \\ 2
        \end{pmatrix},
        \begin{pmatrix}
            0 \\ 1 \\ 1
        \end{pmatrix}
    } \\
    &= \operatorname{Im}\begin{pmatrix}
        1 & 2 & 3 & 0 \\
        1 & 3 & 4 & 1 \\
        1 & 1 & 2 & 1
    \end{pmatrix} \in\R^3
\end{align*}
$$

*Also note here $W$ must be linearly dependent because there are four vectors in $\R^3$.*

To find basis of $W$, do Gaussian on the image:

$$
\operatorname{rref}\begin{pmatrix}
    1 & 2 & 3 & 0 \\
    1 & 3 & 4 & 1 \\
    1 & 1 & 2 & 1
\end{pmatrix} = \begin{pmatrix}
    \boxed{1} & 0 & 1 & 0 \\
    0 & \boxed{1} & 1 & 0 \\
    0 & 0 & 0 & \boxed{1}
\end{pmatrix}
$$

The pivots are in columns one, two, and four. Then, go back to the image: $\set{\vec{v}_1, \vec{v}_2, \vec{v}_4}$ are the basis of $W$:

$$
\Set{
     \begin{pmatrix}
        1 \\ 1 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        2 \\ 3 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 1 \\ 1
    \end{pmatrix}
}
$$

Which also means that
$$
W = \operatorname{span}\Set{
     \begin{pmatrix}
        1 \\ 1 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        2 \\ 3 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 1 \\ 1
    \end{pmatrix}
}
$$

and also that $\Set{
     \begin{pmatrix}
        1 \\ 1 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        2 \\ 3 \\ 1
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 1 \\ 1
    \end{pmatrix}
}$ are linearly independent.

</b-eg></div>

So, for an $m\times n$ matrix $A$,

$$
\dim(\ker(A)) = \operatorname{nullity}(A) = n - \operatorname{rank}(A) \\
\dim(\operatorname{Im}(A)) = \operatorname{rank}(A)
$$

## A summary of findings from the three chapters

| For an $m\times n$ matrix $$A=\begin{pmatrix}    \| & & \| \\    \vec{v}_1 & \cdots & \vec{v}_n \\    \| & & \|\end{pmatrix}$$ | Chapter 1: Applying algorithms $$A\to\operatorname{rref}(A)$$ | Chapter 2: Linear transformation $$T(\vec{x})=A\vec{x}$$ |      Chapter 3: $$\set{\vec{v}_1, \ldots, \vec{v}_n}$$       |
| :----------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------: | :------------------------------------------------------: | :----------------------------------------------------------: |
|                               Only trivial solutions $\\A\vec{x}=\vec{0}\implies\vec{x}=\vec{0}$                               |        No free variables $\\\operatorname{rank}(A)=n$         |        $T$ is injective $\\\ker(A)=\set{\vec{0}}$        | $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is linearly independent |
|                                    $A\vec{x}=\vec{b}$ is solvable for all $\vec{b}\in\R^m$                                     |          Full row rank $\\\operatorname{rank}(A)=m$           |      $T$ is surjective $\\\operatorname{Im}(A)=R^m$      | $\operatorname{span}\set{\vec{v}_1, \ldots, \vec{v}_n}=\R^m$ |
|                                                            If both                                                             |     $A$ is a square matrix $\\\operatorname{rank}(A)=m=n$     |                     $T$ is bijective                     |       $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is a basis        |

No matter what you are trying to do... bring the vectors into a matrix and Gaussian that bitch.

## Change of basis

For a standard basis:

* $\R^n = \operatorname{span}\set{\vec{e}_1, \ldots, \vec{e}_n}$
* $\begin{pmatrix}
    x_1 \\ \vdots \\ x_n
\end{pmatrix} = x_1\vec{e}_1 + \cdots + x_n\vec{e}_n$

If we have a basis $\mathfrak{B}=\set{\vec{v}_1,\ldots,\vec{v}_n}$ of $\R^n$, then

$$
\begin{array}{ll}
    \forall\vec{x}\in\R^n & \vec{x}=\tilde{x}_1\vec{v}_1 + \cdots + \tilde{x}_n\vec{v}_n \\
    & [\vec{x}]_\mathfrak{B} \stackrel{\Delta}{=} \begin{pmatrix}
        \tilde{x}_1 \\ \vdots \\ \tilde{x}_n
    \end{pmatrix}_\mathfrak{B}
\end{array}
$$


<div><box-eg>

Let $P=\begin{pmatrix}
    | && | \\
    \vec{v_1} & \cdots & \vec{v}_n \\
    | && |
\end{pmatrix}$. Then,
$$
\begin{align*}
    \vec{x} &= \tilde{x}\vec{v}_1 + \cdots + \tilde{x}\vec{v}_n \\
    &= P\begin{pmatrix}
        \tilde{x}_1 \\ \vdots \\ \tilde{x}_n
    \end{pmatrix} \\
    &= P[\vec{x}]_\mathfrak{B}
\end{align*}
$$

So, $\boxed{\vec{x} = P[\vec{x}]_\mathfrak{B}}$.

</b-eg></div>

<div><box-eg>

Let $\mathfrak{B}=\Set{
    \begin{pmatrix}
    1 \\ 2
    \end{pmatrix},
    \begin{pmatrix}
    2 \\ 1
    \end{pmatrix}
}$. What is $\vec{x}$ if $[\vec{x}]_\mathfrak{B}=\begin{pmatrix}
    3 \\ -1
\end{pmatrix}$?

$$
\begin{align*}
    \vec{x} &= 3\begin{pmatrix}
        1 \\ 2
    \end{pmatrix} +
    (-1)\begin{pmatrix}
        2 \\ 1
    \end{pmatrix} \\
    &= \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix} \begin{pmatrix}
        3 \\ -1
    \end{pmatrix} \\
    &= \begin{pmatrix}
        1 \\ 5
    \end{pmatrix}
\end{align*}
$$

</b-eg></div>


### Homework 6 hint --- Book question #55

We want a $P$ such that $[\vec{x}]_\mathfrak{R}=[\vec{x}]_\mathfrak{B}$.

Let $U = \begin{pmatrix}
    1 & 1 \\ 1 & 2
\end{pmatrix}$ and $V = \begin{pmatrix}
    1 & 3 \\ 2 & 4
\end{pmatrix}.$

By definition:

$$
\vec{x} = U[\vec{x}]_\mathfrak{B} \\
\vec{x} = V[\vec{x}]_\mathfrak{R}
$$

Rewrite the second one by applying inverse on both sides:

$$
\vec{x} = V[\vec{x}]_\mathfrak{R} \implies V^{-1}\vec{x} = [\vec{x}]_\mathfrak{R}
$$

Then plug in the expression for $\vec{x}$ in terms of the $U$ transformation.

$$
\begin{align*}
    [\vec{x}]_\mathfrak{R} &= V^{-1}\vec{x} \\
    &= V^{-1}U[\vec{x}]_\mathfrak{B}
\end{align*}
$$

By comparison, $V^{-1}U$ is the transformation $P$.

### Linear transformation

Now, we look at the change of basis as a linear transformation. Using the definition and applying the inverse, we can find the transformation matrix $A$ and $B$.

$$
\begin{CD}
    \vec{x} @>A>> T(\vec{x}) \\
    @VPVV @VVPV \\
    [\vec{x}]_\mathfrak{B} @>B>> [T(\vec{x})]_\mathfrak{B}
\end{CD}
$$

<div><box-def>

$$
\vec{x} = P[\vec{x}]_\mathfrak{B} \\
[\vec{x}]_\mathfrak{B} = P^{-1}\vec{x}
$$

And so:

$$
\begin{align*}
    B[\vec{x}]_\mathfrak{B} &= [T(\vec{x})]_\mathfrak{B} \\
    BP^{-1}(\vec{x}) &= P^{-1}T(\vec{x}) \\
    &= P^{-1}A(\vec{x})
\end{align*}
$$

We have that the compositions

$$
BP^{-1} = P^{-1}A,
$$

from which we can derive:

$$
A = PBP^{-1} \\
B = P^{-1}AP
$$

</b-def></div>

<div><box-eg>

Let $\mathfrak{B}=\Set{
    \begin{pmatrix} 1 \\ 2 \end{pmatrix},
    \begin{pmatrix} 2 \\ 1 \end{pmatrix}
}$. What is the linear transformation under standard basis if $[T(\vec{x})]_\mathfrak{B}=\begin{pmatrix}
    3 & 0 \\ 0 & -1
\end{pmatrix}[\vec{x}]_\mathfrak{B}$?

Here, we want to find the matrix $A$. because it is the transformation under standard basis that makes: $\vec{x}\xrightarrow{A}T(\vec{x})$.

So, we can use the derived equation $A=PBP^{-1}$ where:

$$
\begin{align*}
    \mathfrak{B}&=\Set{
    \begin{pmatrix} 1 \\ 2 \end{pmatrix},
    \begin{pmatrix} 2 \\ 1 \end{pmatrix}
    }
    \implies P=\begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix} \\
    B &= \begin{pmatrix}
        3 & 0 \\ 0 & -1
    \end{pmatrix}
\end{align*}
$$

Then, just plug in:
$$
\begin{align*}
    A &= PBP^{-1} \\
    &= \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix}
    \begin{pmatrix}
        3 & 0 \\ 0 & -1
    \end{pmatrix}
    \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix}^{-1} \\
    &= \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix}
    \begin{pmatrix}
        3 & 0 \\ 0 & -1
    \end{pmatrix}
    \begin{pmatrix}
        -\frac{1}{3} & \frac{2}{3} \\
        \frac{2}{3} & -\frac{1}{3}
    \end{pmatrix} \\
    &= \begin{pmatrix}
        -\frac{7}{3} & \frac{8}{3} \\[.5em]
        -\frac{8}{3} & \frac{13}{3}
    \end{pmatrix}
\end{align*}
$$

</b-eg></div>

### Why do we need to change basis?

Just because we can, we will jump ahead to Chapter 7: Diagonalization to explore why we do this.

Say, if we are given a square matrix $A$, how do we find $A^n$?

$$
A^n = \underbrace{A\cdot A \cdots A\cdot A}_n
$$

Take an easy example, where $A=I$. Then,

$$
A^n = I^n = I
$$

Or, how about diagonal matrices? For example: $
A = \begin{pmatrix}
    2 & 0 \\ 0 & 3
\end{pmatrix}
$.

We can just multiply the diagonal --- easy!

$$
A = \begin{pmatrix}
    2 & 0 \\ 0 & 3
\end{pmatrix} \implies
A^2 = \begin{pmatrix}
    2^2 & 0 \\ 0 & 3^2
\end{pmatrix} \implies
A^n = \begin{pmatrix}
    2^n & 0 \\ 0 & 3^n
\end{pmatrix}
$$

But... how would we deal with non-diagonal matrices? We simply cannot do proof by induction to find a "general" form for which we can multiply matrix. And so, this is where *change of basis* is needed.

