---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 6

## 1. Consider the linear transformation considered in the [previous homework](hw3.html). Determine if they are surjective or injective.

### (i) $T(x_1, x_2, x_3) = (3x_1 - x_2, x_2 + x_3, x_1 - x_2 - x_3)$

$$
\operatorname{rref}
\begin{pmatrix}
    3 & -1 & 0 \\
    0 & 1 & 1 \\
    1 & -1 & -1
\end{pmatrix} =
\begin{pmatrix}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{pmatrix}
$$

Full rank. Therefore, bijective.


### (ii) $T$ maps $\begin{bmatrix}    1 \\ 0 \\ 0\end{bmatrix}$, and$\begin{bmatrix}    0 \\ 1 \\ 0\end{bmatrix}$ and$\begin{bmatrix}    0 \\ 0 \\ 1\end{bmatrix}$ respectively to$\begin{bmatrix}    0 \\ 1\end{bmatrix}$ ,$\begin{bmatrix}    1 \\ 1\end{bmatrix}$ ,$\begin{bmatrix}    1 \\ -1\end{bmatrix}$

$$
\operatorname{rref}
\begin{pmatrix}
    0 & 1 & 1 \\
    1 & 1 & -1
\end{pmatrix} =
\begin{pmatrix}
    1 & 0 & -2 \\
    0 & 1 & 1
\end{pmatrix}
$$

No free variables. Nullity is not zero. Therefore, not injective.

Rank two, which is equal to the dimension of the codomain. Therefore, surjective.



### (iii) $T(x_1, x_2) = x_1 \begin{bmatrix}    1 \\ 1 \\ 2\end{bmatrix} + x_2 \begin{bmatrix}    -1 \\ 1 \\ 5\end{bmatrix}$

$$
\operatorname{rref}
\begin{pmatrix}
    1 & -1 \\
    1 & 1 \\
    2 & 5
\end{pmatrix} =
\begin{pmatrix}
    1 & 0 \\
    0 & 1 \\
    0 & 0
\end{pmatrix}
$$

Nullity is zero. Therefore, injective.

Rank two but codomain is in $\R^3$. Therefore, not surjective.

## 2. Determine if the following statements are true or false. Give explanation.

### (a) Suppose that there are 6 vectors in $\R^4$, it must be linearly decpendent.

True. Only four linearly independent vectors are needed to span $\R^4$.

### (b) Suppose that there are 6 vectors in $\R^4$, it must span $\R^4$.

False. At least four linearly independent vectors are needed to span $\R^4$. If at least four of the six are the same or are multiples of each other, then they cannot $\R^4$.

### (c\) Suppose that there are 4 vectors in $\R^6$, it must be linearly independent.

False. If they are not distinct vectors or are multiples of each other, then they would be linearly dependent.

### (d) Suppose that there are 4 vectors in $\R^6$, it cannot span $\R^6$.

True. At least six linearly independent vectors are needed to span $\R^6$.

## 3. Find a basis for the kernel and image of the following matrices and compute its dimensions. $$A =\begin{bmatrix}    1 & 2 & 4 & −2 & 2 \\    2 & 4 & 6 & 1 & 1 \\    2 & 3 & 4 & 1 & 1\end{bmatrix},B =\begin{bmatrix}    1 & −2 & 3 \\    −3 & 6 & −9 \\    −2 & 4 & −6 \\    3 & 0 & −1\end{bmatrix}$$

Using our brainpower, we find that the RREF of $A$ and $B$ are given by:

$$
\operatorname{rref}(A) = \begin{bmatrix}
    1 & 0 & 0 & -2 & 2 \\
    0 & 1 & 0 & 5 & -3 \\
    0 & 0 & 1 & -\frac{5}{2} & \frac{3}{2}
