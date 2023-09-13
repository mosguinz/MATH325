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
    1 & 1 & 1 \\
    0 & 1 & -1 \\
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

$$
\begin{array}{c}
    T\begin{bmatrix}
        0 \\ 0
    \end{bmatrix} =
    \begin{bmatrix}
        1 & -1 & 0 \\
        2 & 3 & 0
    \end{bmatrix}
    &\xrightarrow{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 0 \\
        0 & 5 & 0
    \end{bmatrix}
    \\
    &\xrightarrow[\frac{1}{5}R_2]{R_1 + \frac{1}{5}R_2}
    &\begin{bmatrix}
        1 & 0 & 0 \\
        0 & 1 & 0
    \end{bmatrix}
    \\
    T\begin{bmatrix}
        0 \\ 1
    \end{bmatrix} =
    \begin{bmatrix}
        1 & -1 & 0 \\
        2 & 3 & 1
    \end{bmatrix}
    &\xrightarrow{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 0 \\
        0 & 5 & 1
    \end{bmatrix}
    \\
    &\xrightarrow[\frac{1}{5}R_2]{R_1 + \frac{1}{5}R_2}
    &\begin{bmatrix}
        1 & 0 & \frac{1}{5} \\[0.2em]
        0 & 1 & \frac{1}{5}
    \end{bmatrix}
    \\
    T\begin{bmatrix}
        1 \\ 0
    \end{bmatrix} =
    \begin{bmatrix}
        1 & -1 & 1 \\
        2 & 3 & 0
    \end{bmatrix}
    &\xrightarrow{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 1 \\
        0 & 5 & -2
    \end{bmatrix}
    \\
    &\xrightarrow[\frac{1}{5}R_2]{R_1 + \frac{1}{5}R_2}
    &\begin{bmatrix}
        1 & 0 & \frac{3}{5} \\[0.2em]
        0 & 1 & -\frac{2}{5}
    \end{bmatrix}
    \\
    T\begin{bmatrix}
        1 \\ 1
    \end{bmatrix} =
    \begin{bmatrix}
        1 & -1 & 1 \\
        2 & 3 & 1
    \end{bmatrix}
    &\xrightarrow{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 1 \\
        0 & 5 & -1
    \end{bmatrix}
    \\
    &\xrightarrow[\frac{1}{5}R_2]{R_1 + \frac{1}{5}R_2}
    &\begin{bmatrix}
        1 & 0 & \frac{4}{5} \\[0.2em]
        0 & 1 & -\frac{1}{5}
    \end{bmatrix}
\end{array}
$$

> ##  3. Sketch the image of the triangle formed by vertices $(-1, 1)$, $(1, 0)$ and $(1, 1)$ under the linear transformation $T(\mathbf{x}) = \begin{bmatrix} 4 & -1 \\ 0 & 1\end{bmatrix}\mathbf{x}$.

$$
\begin{array}{c}
    T\begin{bmatrix}
        -1 \\ 1
    \end{bmatrix} =
    \begin{bmatrix}
        4 & -1 & -1 \\
        0 & 1 & 1
    \end{bmatrix}
    &\xrightarrow{R_1 + R_2}
    &\begin{bmatrix}
        4 & 0 & 0 \\
        0 & 1 & 1
    \end{bmatrix}
    \\
    &\xrightarrow{\frac{1}{4}R_1}
    &\begin{bmatrix}
        1 & 0 & 0 \\
        0 & 1 & 1
    \end{bmatrix}
    \\
    T\begin{bmatrix}
        1 \\ 0
    \end{bmatrix} =
    \begin{bmatrix}
        4 & -1 & 1 \\
        0 & 1 & 0
    \end{bmatrix}
    &\xrightarrow{R_1 + R_2}
    &\begin{bmatrix}
        4 & 0 & 1 \\
        0 & 1 & 0
    \end{bmatrix}
    \\
    &\xrightarrow{\frac{1}{4}R_1}
    &\begin{bmatrix}
        1 & 0 & \frac{1}{4} \\
        0 & 1 & 0
    \end{bmatrix}
    \\
    T\begin{bmatrix}
        1 \\ 1
    \end{bmatrix} =
    \begin{bmatrix}
        4 & -1 & 1 \\
        0 & 1 & 1
    \end{bmatrix}
    &\xrightarrow{R_1 + R_2}
    &\begin{bmatrix}
        4 & 0 & 2 \\
        0 & 1 & 1
    \end{bmatrix}
    \\
    &\xrightarrow{\frac{1}{4}R_1}
    &\begin{bmatrix}
        1 & 0 & \frac{1}{2} \\
        0 & 1 & 1
    \end{bmatrix}
\end{array}
$$


## 4. Let $A=\begin{bmatrix} 1 & 2 \\ 4 & -3\end{bmatrix}$.

### (a) Find $A^2$ and $A^3$.

Since $A$ is a $2\times 2$ square matrix, $A^k$ is well defined for all natural $k$.

$$
\begin{align*}
    A^2 &= \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}
    \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        1(1) + 2(4) & 1(2) + 2(-3) \\
        4(1) + (-3)(4) & 4(2) + (-3)(-3)
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        9 & -4 \\
        -8 & 17
    \end{bmatrix}
\end{align*}
\\[2em]
\begin{align*}
    A^3 &=
    \begin{bmatrix}
        9 & -4 \\
    -8 & 17
    \end{bmatrix}
    \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        9(1) + (-4)(4) & 9(2) + (-4)(-3) \\
        -8(1) + 17(4) & -8(2) + 17(-3)
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        -7 & 30 \\
        60 & -67
    \end{bmatrix}
\end{align*}
$$


### (b) Find $2A^3 - 4A + 5I_2$ and $A^2 + 2A - 11I_2$.

Assuming $I_2 = \begin{bmatrix}1 & 0 \\ 0 & 1\end{bmatrix}$.

$$
\begin{align*}
    2A^3 - 4A + 5I_2
    &= 2 \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}^3
    - 4 \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}
    + 5 \begin{bmatrix}
        1 & 0 \\
        0 & 1
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        -14 & 60 \\
        120 & -134
    \end{bmatrix}
    - \begin{bmatrix}
        4 & 8 \\
        16 & -12
    \end{bmatrix}
    + \begin{bmatrix}
        5 & 0 \\
        0 & 5
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        -13 & 52 \\
        104 & -117
    \end{bmatrix}
\end{align*}
\\[2em]
\begin{align*}
    A^2 + 2A - 11I_2
    &= \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}^2
    + 2 \begin{bmatrix}
        1 & 2 \\
        4 & -3
    \end{bmatrix}
    - 11 \begin{bmatrix}
        1 & 0 \\
        0 & 1
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        9 & -4 \\
        -8 & 17
    \end{bmatrix}
    + \begin{bmatrix}
        2 & 4 \\
        8 & -6
    \end{bmatrix}
    - \begin{bmatrix}
        11 & 0 \\
        0 & 11
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        0 & 0 \\
        0 & 0
    \end{bmatrix}
