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


### (b)$$\begin{bmatrix}    1 & 2 & 30 \\    0 & 5 & 5 \\    0 & 0 & 2 \\\end{bmatrix}$$

$$
\begin{bmatrix}
    1 & 2 & 30 \\
    0 & 5 & 5 \\
    0 & 0 & 2 \\
\end{bmatrix}
$$

### (c\)$$\begin{bmatrix}    1 & 3 & 3 \\    3 & 1 & 6 \\    -1 & 2 & 2 \\\end{bmatrix}$$

### (d) $$\begin{bmatrix}    1 & 3 & 3 & 3 \\    1 & 0 & 1 & 1 \\    0 & 0 & 1 & 1 \\    0 & 0 & 0 & 1 \\\end{bmatrix}$$

### (e)
$$\begin{bmatrix}\cos \theta & -\sin \theta \\\sin \theta & \cos \theta \\\end{bmatrix}$$
$$
\begin{bmatrix}
\cos \theta & -\sin \theta \\
\sin \theta & \cos \theta \\
\end{bmatrix}
$$


## 2. Let $T:\R^3\to\R^3$ be a linear transformation that maps the standard vector $\mathbf{e}_1$, $\mathbf{e}_2$ and $\mathbf{e}_3$ to $\begin{bmatrix}    1 \\ 1 \\ 0\end{bmatrix}$, $\begin{bmatrix}    1 \\ 0 \\ 0\end{bmatrix}$ and $\begin{bmatrix}    1 \\ 1 \\ 1\end{bmatrix}$. Is $T$ invertible? Explain.

## 3.

### (a) Find invertible matrix $A$, $B$ such that $A + B$ is not invertible.
### (b) Find non-invertible matrix $A$, $B$ such that $A + B$ is invertible.


## 4. For which values of the constant $a$, $b$ is the following matrix not invertible? $$\begin{bmatrix}    a & b & b \\    a & a & b \\    a & a & a \\\end{bmatrix}$$ (Hint: find its row echelon form)

$$
\begin{bmatrix}
    a & b & b \\
    a & a & b \\
    a & a & a \\
\end{bmatrix}
$$

## 5. Determine if the following statement true or false.

### (a) If a matrix $A$ has a completely zero row, then it is not invertible.

### (b) Upper triangular matrices are always invertible.

### (c\) If $A$ is invertible, then $Ax = 0$ may have non-trivial solution.

### (d) If $AB$ is invertible, then $A$ is invertible.

## (6) For the matrices $A$, $B$ are invertible, Is the following true? If it is true, verify it. If it is false, give an example to explain why it is false.

### (i) $(A^2)^{-1} = (A^{-1})^2$

### (ii) $(A+B)^{-1} = A^{-1} + B^{-1}$

## 7.

### (i) Let $A$ be an $n \times n$ matrix. Expand $(I - A)(I + A + A^2)$.

### (ii) Suppose that $A^3 = O$, the zero matrix. Use (i), find $(I - A)^{-1}$ in terms of $A$.

### (iv) (Bonus 1 point) If $A^k = O$, find $(I - A)^{-1}$.
