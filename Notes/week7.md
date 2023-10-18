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

For a matrix $A = \begin{pmatrix}
    | & & | \\
    \vec{v}_1 & \cdots & \vec{v}_2 \\
    | & & |
\end{pmatrix}$.

### Kernel

$$
\ker(A) = \set{\vec{x}\in\R^n : A\vec{x}=\vec{0}}
$$

To find a basis for $\ker(A)$:

1. Find $\operatorname{rref}(A)$.
2. Get the solution set.
3. Write the solution as a span of vectors.
4. Then, the vectors in the span are the basis of $W$.

### Image

$$
\begin{align*}
\operatorname{Im}(A) &= \set{A\vec{x}: \vec{x}\in\R^n} \\
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
|                                    $A\vec{x}=\vec{b}$ is solvable for all $\vec{b}\in\R^m$                                     |          Full row rank $\\\operatorname{rank}(A)=m$           |      $T$ is surjective $\\\operatorname{Im}(A)=\R^m$      | $\operatorname{span}\set{\vec{v}_1, \ldots, \vec{v}_n}=\R^m$ |
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

Here, we want to find the matrix $A$ because it is the transformation under standard basis. Recall from the diagram above:

$$\vec{x}\xrightarrow{A}T(\vec{x})$$

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

Just because we can, we will jump ahead to *Chapter 7: Diagonalization* to explore why we do this.

Say, if we are given a square matrix $A$, how do we find $A^n$?

$$
A^n = \underbrace{A\cdot A \cdots A\cdot A}_n
$$

Take an easy example, where $A=I$. Then,

$$
A^n = I^n = I
$$

Or, how about diagonal matrices? For example: $A = \begin{pmatrix}
    2 & 0 \\ 0 & 3
\end{pmatrix}$.

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

Under standard basis, given a transformation matrix $\begin{pmatrix}
    2 & 0 \\ 0 & 3
\end{pmatrix}$:

$$
\begin{array}{ccc}
\includegraphics[height=150px]{../assets/notes_wk7_stdbasis_1.svg}
& \raisebox{75px}{$\xrightarrow{T}$}
& \includegraphics[height=150px]{../assets/notes_wk7_stdbasis_2.svg}
\end{array}
$$

We transform the vectors $\vec{e}_1 = \begin{pmatrix}
    1 \\ 0
\end{pmatrix}$ and $\vec{e}_2 = \begin{pmatrix}
    0 \\ 1
\end{pmatrix}$, such that:

$$
\begin{align*}
    T(\vec{e}_1) =
    \begin{pmatrix}
        2 & 0 \\ 0 & 3
    \end{pmatrix} \begin{pmatrix}
        1 \\ 0
    \end{pmatrix} = \begin{pmatrix}
        2 \\ 0
    \end{pmatrix} = 2\vec{e}_1 \\
    T(\vec{e}_2) =
    \begin{pmatrix}
        2 & 0 \\ 0 & 3
    \end{pmatrix} \begin{pmatrix}
        0 \\ 1
    \end{pmatrix} = \begin{pmatrix}
        0 \\ 3
    \end{pmatrix} = 3\vec{e}_2
\end{align*}
$$

### What we want to achieve in general

Given a matrix $A$ under the standard basis, we want to find another basis $\mathfrak{B}=\set{\vec{v}_1, \vec{v}_2}$ and $\lambda_1, \lambda_2 \in \R$ such that:
$$
(A\vec{x})_\mathfrak{B} = \begin{pmatrix}
    \lambda_1 & 0 \\ 0 & \lambda_2
\end{pmatrix}(\vec{x})_\mathfrak{B}
$$

Let $P=\begin{pmatrix}
    | & | \\
    \vec{v_1}& \vec{v}_n \\
    | & |
\end{pmatrix}$. And recall that $\vec{x}=P[\vec{x}]_\mathfrak{B}$. Then:

