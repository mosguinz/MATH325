---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 4

## 1. Compute the inverse of the following matrices.

### (a) $$\begin{bmatrix}    4 & 2 \\    3 & -1 \\\end{bmatrix}$$

Using the fact that $\begin{bmatrix}    4 & 2 \\    3 & -1 \\\end{bmatrix}$ is a $2\times2$ matrix such that:

$$
\det\(
\begin{bmatrix}
    4 & 2 \\
    3 & -1
\end{bmatrix}
\) =
4(-1) - 3(2) = -10 \neq 0
$$

Then:
$$
\begin{bmatrix}
    4 & 2 \\
    3 & -1
\end{bmatrix}^{-1} =
-\frac{1}{10}
\begin{bmatrix}
    -1 & -2 \\
    -3 & 4
\end{bmatrix} =
\begin{bmatrix}
    \frac{1}{10} & \frac{1}{5} \\[.5em]
    \frac{3}{10} & -\frac{2}{5}
\end{bmatrix}
$$


### (b) $$\begin{bmatrix}    1 & 2 & 30 \\    0 & 5 & 5 \\    0 & 0 & 2 \end{bmatrix}$$

$$
\begin{array}{c}
    \left[
        \begin{array}{ccc|c}
        1 & 2 & 30 & 1 & 0 & 0 \\
        0 & 5 & 5 & 0 & 1 & 0 \\
        0 & 0 & 2 & 0 & 0 & 1
        \end{array}
    \right]
    &\xrightarrow[\frac{1}{2}R_3]{\frac{1}{5}R_2}
    &\left[
        \begin{array}{ccc|c}
        1 & 2 & 30 & 1 & 0 & 0 \\
        0 & 1 & 1 & 0 & \frac{1}{5} & 0 \\
        0 & 0 & 1 & 0 & 0 & \frac{1}{2}
        \end{array}
    \right]
    \\
    &\xrightarrow[R_1 - 30R_3]{R_2 - R_3}
    &\left[
        \begin{array}{ccc|c}
        1 & 2 & 0 & 1 & 0 & -15 \\
        0 & 1 & 0 & 0 & \frac{1}{5} & -\frac{1}{2} \\
        0 & 0 & 1 & 0 & 0 & \frac{1}{2}
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - 2R_2}
    &\left[
        \begin{array}{ccc|ccc}
        1 & 0 & 0 & 1 & -\frac{2}{5} & -14 \\
        0 & 1 & 0 & 0 & \frac{1}{5} & -\frac{1}{2} \\
        0 & 0 & 1 & 0 & 0 & \frac{1}{2}
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore
\begin{bmatrix}
    1 & 2 & 30 \\
    0 & 5 & 5 \\
    0 & 0 & 2
\end{bmatrix}^{-1} =
\begin{bmatrix}
    1 & -\frac{2}{5} & -14 \\
    0 & \frac{1}{5} & -\frac{1}{2} \\
    0 & 0 & \frac{1}{2}
\end{bmatrix} =
\frac{1}{10}
\begin{bmatrix}
    10 & -4 & -140 \\
    0 & 2 & -5 \\
    0 & 0 & 5
\end{bmatrix}
$$

### (c\) $$\begin{bmatrix}    1 & 3 & 3 \\    3 & 1 & 6 \\    -1 & 2 & 2 \end{bmatrix}$$

$$
\def\arraystretch{1.2em}
\begin{array}{c}
    \left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            3 & 1 & 6 & 0 & 1 & 0 \\
            -1 & 2 & 2 & 0 & 0 & 1
        \end{array}
    \right]
    &\xrightarrow[R_3 + R_1]{R_2 + 3R_3}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            0 & 7 & 12 & 0 & 1 & 3 \\
            0 & 5 & 5 & 1 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow[\frac{1}{5}R_3]{R_2 - R_3}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            0 & 2 & 7 & -1 & 1 & 2 \\
            0 & 1 & 1 & \frac{1}{5} & 0 & \frac{1}{5}
        \end{array}
    \right]
    \\
    &\xrightarrow{R_2 - R_3}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            0 & 1 & 6 & -\frac{6}{5} & 1 & \frac{9}{5} \\
            0 & 1 & 1 & \frac{1}{5} & 0 & \frac{1}{5}
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 - R_2}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            0 & 1 & 6 & -\frac{6}{5} & 1 & \frac{9}{5} \\
            0 & 0 & -5 & \frac{7}{5} & -1 & -\frac{8}{5}
        \end{array}
    \right]
    \\
    &\xrightarrow{-\frac{1}{5}R_3}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 3 & 1 & 0 & 0 \\
            0 & 1 & 6 & -\frac{6}{5} & 1 & \frac{9}{5} \\
            0 & 0 & 1 & -\frac{7}{25} & \frac{1}{5} & \frac{8}{25}
        \end{array}
    \right]
    \\
    &\xrightarrow[R_2 - 6R_3]{R_1 - 3R_3}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 3 & 0 & \frac{46}{25} & -\frac{3}{5} & -\frac{24}{25} \\
            0 & 1 & 0 & \frac{12}{25} & -\frac{1}{5} & -\frac{3}{25} \\
            0 & 0 & 1 & -\frac{7}{25} & \frac{1}{5} & \frac{8}{25}
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - 3R_2}
    &\left[
        \begin{array}{ccc|ccc}
            1 & 0 & 0 & \frac{2}{5} & 0 & -\frac{3}{5} \\
            0 & 1 & 0 & \frac{12}{25} & -\frac{1}{5} & -\frac{3}{25} \\
            0 & 0 & 1 & -\frac{7}{25} & \frac{1}{5} & \frac{8}{25}
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore
\begin{bmatrix}
    1 & 3 & 3 \\
    3 & 1 & 6 \\
    -1 & 2 & 2
\end{bmatrix}^{-1} =
\begin{bmatrix}
    \frac{2}{5} & 0 & -\frac{3}{5} \\
    \frac{12}{25} & -\frac{1}{5} & -\frac{3}{25} \\
    -\frac{7}{25} & \frac{1}{5} & \frac{8}{25}
\end{bmatrix} =
\frac{1}{25}
\begin{bmatrix}
    10 & 0 & -15 \\
    12 & -5 & -3 \\
    -7 & 5 & 8
\end{bmatrix}
$$


### (d) $$\begin{bmatrix}    1 & 3 & 3 & 3 \\    1 & 0 & 1 & 1 \\    0 & 0 & 1 & 1 \\    0 & 0 & 0 & 1 \end{bmatrix}$$

$$
\begin{array}{c}
    \left[
        \begin{array}{cccc|cccc}
            1 & 3 & 3 & 3 & 1 & 0 & 0 & 0 \\
            1 & 0 & 1 & 1 & 0 & 1 & 0 & 0 \\
            0 & 0 & 1 & 1 & 0 & 0 & 1 & 0 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
    &\xrightarrow[R_3 - R_4]{R_2 - R_3}
    &\left[
        \begin{array}{cccc|cccc}
            1 & 3 & 3 & 3 & 1 & 0 & 0 & 0 \\
            1 & 0 & 0 & 0 & 0 & 1 & -1 & 0 \\
            0 & 0 & 1 & 0 & 0 & 0 & 1 & -1 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - 3R_3}
    &\left[
        \begin{array}{cccc|cccc}
            1 & 3 & 0 & 3 & 1 & 0 & -3 & 3 \\
            1 & 0 & 0 & 0 & 0 & 1 & -1 & 0 \\
            0 & 0 & 1 & 0 & 0 & 0 & 1 & -1 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - 3R_4}
    &\left[
        \begin{array}{cccc|cccc}
            1 & 3 & 0 & 0 & 1 & 0 & -3 & 0 \\
            1 & 0 & 0 & 0 & 0 & 1 & -1 & 0 \\
            0 & 0 & 1 & 0 & 0 & 0 & 1 & -1 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - R_2}
    &\left[
        \begin{array}{cccc|cccc}
            0 & 3 & 0 & 0 & 1 & -1 & -2 & 0 \\
            1 & 0 & 0 & 0 & 0 & 1 & -1 & 0 \\
            0 & 0 & 1 & 0 & 0 & 0 & 1 & -1 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow[\frac{1}{3}R_2]{R_1 \leftrightarrow R_2}
    &\left[
        \begin{array}{cccc|cccc}
            1 & 0 & 0 & 0 & 0 & 1 & -1 & 0 \\
            0 & 1 & 0 & 0 & \frac{1}{3} & -\frac{1}{3} & -\frac{2}{3} & 0 \\
            0 & 0 & 1 & 0 & 0 & 0 & 1 & -1 \\
            0 & 0 & 0 & 1 & 0 & 0 & 0 & 1
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore
\begin{bmatrix}
    1 & 3 & 3 & 3 \\
    1 & 0 & 1 & 1 \\
    0 & 0 & 1 & 1 \\
    0 & 0 & 0 & 1
\end{bmatrix}^{-1} =
\begin{bmatrix}
    0 & 1 & -1 & 0 \\
    \frac{1}{3} & -\frac{1}{3} & -\frac{2}{3} & 0 \\
    0 & 0 & 1 & -1 \\
    0 & 0 & 0 & 1
\end{bmatrix} =
\frac{1}{3}
\begin{bmatrix}
    0 & 3 & -3 & 0 \\
    1 & -1 & -2 & 0 \\
    0 & 0 & 3 & -3 \\
    0 & 0 & 0 &  3
\end{bmatrix}
$$


### (e) $$\begin{bmatrix}\cos \theta & -\sin \theta \\\sin \theta & \cos \theta \end{bmatrix}$$
$$
\begin{bmatrix}
\cos \theta & -\sin \theta \\
\sin \theta & \cos \theta
\end{bmatrix}
$$

Using the fact that $\begin{bmatrix}\cos \theta & -\sin \theta \\\sin \theta & \cos \theta \end{bmatrix}$ is a $2\times2$ matrix such that:

$$
\det\(
\begin{bmatrix}
    \cos \theta & -\sin \theta \\
    \sin \theta & \cos \theta
\end{bmatrix}
\) =
\cos^2\theta - (-\sin\theta\sin\theta)
= \cos^2\theta + \sin^2\theta =  1 \neq 0
$$

Then:
$$
\begin{bmatrix}
    \cos \theta & -\sin \theta \\
    \sin \theta & \cos \theta
\end{bmatrix}^{-1} =
\frac{1}{1}
\begin{bmatrix}
    \cos \theta & \sin \theta \\
    -\sin \theta & \cos \theta
\end{bmatrix} =
\begin{bmatrix}
    \cos \theta & \sin \theta \\
    -\sin \theta & \cos \theta
\end{bmatrix}
$$



## 2. Let $T:\R^3\to\R^3$ be a linear transformation that maps the standard vector $\mathbf{e}_1$, $\mathbf{e}_2$ and $\mathbf{e}_3$ to $\begin{bmatrix}    1 \\ 1 \\ 0\end{bmatrix}$, $\begin{bmatrix}    1 \\ 0 \\ 0\end{bmatrix}$ and $\begin{bmatrix}    1 \\ 1 \\ 1\end{bmatrix}$. Is $T$ invertible? Explain.

$$
T: \R^3 \to \R^3 \\
T(\vec{x}) = \begin{bmatrix}
    1 & 1 & 1 \\
    1 & 0 & 1 \\
    0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
    x_1 \\ x_2 \\ x_3
\end{bmatrix}
$$

Let $ A = \begin{bmatrix}
    1 & 1 & 1 \\
    1 & 0 & 1 \\
    0 & 0 & 1 \end{bmatrix}$. Then, $T^{-1}$ exists if $A^{-1}$ exists.

$$
\begin{array}{c}
    \left[
        \begin{array}{ccc}
            1 & 1 & 1 \\
            1 & 0 & 1 \\
            0 & 0 & 1
        \end{array}
    \right]
    &\xrightarrow[R_2 - R_3]{R_1 - R_2}
    &\left[
        \begin{array}{ccc}
            0 & 1 & 0 \\
            1 & 0 & 0 \\
            0 & 0 & 1
        \end{array}
    \right]
    &\xrightarrow{R_1 \leftrightarrow R_2}
    &\left[
        \begin{array}{ccc}
            1 & 0 & 0 \\
            0 & 1 & 0 \\
            0 & 0 & 1
        \end{array}
    \right]
\end{array}
$$

$A$ has a full rank. Therefore, $T$ is invertible.

## 3.

### (a) Find invertible matrix $A$, $B$ such that $A + B$ is not invertible.

An $n\times n$ matrix $M$ is invertible if and only if $\operatorname{rank}(M) = n$.

Let $A$ and $B$ be $1\times1$ matrices.

$$
\begin{array}{c}
    A = \begin{bmatrix}
        1
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(A) = 1
    &\implies
    &A^{-1} =
    \begin{bmatrix}
        1
    \end{bmatrix}
    \\
    B = \begin{bmatrix}
        -1
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(B) = 1
    &\implies
    &B^{-1} =
    \begin{bmatrix}
        -1
    \end{bmatrix}
\end{array}
$$

Hence, $A$ and $B$ are invertible.

$$
\begin{array}{c}
    A + B =
    \begin{bmatrix}
        1
    \end{bmatrix}
    +
    \begin{bmatrix}
        -1
    \end{bmatrix} =
    \begin{bmatrix}
        0
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(A+B) = 0 \neq 1
\end{array}
$$

Hence, $A+B$ is not invertible.


### (b) Find non-invertible matrix $A$, $B$ such that $A + B$ is invertible.

Let $A$ and $B$ be $2\times2$ matrices.

$$
\begin{array}{c}
    A = \begin{bmatrix}
        1 & 0 \\
        0 & 0
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(A) = 1 \neq 2
    \\
    B = \begin{bmatrix}
        0 & 0 \\
        0 & 1
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(B) = 1 \neq 2
\end{array}
$$

Hence, $A$ and $B$ are not invertible.

$$
\\
\begin{array}{ccl}
    A + B =
    \begin{bmatrix}
        1 & 0 \\
        0 & 0
    \end{bmatrix} +
    \begin{bmatrix}
        0 & 0 \\
        0 & 1
    \end{bmatrix} =
    \begin{bmatrix}
        1 & 0 \\
        0 & 1
    \end{bmatrix}
    &\implies
    &\operatorname{rank}(A+B) = 2
    \\
    &\implies
    &(A+B)^{-1} =
    \begin{bmatrix}
        1 & 0 \\
        0 & 1
    \end{bmatrix}
\end{array}
$$

Hence, $A+B$ is invertible.


## 4. For which values of the constant $a$, $b$ is the following matrix not invertible? $$\begin{bmatrix}    a & b & b \\    a & a & b \\    a & a & a \end{bmatrix}$$ (Hint: find its row echelon form)

$$
\begin{array}{c}
    \begin{bmatrix}
        a & b & b \\
        a & a & b \\
        a & a & a
    \end{bmatrix}
    &\xrightarrow[R_3 - R_2]{R_2 - R_1}
    &\begin{bmatrix}
        a & b & b \\
        0 & a-b & 0 \\
        0 & 0 & a-b
    \end{bmatrix}
\end{array}
$$

The matrix is not invertible if $a = b$ or $a=0$.

## 5. Determine if the following statement true or false.

### (a) If a matrix $A$ has a completely zero row, then it is not invertible.

True. If an $n\times n $ matrix $A$ contains a zero row, then $\operatorname{rank}(A) < n$.

### (b) Upper triangular matrices are always invertible.

False. If there is a zero on the major diagonal, then they will not have a full rank.

### (c\) If $A$ is invertible, then $Ax = 0$ may have non-trivial solution.

False. $\operatorname{rref}(A)$ would be the identity matrix and therefore $A\vec{x} = \vec{0} \iff \vec{x} = \vec{0}$.

### (d) If $AB$ is invertible, then $A$ is invertible.

False. Let $A$ be an $m\times n$ matrix and $B$ be an $n\times m$ for nonzero $m\neq n$.

$A$ and $B$ are not invertible because they are not square matrices. $AB$ is an $m\times m$ square matrix and *could* be invertible if $\operatorname{rank}(AB) = n$.

For example: let $A = \begin{bmatrix}1 & 1\end{bmatrix}$ and $B =\begin{bmatrix}1 \\ 1\end{bmatrix}$. Then, $AB = \begin{bmatrix}2\end{bmatrix} \implies (AB)^{-1} = \begin{bmatrix}\displaystyle\frac{1}{2}\end{bmatrix}$.


## 6. For the matrices $A$, $B$ are invertible, Is the following true? If it is true, verify it. If it is false, give an example to explain why it is false.

### (i) $(A^2)^{-1} = (A^{-1})^2$


True.

$$
\begin{align*}
    (A^2)^{-1} &= (AA)^{-1} \\
    &= A^{-1} A^{-1} \\
    &= (A^{-1})^2
\end{align*}
$$


### (ii) $(A+B)^{-1} = A^{-1} + B^{-1}$

False. Let $A = B = \begin{bmatrix} 1 \end{bmatrix}$. Then:

$$
(A+B)^{-1} = \begin{bmatrix}
    2
\end{bmatrix}^{-1} = \begin{bmatrix}
    \displaystyle\frac{1}{2}
\end{bmatrix} \\
A^{-1} + B^{-1} = \begin{bmatrix}
    1
\end{bmatrix} + \begin{bmatrix}
    1
\end{bmatrix} = \begin{bmatrix}
    2
\end{bmatrix} \\[1em]
\therefore (A+B)^{-1} \neq A^{-1} + B^{-1}
$$

## 7.

### (i) Let $A$ be an $n \times n$ matrix. Expand $(I - A)(I + A + A^2)$.

$$
\begin{align*}
    (I - A)(I + A + A^2) &= I(I-A) + A(I-A) + A^2(I-A) \\
    &= I^2 \cancel{\thinspace- AI + AI - A^2 + A^2I }- A^3
    \qquad\qquad\boxed{A^2I = A^2} \\
    &= I^2 - A^3 \\
    &= I - A^3
\end{align*}
$$


### (ii) Suppose that $A^3 = O$, the zero matrix. Use (i), find $(I - A)^{-1}$ in terms of $A$.

$$
\begin{align*}
    (I - A)(I + A + A^2) = I
    &\iff (I - A)^{-1}(I + A + A^2) = I \\
    &\iff (I - A)(I + A + A^2)^{-1} = I
\end{align*}
\\[1em]
\therefore (I-A)^{-1} = (I+A+A^2)
$$


> ### (iv) (Bonus 1 point) If $A^k = O$, find $(I - A)^{-1}$.