\end{bmatrix} \\
\therefore x_3 = \frac{5}{2} x_4 - \frac{3}{2} x_5 \\
x_2= -5x_4 + 3x_5 \\
x_1 = 2x_4 - 2x_5 \\
x_4,x_5 \in \R \\
\therefore\ker(A) = \Set{
    \begin{pmatrix}
        2x_4 - 2x_5 \\
        -5x_4 + 3x_5 \\
        \frac{5}{2} x_4 - \frac{3}{2} x_5 \\
        x_4 \\
        x_5
    \end{pmatrix}: x_4, x_5 \in \R
} = \Set{
    x\begin{pmatrix}
        2 \\ -5 \\ \frac{5}{2} \\ 1 \\ 0
    \end{pmatrix} +
    y\begin{pmatrix}
        -2 \\ 3 \\ -\frac{3}{2} \\ 0 \\ 1
    \end{pmatrix} : x, y \in \R
}
$$

A basis of $\ker(A)$ is $\Set{
    \begin{pmatrix}
        2 \\ -5 \\ \frac{5}{2} \\ 1 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        -2 \\ 3 \\ -\frac{3}{2} \\ 0 \\ 1
    \end{pmatrix}
}$ and its dimension is $2$.

Note that the pivots in $\operatorname{rref}(A)$ are located in columns one, two, and three. As such, the basis of $\operatorname{Im}(A)$ are the corresponding column vectors in $A$.

A basis of $\operatorname{Im}(A)$ is $\Set{\begin{pmatrix}
    1 \\ 2 \\ 2
\end{pmatrix},\begin{pmatrix}
    2 \\ 3 \\ 4
\end{pmatrix},\begin{pmatrix}
    4 \\ 6 \\ 4
\end{pmatrix}}$ and its dimension is $3$.

$$
\operatorname{rref}(B) = \begin{bmatrix}
    1 & 0 & -\frac{1}{3} \\
    0 & 1 & -\frac{5}{3} \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{bmatrix} \\
\therefore x_2 = \frac{5}{3}x_3 \\
x_1 = \frac{1}{3}x_3 \\
x_3\in\R \\
\therefore\ker(B) = \Set{
    \begin{pmatrix}
        \frac{1}{3}x_3 \\
        \frac{5}{3}x_3 \\
        x_3
    \end{pmatrix}: x_3 \in \R
} = \Set{
        x \begin{pmatrix}
            \frac{1}{3} \\
            \frac{5}{3} \\
            1
        \end{pmatrix}: x\in\R
    }
$$

A basis of $\ker(B)$ is $\Set{
     \begin{pmatrix}
        \frac{1}{3} \\
        \frac{5}{3} \\
        1
    \end{pmatrix}
}$ and its dimension is $1$.

Note that the pivots in $\operatorname{rref}(B)$ are located in columns one and two. As such, the basis of $\operatorname{Im}(B)$ are the corresponding column vectors in $B$.

A basis of $\operatorname{Im}(B)$ is $\Set{\begin{pmatrix}
    1 \\ -3 \\ -2 \\ 3
\end{pmatrix},\begin{pmatrix}
    -2 \\ 6 \\ 4 \\ 0
\end{pmatrix}}$ and its dimension is $2$.


## 4. Let $S = \Set{    \begin{bmatrix}        1 \\ 2 \\ 3    \end{bmatrix},    \begin{bmatrix}        4 \\ 5 \\ 6    \end{bmatrix},    \begin{bmatrix}        7 \\ 8 \\ 9    \end{bmatrix},    \begin{bmatrix}        10 \\ 1 \\ 2    \end{bmatrix},    \begin{bmatrix}        13 \\ 4 \\ 5    \end{bmatrix}}$. Is it possible to extract a basis for $\R^3$ from the set $S$? Explain.

Let $P$ be a matrix composed of the vectors in $S$ such that

$$
P = \begin{pmatrix}
    1 & 4 & 7 & 10 & 13 \\
    2 & 5 & 8 & 1 & 4 \\
    3 & 6 & 9 & 2 & 5
\end{pmatrix}.
$$

Then,