\end{align*}
$$


## 5. Let $\mathbf{v} = \begin{bmatrix}    v_1 \\ v_2 \\ v_3\end{bmatrix}$, $\mathbf{v}^T = \begin{bmatrix}    v_1 & v_2 & v_3\end{bmatrix}$, and $v_1 \neq 0$.

### (a) Find $\mathbf{v}^T\mathbf{v}$ and $\mathbf{vv}^T$.

$$
\begin{align*}
    \mathbf{v}^T\mathbf{v} &= \begin{bmatrix}
        v_1 & v_2 & v_3
    \end{bmatrix}
    \begin{bmatrix}
        v_1 \\ v_2 \\ v_3
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
       v_1^2 + v_2^2 + v_3^2
    \end{bmatrix}
\end{align*}
\\[2em]
\begin{align*}
    \mathbf{vv}^T &= \begin{bmatrix}
        v_1 \\ v_2 \\ v_3
    \end{bmatrix}
    \begin{bmatrix}
        v_1 & v_2 & v_3
    \end{bmatrix}
    \\
    &= \begin{bmatrix}
        v_1^2 & v_1 v_2 & v_1 v_3 \\
        v_1v_2 & v_2^2 & v_2v_3 \\
        v_1v_3 & v_2v_3 & v_3^2
    \end{bmatrix}
\end{align*}
$$

### (b) If $\mathbf{v}\neq\mathbf{0}$, verify that the rank of $\mathbf{v}^T\mathbf{v}$ and $\mathbf{vv}^T$ are $1$.

$$
\begin{align*}
    v_1\neq0 &\implies v_1^2 > 0 \\
    &\iff v_1^2 + v_2^2 + v_3^2 > 0
\end{align*}
\\
\therefore \mathbf{v}\neq\mathbf{0}
\land v_1\neq 0 \implies
\mathbf{v}^T\mathbf{v} \neq \mathbf{0} \iff
\operatorname{rank}(\mathbf{v}^T\mathbf{v}) = 1
\\[2em]
\begin{array}{c}
    \mathbf{vv}^T = \begin{bmatrix}
        v_1^2 & v_1 v_2 & v_1 v_3 \\
        v_1v_2 & v_2^2 & v_2v_3 \\
        v_1v_3 & v_2v_3 & v_3^2
    \end{bmatrix}
    &\xrightarrow[\frac{1}{v_3} R_3]{\frac{1}{v_2} R_2}
    &\begin{bmatrix}
        v_1^2 & v_1 v_2 & v_1 v_3 \\
        v_1 & v_2 & v_3 \\
        v_1 & v_2 & v_3
    \end{bmatrix}
    \\
    &\xrightarrow[R_3 - R_2]{R_2 - R_3}
    &\begin{bmatrix}
        v_1^2 & v_1 v_2 & v_1 v_3 \\
        0 & 0 & 0 \\
        0 & 0 & 0
    \end{bmatrix}
\end{array}
\\
\therefore \mathbf{v}\neq\mathbf{0}
\land v_1\neq 0 \implies
\mathbf{vv}^T \neq \mathbf{0} \iff
\operatorname{rank}(\mathbf{vv}^T) = 1
$$