$$
\begin{align*}
    P^{-1}A\vec{x} &= \begin{pmatrix}
        \lambda_1 & 0 \\
        0 & \lambda_2
    \end{pmatrix} P^{-1}\vec{x} \\
    P^{-1}AP &= \begin{pmatrix}
        \lambda_1 & 0 \\
        0 & \lambda_2
    \end{pmatrix}
\end{align*}
$$

First, we need to solve for $\vec{v}_1$ and $\lambda_1$.

Let $[\vec{x}]_\mathfrak{B}=\begin{pmatrix}
    1 \\ 0
\end{pmatrix}_\mathfrak{B}$. Where $\vec{x}=\vec{v}_1$, we have that

$$
\begin{align*}
    (A\vec{v}_1)_\mathfrak{B} = \begin{pmatrix}
        \lambda_1 & 0 \\
        0 & \lambda_2
    \end{pmatrix} \begin{pmatrix}
        1 \\ 0
    \end{pmatrix}_\mathfrak{B} = \begin{pmatrix}
        \lambda_1 \\ 0
    \end{pmatrix}_\mathfrak{B}
\end{align*}
$$

Where $\vec{v}_1,\vec{v}_2\neq\vec{0}$,
$$
A\vec{v}_1 = \lambda\vec{v}_1 \\
A\vec{v}_2 = \lambda\vec{v}_2.
$$

So in general, we need to solve for $A\vec{v}=\lambda\vec{v}$ such that $\vec{v}\neq\vec{0}$ and $(A-\lambda I)\vec{v}=\vec{0}$. Or, in other words where $\ker(A-\lambda I)$ is non-trivial.

---

## Eigenvalues

<div><box-def>

Let $A$ be an $n\times n$ matrix. We say that $A$ is *diagonalizable* if there exists an invertible matrix $P$ such that

$$
P^{-1}AP = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}
$$

where $\lambda_1,\ldots,\lambda_n$ are called **eigenvalues** of $A$.


</b-def></div>

### Why diagonalize?

Because for diagonal matrices, we are easily able to find their squares, such as:

$$
\begin{align*}
    P^{-1}AP &= \begin{pmatrix}
        \lambda_1 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n
    \end{pmatrix} \\
    (P^{-1}AP)^2 &= \begin{pmatrix}
        \lambda_1 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n
    \end{pmatrix}^2
    = \begin{pmatrix}
        \lambda_1^2 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n^2
    \end{pmatrix}
\end{align*}
$$

And notice where

$$
\begin{align*}
    (P^{-1}AP)^2 &= P^{-1}A\underbrace{PP^{-1}}_I AP \\
    &= P^{-1}AAP \\
    &= P^{-1}A^2P
\end{align*}
$$

We can then derive an expression for $A^2$:

$$
P^{-1}A^2P = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}^2 \\
A^2 = P \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}^2 P^{-1}
= P \begin{pmatrix}
    \lambda_1^2 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n^2
\end{pmatrix} P^{-1}
$$

And so, for $(P^{-1}AP)^k = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}^k = \begin{pmatrix}
    \lambda_1^k & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n^k
\end{pmatrix}$:

$$
\begin{align*}
    (P^{-1}AP)^k &= \underbrace{(P^{-1}A\cancel{P})(\cancel{P^{-1}}A\cancel{P})\thinspace\cdots\thinspace(\cancel{P^{-1}}A\cancel{P})(\cancel{P^{-1}}AP)}_k \\
    &= P^{-1}\underbrace{AA\thinspace\cdots\thinspace AA}_k P \\
    &= P^{-1}A^k P
\end{align*}
$$

And again:

$$
P^{-1}A^kP = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}^k \\
A^k = P \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}^k P^{-1}
= P \begin{pmatrix}
    \lambda_1^k & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n^k
\end{pmatrix} P^{-1}
$$

Now, all square matrices to the power of $k$ can be found... once we find the matrix $P$ and the *eigenvalues* $\lambda_1,\ldots,\lambda_n$.

### Finding eigenvalues and $P$