$$
\operatorname{rref}(P) = \begin{pmatrix}
    1 & 0 & -1 & 0 & -1 \\
    0 & 1 & 2 & 0 & 1 \\
    0 & 0 & 0 & 1 & 1
\end{pmatrix}.
$$

Notice $\operatorname{rank}(P) = 3$. As such, there exists three linearly independent vectors in $S$ (which are the basis of $\operatorname{Im}(P)$), namely:

$$
\Set{
    \begin{pmatrix}
        1 \\ 2 \\ 3
    \end{pmatrix}, \begin{pmatrix}
        4 \\ 5 \\ 6
    \end{pmatrix}, \begin{pmatrix}
        10 \\ 1 \\ 2
    \end{pmatrix}
}
$$

which are sufficient to span $\R^3$.

## 5. Let A be the $6\times4$ matrix with $A = \begin{bmatrix}    | & | & | & | \\    \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 & \mathbf{v}_4 \\    | & | & | & |\end{bmatrix}$. Suppose that after Gaussian elimination, the row echelon form of $A$ is given by $$\begin{bmatrix}    1 & 2 & 0 & 3 \\    0 & 0 & 3 & 1 \\    0 & 0 & 0 & 2 \\    0 & 0 & 0 & 0 \\    0 & 0 & 0 & 0 \\    0 & 0 & 0 & 0\end{bmatrix}$$

### (i) Find the rank of $A$.

The three pivots in the row echelon form tells us that $\operatorname{rank}(A)=3$.

### (ii) Find a basis for the $\operatorname{ker}(A)$. What is its dimension?

$$
\operatorname{rref}\begin{bmatrix}
    1 & 2 & 0 & 3 \\
    0 & 0 & 3 & 1 \\
    0 & 0 & 0 & 2 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{bmatrix} = \begin{bmatrix}
    1 & 2 & 0 & 0 \\
    0 & 0 & 1 & 0 \\
    0 & 0 & 0 & 1 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{bmatrix} \\
\therefore\ker(A) = \Set{
    \begin{pmatrix}
        -2x_2 \\
        x_2 \\
        0 \\
        0
    \end{pmatrix}: x_2\in\R
} = \Set{
    x\begin{pmatrix}
        -2 \\ 1 \\ 0 \\ 0
    \end{pmatrix}: x\in\R
}
$$

A basis for $\ker(A)$ is $\Set{\begin{pmatrix}
    -2 \\ 1 \\ 0 \\ 0
\end{pmatrix}}$ and its dimension is $1$.

### (iii) Find the subset of the columns of $A$ so that it forms a basis for the $\operatorname{Im}(A)$. What is the dimension of $\operatorname{Im}(A)$?

The pivots in the row echelon form of $A$ are at columns one, three, and four. Correspondingly, the basis for $\operatorname{Im}(A)$ is $\set{\mathbf{v}_1, \mathbf{v}_3, \mathbf{v}_4}$ and its dimension is $3$.


## 6. Book Question 26, 27, 53, 55, 56.

In Exercises 25 through 30, find the matrix $B$ of the linear transformation $T(\vec{x})=A\vec{x}$ with respect to the basis $\mathfrak{B}=(\vec{v}_1,\ldots,\vec{v}_m)$.

### 26. $A = \begin{bmatrix}    0 & 1 \\    2 & 3\end{bmatrix};\vec{v}_1 =\begin{bmatrix}    1 \\ 2\end{bmatrix},\vec{v}_2 =\begin{bmatrix}    1 \\ 1\end{bmatrix}$

Let $P$ be a matrix composed of column vectors $\set{\vec{v}_1, \vec{v}_2}$ such that $P = \begin{pmatrix}
    1 & 1 \\
    2 & 1
\end{pmatrix}$.

Then:

$$
P^{-1}AP = B \\
\begin{align*} \\
    \therefore B &= \begin{pmatrix}
        1 & 1 \\
        2 & 1
    \end{pmatrix}^{-1} \begin{pmatrix}
        0 & 1 \\
        2 & 3
    \end{pmatrix} \begin{pmatrix}
        1 & 1 \\
        2 & 1
    \end{pmatrix} \\
    &= \begin{pmatrix}
        -1 & 1 \\
        2 & -1
    \end{pmatrix} \begin{pmatrix}
        0 & 1 \\
        2 & 3
    \end{pmatrix} \begin{pmatrix}
        1 & 1 \\
        2 & 1
    \end{pmatrix} \\
    &= \begin{pmatrix}
         6 & 4 \\
         -4 & 3
    \end{pmatrix}
\end{align*}
$$



### 27. $A = \begin{bmatrix}    4 & 2 & −4 \\    2 & 1 & −2 \\    −4 & −2 & 4\end{bmatrix};\vec{v}_1 = \begin{bmatrix}    2 \\ 1 \\ −2\end{bmatrix},\vec{v}_2 =\begin{bmatrix}    0 \\ 2 \\ 1\end{bmatrix},\vec{v}_3 =\begin{bmatrix}    1 \\ 0 \\ 1\end{bmatrix}$

Let $P$ be a matrix composed of column vectors $\set{\vec{v}_1,\vec{v}_2,\vec{v}_3}$ such that $P=\begin{pmatrix}
    2 & 0 & 1 \\
    1 & 2 & 0 \\
    -2 & 1 & 1
\end{pmatrix}$.

Then:

$$
P^{-1}AP = B \\
\begin{align*}
    \therefore B &= \begin{pmatrix}
        2 & 0 & 1 \\
        1 & 2 & 0 \\
        -2 & 1 & 1
    \end{pmatrix}^{-1} \begin{pmatrix}
        4 & 2 & -4 \\
        2 & 1 & -2 \\
        -4 & -2 & 4
    \end{pmatrix} \begin{pmatrix}
        2 & 0 & 1 \\
        1 & 2 & 0 \\
        -2 & 1 & 1
    \end{pmatrix} \\
    &= \frac{1}{9}\begin{pmatrix}
        2 & 1 & -2 \\
        -1 & 4 & 1 \\
        5 & -2 & 4
    \end{pmatrix} \begin{pmatrix}
        4 & 2 & -4 \\
        2 & 1 & -2 \\
        -4 & -2 & 4
    \end{pmatrix} \begin{pmatrix}
        2 & 0 & 1 \\
        1 & 2 & 0 \\
        -2 & 1 & 1
    \end{pmatrix} \\
    &= \begin{pmatrix}
        9 & 0 & 0 \\
        0 & 0 & 0 \\
        0 & 0 & 0
    \end{pmatrix}
\end{align*}
$$


### 53. Consider the basis $\mathfrak{B}$ of $\R^2$ consisting of the vectors $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and $\begin{bmatrix}    3 \\ 4\end{bmatrix}$. We are told that $\begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    7 \\ 11\end{bmatrix}$ for a certain vector $\vec{x}$ in $\R^2$. Find $\vec{x}$.

Let $P = \begin{pmatrix}
    1 & 3 \\
    2 & 4
\end{pmatrix}$. Then:

$$
\begin{align*}
    \vec{x} &= P[\vec{x}]_\mathfrak{B} \\
    &= \begin{pmatrix}
        1 & 3 \\
        2 & 4
    \end{pmatrix} \begin{pmatrix}
        7 \\ 11
    \end{pmatrix} \\
    &= \begin{pmatrix}
        40 \\ 58
    \end{pmatrix}
\end{align*}
$$


### 55. Consider the basis $\mathfrak{B}$ of $\R^2$ consisting of the vectors $\begin{bmatrix}    1 \\ 1\end{bmatrix}$ and $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and let $\mathfrak{R}$ be the basis consisting of $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and $\begin{bmatrix}    3 \\ 4\end{bmatrix}$. Find a matrix $P$ such that $\begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{R} = P \begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{B}$, for all $\vec{x}$ in $\R^2$.

