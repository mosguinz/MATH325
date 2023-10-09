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

$$
A =
\begin{bmatrix}
    1 & 2 & 4 & −2 & 2 \\
    2 & 4 & 6 & 1 & 1 \\
    2 & 3 & 4 & 1 & 1
\end{bmatrix},
B =
\begin{bmatrix}
    1 & −2 & 3 \\
    −3 & 6 & −9 \\
    −2 & 4 & −6 \\
    3 & 0 & −1
\end{bmatrix}
$$


## 4. Let $S = \Set{    \begin{bmatrix}        1 \\ 2 \\ 3    \end{bmatrix},    \begin{bmatrix}        4 \\ 5 \\ 6    \end{bmatrix},    \begin{bmatrix}        7 \\ 8 \\ 9    \end{bmatrix},    \begin{bmatrix}        10 \\ 1 \\ 2    \end{bmatrix},    \begin{bmatrix}        13 \\ 4 \\ 5    \end{bmatrix}}$. Is it possible to extract a basis for $\R^3$ from the set $S$? Explain.


$$
S = \Set{
    \begin{bmatrix}
        1 \\ 2 \\ 3
    \end{bmatrix},
    \begin{bmatrix}
        4 \\ 5 \\ 6
    \end{bmatrix},
    \begin{bmatrix}
        7 \\ 8 \\ 9
    \end{bmatrix},
    \begin{bmatrix}
        10 \\ 1 \\ 2
    \end{bmatrix},
    \begin{bmatrix}
        13 \\ 4 \\ 5
    \end{bmatrix}
}
$$

## 5. Let A be the 6 ×4 matrix with $A = \begin{bmatrix}    | & | & | & | \\    v_1 & v_2 & v_3 & v_4 \\    | & | & | & |\end{bmatrix}$. Suppose that after Gaussian elimination, the row echelon form of $A$ is given by $$\begin{bmatrix}    1 & 2 & 0 & 3 \\    0 & 0 & 3 & 1 \\    0 & 0 & 0 & 2 \\    0 & 0 & 0 & 0 \\    0 & 0 & 0 & 0 \\    0 & 0 & 0 & 0\end{bmatrix}$$

$$
\begin{bmatrix}
    1 & 2 & 0 & 3 \\
    0 & 0 & 3 & 1 \\
    0 & 0 & 0 & 2 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{bmatrix}
$$

### (i) Find the rank of $A$.
### (ii) Find a basis for the $\operatorname{ker}(A)$. What is its dimension?
### (iii) Find the subset of the columns of $A$ so that it forms a basis for the $\operatorname{Im}(A)$. What is the dimension of $\operatorname{Im}(A)$?


## 6. Book Question 26, 27, 53, 55, 56.

In Exercises 25 through 30, find the matrix B of the linear transformation $T(\vec{x})=A\vec{x}$ with respect to the basis $\mathfrak{B}=(\vec{v}_1,\ldots,\vec{v}_m)$.

### 26. $A = \begin{bmatrix}    0 & 1 \\    2 & 3\end{bmatrix};v_1 =\begin{bmatrix}    1 \\ 2\end{bmatrix},v_2 =\begin{bmatrix}    1 \\ 1\end{bmatrix}$

### 27. $A = \begin{bmatrix}    4 & 2 & −4 \\    2 & 1 & −2 \\    −4 & −2 & 4\end{bmatrix};v_1 = \begin{bmatrix}    2 \\ 1 \\ −2\end{bmatrix},v_2 =\begin{bmatrix}    0 \\ 2 \\ 1\end{bmatrix},v_3 =\begin{bmatrix}    1 \\ 0 \\ 1\end{bmatrix}$

### 53. Consider the basis $\mathfrak{B}$ of $\R^2$ consisting of the vectors $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and $\begin{bmatrix}    3 \\ 4\end{bmatrix}$. We are told that $\begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    7 \\ 11\end{bmatrix}$ for a certain vector $\vec{x}$ in $\R^2$. Find $\vec{x}$.

### 55. Consider the basis $\mathfrak{B}$ of $\R^2$ consisting of the vectors $\begin{bmatrix}    1 \\ 1\end{bmatrix}$ and $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and let $\mathfrak{R}$ be the basis consisting of $\begin{bmatrix}    1 \\ 2\end{bmatrix}$ and $\begin{bmatrix}    3 \\ 4\end{bmatrix}$. Find a matrix $P$ such that $\begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{R} = P \begin{bmatrix}    \vec{x}\end{bmatrix}_\mathfrak{B}$, for all $\vec{x}$ in $\R^2$.

### 56. Find a basis $\mathfrak{B}$ of $\R^2$ such that $\begin{bmatrix}    1 \\ 2\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    3 \\ 5\end{bmatrix}$ and $\begin{bmatrix}    3\\ 4\end{bmatrix}_\mathfrak{B} = \begin{bmatrix}    2 \\ 3\end{bmatrix}$.
