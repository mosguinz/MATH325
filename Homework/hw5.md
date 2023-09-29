---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 5


> ## 1. *(Although this question is just copying definitions, this is important to understand the whole concepts and I expect students should remember these definitions)* <br> Write down the definition of the following:

### (a) $W$ is a subspace of a vector space $V$

$W$ is a subspace if:

* given vectors $\mathbf{u}, \mathbf{v}\in W$, then $\mathbf{u+v}\in W$; and
* given scalar $\alpha\in\R$ and vector $\mathbf{v}\in W$, then $\alpha\mathbf{v}\in W$.

> ### (b) $\operatorname{span}\set{\mathbf{v}_1, ...., \mathbf{v}_n}$.

> ### (c\) $\mathbf{v}_1, ...., \mathbf{v}_n$ are linearly independent.

> ### (d) $\mathbf{v}_1, ...., \mathbf{v}_n$ are linearly dependent.

> ### (e) $\mathbf{v}_1, ...., \mathbf{v}_n$ forms a basis of $V$.

> ### (f) The dimension of a vector space $V$.

> ## 2. Determine if the following sets are subspaces of $\R^3$. Justify your answer.

### (i) $W_1 = \set{(x, y, z) : x = z + 2}$

#### Checking $\mathbf{0}\in W_1$

Clearly, $(0,0,0)\notin W_1$. Therefore $W_1$ is not a subspace of $\R^3$.

$$
(x,y,z) = (0,0,0) \implies 0 = 0 + 2 \\
\therefore \mathbf{0}\notin W_1
$$

### (ii) $W_2 = \set{(x, y, z) : x = 3y \text{ and } z = -y}$

#### Checking $\mathbf{0}\in W_2$

$$
(x,y,z) = (0,0,0) \implies 0 = 3(0) \land 0 = -0 \\
\therefore \mathbf{0}\in W_2
$$

#### Checking $\mathbf{u, v}\in W_2 \implies \mathbf{u+v}\in W_2$

Consider $\begin{pmatrix}
    x_1 \\ y_1 \\ z_1
\end{pmatrix} + \begin{pmatrix}
    x_2 \\ y_2 \\ z_2
\end{pmatrix} = \begin{pmatrix}
    x_1 + x_2 \\ y_1 + y_2 \\ z_1 + z_2
\end{pmatrix} = \begin{pmatrix}
    3(y_1 + y_2) \\ y_1 + y_2 \\ -(y_1 + y_2)
\end{pmatrix}$. Then,

$$
z = -y \implies y = -z \implies x = -3z
$$


$$
(x_1 + x_2) = -3(z_1 + z_2)
$$

### (iii) $W_3 = \set{(x, y, z) : z = x^2 + y^2}$

#### Checking $\mathbf{0}\in W_3$

$$
(x,y,z) = (0,0,0) \implies 0 = 0^2 + 0^2 \\
\therefore\mathbf{0}\in W_3
$$

#### Checking $\mathbf{u, v}\in W_3 \implies \mathbf{u+v}\in W_3$

Consider $\begin{pmatrix}
    x_1 \\ y_1 \\ z_1
\end{pmatrix} + \begin{pmatrix}
    x_2 \\ y_2 \\ z_2
\end{pmatrix} = \begin{pmatrix}
    x_1 + x_2 \\ y_1 + y_2 \\ z_1 + z_2
\end{pmatrix}$. Then,

$$
(z_1 + z_2) = (x_1 + x_2)^2 + (y_1 + y_2)^2 \\
\cancel{(x_1^2 + y_1^2)} + \cancel{(x_2^2 + y_2^2)} = (\cancel{x_1^2} + \cancel{x_2^2} + 2 x_1 x_2) + (\cancel{y_1^2} + \cancel{y_2^2} + 2 y_1 y_2) \\
0 = 2(x_1 x_2 + y_1 y_2) \\
\therefore \mathbf{u+v}\notin W_3
$$

$W_3$ is not closed under addition, therefore it is not a subspace of $\R^3$.


## 3. For the following sets of vectors

(i) $\mathbf{v}_1 = (0, 1, 1)$, $\mathbf{v}_2 = (1, -1, 0)$ and $\mathbf{v}_3 = (3, -1, 2)$.
(ii) $\mathbf{v}_1 = (2, 1, 3)$, $\mathbf{v}_2 = (1, -2, 1)$, $\mathbf{v}_3 = (2, -3, 0)$ and $\mathbf{v}_4 = (0, -1, 4)$.
(iii) $\mathbf{v}_1 = (1, 0, 2, 1)$, $\mathbf{v}_2 = (-2, 3, -1, 1)$ and $\mathbf{v}_3 = (2, -2, 1, -1)$.