Let $U$ and $V$ be a matrix composed of the basis vectors of $\mathfrak{B}$ and $\mathfrak{R}$ where

$$
U = \begin{pmatrix}
    1 & 1 \\
    1 & 2
\end{pmatrix},\quad
V = \begin{pmatrix}
    1 & 3 \\
    2 & 4
\end{pmatrix}.
$$

By definition:

$$
\vec{x} = U[\vec{x}]_\mathfrak{B} \\
\vec{x} = V[\vec{x}]_\mathfrak{R}
$$

Applying the inverse for one of them yields:

$$
V^{-1}\vec{x} = [\vec{x}]_\mathfrak{R}
$$

Then, writing $\vec{x}$ as a $U$ transformation:

$$
\begin{align*}
    [\vec{x}]_\mathfrak{R} &= V^{-1}\vec{x} \\
    &= \underbrace{V^{-1}U}_P [\vec{x}]_\mathfrak{B}
\end{align*}
$$

By comparison, $P=V^{-1}U$.

$$
\begin{align*}
    \therefore P &= V^{-1}U \\
    &= \begin{pmatrix}
        1 & 3 \\
        2 & 4
    \end{pmatrix}^{-1} \begin{pmatrix}
        1 & 1 \\
        1 & 2
    \end{pmatrix} \\
    &= \begin{pmatrix}
        -2 & \frac{3}{2} \\
        1 & -\frac{1}{2}
    \end{pmatrix}^{-1} \begin{pmatrix}
        1 & 1 \\
        1 & 2
    \end{pmatrix} \\
    &= \begin{pmatrix}
        -\frac{1}{2} & 1 \\
        \frac{1}{2} & 0
    \end{pmatrix} \\
    &= \frac{1}{2} \begin{pmatrix}
        -1 & 2 \\
        1 & 0
    \end{pmatrix}
\end{align*}
$$


### 56. Find a basis $\mathfrak{B}$ of $\R^2$ such that $\begin{bmatrix}    1 \\ 2\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    3 \\ 5\end{bmatrix}$ and $\begin{bmatrix}    3\\ 4\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    2 \\ 3\end{bmatrix}$.

Let $P = \begin{pmatrix}
    | & | \\
    \vec{v}_1 & \vec{v}_2 \\
    | & |
\end{pmatrix}$ for some vectors $\vec{v}_1,\vec{v}_2\in\R^2$.

Then, by $\vec{x}\overset{\Delta}{=}P[\vec{x}]_\mathfrak{B}$, we have:

$$
\begin{cases}
    \begin{pmatrix}
        1 \\ 2
    \end{pmatrix} = P\begin{pmatrix}
        3 \\ 5
    \end{pmatrix} \\
    \begin{pmatrix}
        3 \\ 4
    \end{pmatrix} = P\begin{pmatrix}
        2 \\ 3
    \end{pmatrix}
\end{cases}
\implies
P\begin{pmatrix}
    3 & 2 \\
    5 & 3
\end{pmatrix} = \begin{pmatrix}
    1 & 3 \\
    2 & 4
\end{pmatrix} \\
\begin{align*}
    \therefore P &= \begin{pmatrix}
        1 & 3 \\
        2 & 4
    \end{pmatrix}\begin{pmatrix}
        3 & 2 \\
        5 & 3
    \end{pmatrix}^{-1} \\
    &= \begin{pmatrix}
        1 & 3 \\
        2 & 4
    \end{pmatrix}\begin{pmatrix}
        -3 & 2 \\
        5 & -3
    \end{pmatrix} \\
    &= \begin{pmatrix}
        12 & -7 \\
        14 & -8
    \end{pmatrix}
\end{align*}
$$

As such, $\mathfrak{B} = \Set{\begin{pmatrix}
    12 \\ 14
\end{pmatrix}, \begin{pmatrix}
    -7 \\ -8
\end{pmatrix}}$.
