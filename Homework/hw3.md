---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 3

## 1. Find the matrix representation for the following linear transformations.


### (a) $T(x_1, x_2, x_3) = (3x_1 - x_2, x_2 + x_3, x_1 - x_2 - x_3)$

$$
T: \R^3 \to \R^3 \\
T(\vec{x}) =
\begin{pmatrix}
    3 & -1 & 0 \\
    0 & 1 & 1 \\
    1 & -1 & -1
\end{pmatrix}
\begin{pmatrix}
    x_1 \\ x_2 \\ x_3
\end{pmatrix}
$$


### (b) $T$ maps $\begin{bmatrix}    1 \\ 0 \\ 1\end{bmatrix}$, and$\begin{bmatrix}    0 \\ 1 \\ 0\end{bmatrix}$ and$\begin{bmatrix}    0 \\ 0 \\ 1\end{bmatrix}$ respectively to$\begin{bmatrix}    0 \\ 1\end{bmatrix}$ ,$\begin{bmatrix}    1 \\ 1\end{bmatrix}$ ,$\begin{bmatrix}    1 \\ -1\end{bmatrix}$

$$
T: \R^3 \to \R^2 \\
T(\vec{x}) =
\begin{pmatrix}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    1 & 0 & 1
\end{pmatrix}
\begin{pmatrix}
    x_1 \\ x_2
\end{pmatrix}
$$


### (c\) $T(x_1, x_2) = x_1 \begin{bmatrix}    1 \\ 1 \\ 2\end{bmatrix} + x_2 \begin{bmatrix}    -1 \\ 1 \\ 5\end{bmatrix}$

$$
T: \R^2 \to \R^3 \\
T(\vec{x}) =
\begin{pmatrix}
    1 & -1 \\
    1 & 1 \\
    2 & 5
\end{pmatrix}
\begin{pmatrix}
    x_1 \\ x_2
\end{pmatrix}
$$


> ##  2. Sketch the image of the square formed by vertices $(0, 0)$, $(0, 1)$, $(1, 0)$ and $(1, 1)$ under the linear transformation $T(\mathbf{x}) = \begin{bmatrix} 1 & -1 \\ 2 & 3\end{bmatrix}\mathbf{x}$.

> ##  3. Sketch the image of the triangle formed by vertices $(-1, 1)$, $(1, 0)$ and $(1, 1)$ under the linear transformation $T(\mathbf{x}) = \begin{bmatrix} 4 & -1 \\ 0 & 1\end{bmatrix}\mathbf{x}$.

> ## 4. Let $A=\begin{bmatrix} 1 & 2 \\ 4 & -3\end{bmatrix}$.

> ### (a) Find $A^2$ and $A^3$.

> ### (b) Find $2A^3 - 4A + 5I_2$ and $A^2 + 2A + 11I_2$.

> ## 5. Let $\mathbf{v} = \begin{bmatrix}    v_1 \\ v_2 \\ v_3\end{bmatrix}$, $\mathbf{v}^T = \begin{bmatrix}    v_1 & v_2 & v_3\end{bmatrix}$, and $v_1 \neq 0$.

> ### (a) Find $\mathbf{v}^T\mathbf{v}$ and $\mathbf{vv}^T$.

> ### (b) If $\mathbf{v}\neq\mathbf{0}$, verify that the rank of $\mathbf{v}^T\mathbf{v}$ and $\mathbf{vv}^T$ are $1$.

