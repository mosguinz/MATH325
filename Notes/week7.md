---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Week 6

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

| For an $m\times n$ matrix $$A=\begin{pmatrix}    \| & & \| \\    \vec{v}_1 & \cdots & \vec{v}_n \\    \| & & \|\end{pmatrix}$$ | Chapter 1: Applying algorithms $$A\to\operatorname{rref}(A)$$  | Chapter 2: Linear transformation $$T(\vec{x})=A\vec{x}$$ |       Chapter 3: $$\set{\vec{v}_1, \ldots, \vec{v}_n}$$        |
| :----------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------: | :------------------------------------------------------: | :------------------------------------------------------------: |
|                               Only trivial solutions $$A\vec{x}=\vec{0}\implies\vec{x}=\vec{0}$$                               | No free variables / full row rank $$\operatorname{rank}(A)=n$$ |      $T$ is injective $$\iff\ker(A)=\set{\vec{0}}$$      |  $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is linearly independent  |
|                                    $A\vec{x}=\vec{b}$ is solvable for all $\vec{b}\in\R^m$                                     |         Full column rank $$\operatorname{rank}(A)=m$$          |    $T$ is surjective $$\iff\operatorname{Im}(A)=R^m$$    | $$\operatorname{span}\set{\vec{v}_1, \ldots, \vec{v}_n}=\R^m$$ |
|                                                            If both                                                             |     $A$ is a square matrix $$\operatorname{rank}(A)=m=n$$      |                     $T$ is bijective                     |        $\set{\vec{v}_1, \ldots, \vec{v}_n}$ is a basis         |

No matter what you are trying to do... bring the vectors into a matrix and Gaussian that bitch.

## Change of basis