### (a) Determine if the above set of vectors linearly dependent or linearly independent.

#### (i) $\mathbf{v}_1 = (0, 1, 1)$, $\mathbf{v}_2 = (1, -1, 0)$ and $\mathbf{v}_3 = (3, -1, 2)$.

$$
\begin{array}{c}
    \begin{bmatrix}
        0 & 1 & 3 \\
        1 & -1 & -1 \\
        1 & 0 & 2
    \end{bmatrix}
    &\xrightarrow{R_2 + R_1}
    &\begin{bmatrix}
        0 & 1 & 3 \\
        1 & 0 & 2 \\
        1 & 0 & 2
    \end{bmatrix}
    &\xrightarrow{R_3 - R_2}
    &\begin{bmatrix}
        0 & 1 & 3 \\
        1 & 0 & 2 \\
        0 & 0 & 0
    \end{bmatrix}
    &\xrightarrow{R_1 \leftrightarrow R_2}
    &\begin{bmatrix}
        1 & 0 & 2 \\
        0 & 1 & 3 \\
        0 & 0 & 0
    \end{bmatrix}
\end{array}
$$

The linear combination of the vectors has free variables. As such, they are linearly dependent.

#### (ii) $\mathbf{v}_1 = (2, 1, 3)$, $\mathbf{v}_2 = (1, -2, 1)$, $\mathbf{v}_3 = (2, -3, 0)$ and $\mathbf{v}_4 = (0, -1, 4)$.

The number of vectors (4) is greater than their dimensions (3). As such, they are linearly dependent.

#### (iii) $\mathbf{v}_1 = (1, 0, 2, 1)$, $\mathbf{v}_2 = (-2, 3, -1, 1)$ and $\mathbf{v}_3 = (2, -2, 1, -1)$.

$$
\begin{array}{c}
    \begin{bmatrix}
        1 & -2 & 2 \\
        0 & 3 & -2 \\
        2 & -1 & 1 \\
        1 & 1 & -1
    \end{bmatrix}
    &\xrightarrow{\text{RREF}}
    &\begin{bmatrix}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1 \\
        0 & 0 & 0
    \end{bmatrix}
\end{array}
$$

The linear combination of the vectors do not have free variables. As such, they are linearly independent.


> ### (b) For (i), determine if $\mathbf{w} = (1, 1, 1)$ lies in the span.

> ### (c\) For (ii), express $\mathbf{v}_4$ as a linear combination of $\mathbf{v}_1$, $\mathbf{v}_2$ and $\mathbf{v}_3$.

> ## 4. Expand the kernel of the following matrices as span of vectors and then compute the dimension.


> ### (a) $$\begin{bmatrix}    1 & 1 \\    1 & 2 \\    1 & 3\end{bmatrix}$$

$$
\begin{bmatrix}
    1 & 1 \\
    1 & 2 \\
    1 & 3
\end{bmatrix}
$$

> ### (b)$$\begin{bmatrix}    1 & 1 & 1 \\    1 & 1 & 1 \\    1 & 1 & 1\end{bmatrix}$$

$$
\begin{bmatrix}
    1 & 1 & 1 \\
    1 & 1 & 1 \\
    1 & 1 & 1
\end{bmatrix}
$$

> ### (c\) $$\begin{bmatrix}    1 & -1 & -1 & 1 & 1 \\    -1 & 1 & 0 & -2 & 2 \\    1 & -1 & -2 & 0 & 3 \\    2 & -2 & -1 & 3 & 4\end{bmatrix}$$

$$
\begin{bmatrix}
    1 & -1 & -1 & 1 & 1 \\
    -1 & 1 & 0 & -2 & 2 \\
    1 & -1 & -2 & 0 & 3 \\
    2 & -2 & -1 & 3 & 4
\end{bmatrix}
$$

> ## 5. Let $W = \set{(x_1, x_2, x_3, x_4) : x_1 - x_2 + 2x_3 - x_4 = 0}$. Find a basis for the subspace $W$.


> ## 6. Let $W = \Set{(x_1, x_2, x_3, x_4) :\begin{cases}x_1 + x_2 - x_3 + x_4 = 0, \\2x_1 + 2x_2 - 2x_3 + x_4 = 0,\end{cases}}$. Find a basis for the subspace $W$ and what is its dimension?