For an $n\times n$ matrix $A$ and some invertible matrix $P$ where:

$$
P^{-1}AP = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix} \\
\Downarrow \\
AP = P\begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}
$$

First, we write $P$ as a matrix composed of some column vectors $\vec{v}_i$.

$$
P = \begin{pmatrix}
    | & & | \\
    \vec{v}_1 & \cdots & \vec{v}_n \\
    | & & |
\end{pmatrix}
$$

Then, on the left-hand side, we have:

$$
\begin{align*}
    AP &= A\begin{pmatrix}
        | & & | \\
        \vec{v}_1 & \cdots & \vec{v}_n \\
        | & & |
    \end{pmatrix} \\
    &= \begin{pmatrix}
        | & & | \\
        A\vec{v}_1 & \cdots & A\vec{v}_n \\
        | & & |
    \end{pmatrix}
\end{align*}
$$

And on the right:

$$
\begin{align*}
    P\begin{pmatrix}
        \lambda_1 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n
    \end{pmatrix}
    &= \begin{pmatrix}
        | & & | \\
        \vec{v}_1 & \cdots & \vec{v}_n \\
        | & & |
    \end{pmatrix}
    \begin{pmatrix}
        \lambda_1 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n
    \end{pmatrix} \\
    &= \begin{pmatrix}
        | & & | \\
        \lambda_1\vec{v}_1 & \cdots & \lambda_n\vec{v}_n \\
        | & & |
    \end{pmatrix}
\end{align*}
$$

Putting it together, we have:

$$
\begin{align*}
    AP &= P\begin{pmatrix}
        \lambda_1 & & 0 \\
        & \ddots &  \\
        0 & & \lambda_n
    \end{pmatrix} \\
    \begin{pmatrix}
        | & & | \\
        A\vec{v}_1 & \cdots & A\vec{v}_n \\
        | & & |
    \end{pmatrix}
    &= \begin{pmatrix}
        | & & | \\
        \lambda_1\vec{v}_1 & \cdots & \lambda_n\vec{v}_n \\
        | & & |
    \end{pmatrix}
\end{align*}
$$

So, if there exists an invertible matrix $P$ where $P^{-1}AP = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}$. Then, there must exists a basis $\set{\vec{v}_1,\ldots,\vec{v}_n}$ such that $\vec{v}_i\neq\vec{0}$.

$$
\begin{array}{ccc}
    \begin{pmatrix}
        A\vec{v}_1 = \lambda_1\vec{v}_1 \\
        \vdots \\
        A\vec{v}_n = \lambda_n\vec{v}_n \\
    \end{pmatrix}
    &\overset{
        \raisebox{1em}{
            \boxed{A\vec{v}_i - \lambda_i\vec{v}_i = \vec{0}}
        }
    }{\iff}
    &\begin{pmatrix}
        (A-\lambda_1 I)\vec{v}_1 = \vec{0} \\
        \vdots \\
        (A-\lambda_n I)\vec{v}_n = \vec{0} \\
    \end{pmatrix}
\end{array}
$$

Notice on the right-hand side, after subtracting and factoring the vector $\vec{v}_i$, we have a form that is equivalent to finding the kernel of $A-\lambda_n I$.

<div><box-def>

We say that $\lambda$ is an **eigenvalue** of the matrix $A$ if $\ker(A-\lambda I) \neq \set{\vec{0}}$. In other words, the kernel must have a non-trivial solution.

Additionally, if $\lambda$ is an **eigenvalue**:
* $\ker(A-\lambda I)$ is called the **eigenspace** of $A$ corresponding to $\lambda$, and
* $\forall\vec{v}\in\ker(A-\lambda I)$ are called **eigenvectors** corresponding to $\lambda$.

</b-def></div>

To begin, let's take a simple $2\times2$ matrix: $A=\begin{pmatrix}
    1 & 2 \\ 2 & 1
\end{pmatrix}$.

Typically, you'd be asked to:

1. Find eigenvalues of $A$
2. For each eigenvalues $\lambda$, find the basis for the respective eigenspaces
3. Diagonalize $A$

#### 1. Find eigenvalues of $A$

We need to find $\lambda$ such that $A\vec{v}=\lambda\vec{v}$ and $\vec{v}\neq\vec{0}$.

$$
A\vec{v} = \lambda\vec{v} \\
\begin{pmatrix}
    1 & 2 \\
    2 & 1
\end{pmatrix}
\vec{v} = \begin{pmatrix}
    \lambda & 0 \\
    0 & \lambda
\end{pmatrix} \vec{v}
$$

Then, we subtract and factor $\vec{v}$ to obtain $(A-\lambda I)\vec{v}$.

$$
\begin{align*}
    (A-\lambda I)\vec{v} &= \left(
        \begin{pmatrix}
            1 & 2 \\
            2 & 1
        \end{pmatrix}
        - \lambda\begin{pmatrix}
            1 & 0 \\
            0 & 1
        \end{pmatrix}
    \right)\vec{v}
    &= \vec{0} \\
    &= \left(
        \begin{pmatrix}
            1 & 2 \\
            2 & 1
        \end{pmatrix}
        - \begin{pmatrix}
            \lambda & 0 \\
            0 & \lambda
        \end{pmatrix}
    \right)\vec{v}
    &= \vec{0} \\
    &= \begin{pmatrix}
        1-\lambda & 2 \\
        2 & 1-\lambda
    \end{pmatrix}
    \vec{v}
    &= \vec{0}
\end{align*}
$$

By definition, $\lambda$ are eigenvalues $\iff\ker\begin{pmatrix}
    1-\lambda & 2 \\
    2 & 1-\lambda
\end{pmatrix}\neq\set{\vec{0}}$.

So... how the fuck do we solve for $\lambda$? Well, we *could* do Gaussian. However, it would be kinda nasty because we would need to make the diagonal $1$... but $\lambda$ is on the diagonal.

Instead, for a $2\times2$ matrix, we can use the fact that



$$
\begin{pmatrix}
    a & b \\
    c & d
\end{pmatrix}^{-1} = \frac{1}{ad-bc}\begin{pmatrix}
    d & -b \\
    -c & a
\end{pmatrix},\qquad ad-bc\neq0
$$

<div><box-note>

Recall that for a matrix $A=\begin{pmatrix}
    a & b \\
    c & d
\end{pmatrix}$, its determinant $\det(A)=ad-bc$.

And that $A^{-1}$ exists if and only if:
* $\det(A)\neq0$
* $\ker(A) = \set{\vec{0}}$.

</b-note></div>

So, for our matrix (again, by definition), $\lambda$ is an eigenvalue if and only if:

$$
\det\begin{pmatrix}
    1-\lambda & 2 \\
    2 & 1-\lambda
\end{pmatrix}=0
\iff
\ker\begin{pmatrix}
    1-\lambda & 2 \\
    2 & 1-\lambda
\end{pmatrix}\neq\set{\vec{0}}
$$

As such:

$$
\begin{align*}
    \det\begin{pmatrix}
    1-\lambda & 2 \\
    2 & 1-\lambda
    \end{pmatrix}
    &= (1-\lambda)(1-\lambda)-2\cdot2 &= 0\\
    &= 1-2\lambda+\lambda^2-4 &= 0 \\
    &= \lambda^2 - 2\lambda - 3 &= 0 \\
    &= (\lambda + 1)(\lambda - 3) &= 0
\end{align*}
\\
\therefore\lambda=-1,3
$$

The eigenvalues for the matrix $\begin{pmatrix}
    1 & 2 \\
    2 & 1
\end{pmatrix}$ are $-1$ and $3$.

#### 2. For each eigenvalues $\lambda$, find the basis for the respective eigenspaces

From the last part, we have two eigenvalues $\lambda=-1,3$.

First, take $\lambda=-1$. The eigenspace is given by:

$$
\begin{align*}
    \ker(A-\lambda I) &= \ker(A(-1)I) \\
    &= \ker(A+I) \\
    &= \ker\left(
        \begin{pmatrix}
            1 & 2 \\ 2 & 1
        \end{pmatrix} + \begin{pmatrix}
            1 & 0 \\ 0 & 1
        \end{pmatrix}
    \right) \\
    &= \ker\begin{pmatrix}
        2 & 2 \\ 2 & 2
    \end{pmatrix}
\end{align*}
$$

Then, to find the kernel, we just Gaussian that bitch.

$$
\operatorname{rref}\begin{pmatrix}
    2 & 2 \\ 2 & 2
\end{pmatrix} = \begin{pmatrix}
    1 & 1 \\ 0 & 0
\end{pmatrix}
\\
\therefore x = -y \\
y\in\R
\\[1em]
\therefore\ker(A+I) = \Set{
    y\begin{pmatrix}
        -1 \\ 1
    \end{pmatrix}: y\in\R
}
$$

Now, do the same for $\lambda=3$.


$$
\begin{align*}
    \ker(A-\lambda I) &= \ker(A-3I) \\
    &= \ker\left(
        \begin{pmatrix}
            1 & 2 \\ 2 & 1
        \end{pmatrix} - 3\begin{pmatrix}
            1 & 0 \\ 0 & 1
        \end{pmatrix}
    \right) \\
    &= \ker\left(
        \begin{pmatrix}
            1 & 2 \\ 2 & 1
        \end{pmatrix} - \begin{pmatrix}
            3 & 0 \\ 0 & 3
        \end{pmatrix}
    \right) \\
    &= \ker\begin{pmatrix}
        -2 & 2 \\ 2 & -2
    \end{pmatrix}
\end{align*}
$$

And, again Gaussian to find the kernel.

$$
\operatorname{rref}\begin{pmatrix}
        -2 & 2 \\ 2 & -2
    \end{pmatrix} = \begin{pmatrix}
    1 & -1 \\ 0 & 0
\end{pmatrix}
\\
\therefore x = y \\
y\in\R
\\[1em]
\therefore\ker(A+I) = \Set{
    y\begin{pmatrix}
        1 \\ 1
    \end{pmatrix}: y\in\R
}
$$

So, we have that the basis for $\lambda=-1$ is $\Set{\begin{pmatrix}
    -1 \\ 1
\end{pmatrix}}$ and $\lambda=3$ is $\Set{\begin{pmatrix}
    1 \\ 1
\end{pmatrix}}$.

Then, we say that the basis for the *eigenspace* is $\Set{\begin{pmatrix}
    -1 \\ 1
\end{pmatrix}, \begin{pmatrix}
    1 \\ 1
\end{pmatrix}}$. The vectors in that basis are called *eigenvectors*.

To illustrate this, take the eigenvectors: $\vec{v}_1=\begin{pmatrix}
    -1 \\ 1
\end{pmatrix},\vec{v}_2=\begin{pmatrix}
    1 \\ 1
\end{pmatrix}$ and transform it using $A$.

Recall that:

$$
A\vec{v}_1 = \lambda_1\vec{v}_1 \\
\vdots \\
A\vec{v}_n = \lambda_n\vec{v}_n
$$

So, to transform each of our vectors, we simply plug in our eigenvalues to get:

$$
A\vec{v}_1 = \lambda_1\vec{v}_1 = -1\begin{pmatrix}
    -1 \\ 1
\end{pmatrix} = \begin{pmatrix}
    1 \\ -1
\end{pmatrix} \\
A\vec{v}_2 = \lambda_2\vec{v}_2 = 3\begin{pmatrix}
    1 \\ 1
\end{pmatrix} = \begin{pmatrix}
    3 \\ 3
\end{pmatrix}
$$

$$
\begin{array}{ccc}
\includegraphics[height=150px]{../assets/notes_wk7_eigenspace_1.svg}
& \raisebox{75px}{$\xrightarrow{A}$}
& \includegraphics[height=150px]{../assets/notes_wk7_eigenspace_2.svg}
\end{array}
$$

<div><box-note>

The lines through the origin is the $\ker(A-\lambda I)$ for each eigenvalues $\lambda$.

$$
\ker(A-\lambda_1 I) = \ker(A+I) = \Set{
    y\begin{pmatrix}
        -1 \\ 1
    \end{pmatrix}: y \in \R
} = \operatorname{span} \Set{
    \begin{pmatrix}
        -1 \\ 1
    \end{pmatrix}
} \\
\ker(A-\lambda_2 I) = \ker(A-3I) = \Set{
    y\begin{pmatrix}
        1 \\ 1
    \end{pmatrix}: y \in \R
} = \operatorname{span} \Set{
    \begin{pmatrix}
        1 \\ 1
    \end{pmatrix}
}
$$

</b-note></div>


And sure enough, transforming the regular way using matrix multiplication would also give us the same results for each vectors.

$$
\begin{align*}
    A\vec{v}_1 = \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix} \begin{pmatrix}
        -1 \\ 1
    \end{pmatrix}
    &= \begin{pmatrix}
        1 \\ -1
    \end{pmatrix} \\
    &= -1\begin{pmatrix}
        -1 \\ 1
    \end{pmatrix} \\
    &= \lambda_1\vec{v}_1 \\
    A\vec{v}_2 = \begin{pmatrix}
        1 & 2 \\
        2 & 1
    \end{pmatrix} \begin{pmatrix}
        1 \\ 1
    \end{pmatrix}
    &= \begin{pmatrix}
        3 \\ 3
    \end{pmatrix} \\
    &= 3\begin{pmatrix}
        1 \\ 1
    \end{pmatrix} \\
    &= \lambda_2\vec{v}_2
\end{align*}
$$


#### 3. Diagonalize $A$

In general, we what is something in the form:

$$
P^{-1}AP = \begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots &  \\
    0 & & \lambda_n
\end{pmatrix}
$$

$P^{-1}AP$ is called the *diagonalization* of $A$.

From our previous steps, we found that $A$ has two *eigenvalues* $\lambda_1=-1,\lambda_2=3$.

Then, the diagonalization of $A$ is

$$
P^{-1}AP = \begin{pmatrix}
    \lambda_1 & 0 \\
    0 & \lambda_2
\end{pmatrix}
= \begin{pmatrix}
    -1 & 0 \\
    0 & 3
\end{pmatrix}
$$

where $P$ is the matrix made up of the eigenvectors $\vec{v}_1, \vec{v}_2$.

<div><box-note>

We can also derive this by writing $P$ as a matrix composed of the *eigenvectors* $\vec{v}_1=\begin{pmatrix}
    -1 \\ 1
\end{pmatrix},\vec{v}_2=\begin{pmatrix}
    1 \\ 1
\end{pmatrix}$.

Then:

$$
P^{-1}AP = \begin{pmatrix}
    \lambda_1 & 0 \\
    0 & \lambda_2
\end{pmatrix} \\
\begin{align*}
    AP &= P\begin{pmatrix}
        \lambda_1 & 0 \\
        0 & \lambda_2
    \end{pmatrix} \\
    &= \begin{pmatrix}
        | & | \\
        \vec{v}_1 & \vec{v}_2 \\
        | & |
    \end{pmatrix}\begin{pmatrix}
        \lambda_1 & 0 \\
        0 & \lambda_2
    \end{pmatrix}
    = \begin{pmatrix}
        | & | \\
        \lambda_1\vec{v}_1 & \lambda_2\vec{v}_2 \\
        | & |
    \end{pmatrix} \\
    &= \begin{pmatrix}
        1 & 1 \\
        -1 & 1
    \end{pmatrix}\begin{pmatrix}
        -1 & 0  \\
        0 & 3
    \end{pmatrix}
    = \begin{pmatrix}
        1 & 3 \\
        -1 & 3
    \end{pmatrix} \\
    &= P\begin{pmatrix}
        -1 & 0  \\
        0 & 3
    \end{pmatrix}
\end{align*} \\
\implies P^{-1}AP = \begin{pmatrix}
        -1 & 0  \\
        0 & 3
\end{pmatrix}
$$

</b-note></div>

With the diagonalization of $A$, we can now find $A^k$ for any $k\in\N$.

$$
P^{-1}A^k P = \begin{pmatrix}
    -1 & 0  \\
    0 & 3
\end{pmatrix} \\
\therefore A^k = P\begin{pmatrix}
    -1 & 0  \\
    0 & 3
\end{pmatrix} P^{-1}
$$


<div><box-eg>

For $A=\begin{pmatrix}
    1 & 2 \\ 2 & 1
\end{pmatrix}$, find $A^{10}$.

Where $P = \begin{pmatrix}
    | & | \\
    \vec{v}_1 & \vec{v}_2 \\
    | & |
\end{pmatrix} = \begin{pmatrix}
    -1 & 1 \\
    1 & 1
\end{pmatrix}$. Then:

$$
\begin{align*}
    A^{10} &= \begin{pmatrix}
    1 & 1 \\
    -1 & 1
\end{pmatrix}\begin{pmatrix}
    -1 & 0  \\
    0 & 3
\end{pmatrix}\begin{pmatrix}
    -1 & 1 \\
    1 & 1
\end{pmatrix}^{-1} \\
&= \begin{pmatrix}
    1 & 1 \\
    -1 & 1
\end{pmatrix}\begin{pmatrix}
    -1 & 0  \\
    0 & 3
\end{pmatrix}
\cdot -\frac{1}{2}\begin{pmatrix}
    1 & -1 \\
    -1 & -1
\end{pmatrix} \\
&= \begin{pmatrix}
    2 & 1 \\
    1 & 2
\end{pmatrix}
\end{align*}
$$

</b-eg></div>

### For $3\times3$ matrices

Now, what about for a $3\times3$ matrices? For example $A=\begin{pmatrix}
    1 & 1 & 0 \\
    1 & 2 & 1 \\
    0 & 0 & 3
\end{pmatrix}$.

We start with finding eigenvalues of $A$ by solving for $\det(A-\lambda I) = 0$. Which means, we'll need to find the determinant for a $3\times3$ matrix.

<div><box-def>

For a matrix in $\R^3$ such as

$$
A = \begin{pmatrix}
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
    a_{31} & a_{32} & a_{33}
\end{pmatrix},
$$

the determinant of $A$ is given by:

$$
\det(A) = a_{11}\begin{pmatrix}
    a_{22} & a_{23} \\
    a_{32} & a_{33}
\end{pmatrix} - a_{12}\begin{pmatrix}
    a_{21} & a_{23} \\
    a_{31} & a_{33}
\end{pmatrix} + a_{13}\begin{pmatrix}
    a_{21} & a_{22} \\
    a_{31} & a_{32}
\end{pmatrix}
$$

</b-def></div>

Then, we'd solve for

$$
\det(A-\lambda I) = 0 \\
\det\begin{pmatrix}
    1-\lambda & 1 & 0 \\
    1 & 2-\lambda & 1 \\
    0 & 0 & 3-\lambda
\end{pmatrix} = 0
$$

to find the eigenvalues... and so on.

Notice that for a $2\times2$ matrix, solving for the $\lambda$ yields a polynomial expression of degree two i.e., $a\lambda^2 + b\lambda + c = 0$. And so, you'd have *at most* two eigenvalues.

That means that, here, for a $3\times3$ matrix, there will be at most three eigenvalues. And for $n\times n$ matrix, there'd be at most $n$ eigenvalues.

### For $4\times4$ matrices and beyond...

Well, you'd need to find the determinant for a $4\times4$ matrix. Which, at this point, you may as well kill yourself.
