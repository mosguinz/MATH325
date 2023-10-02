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


## 1. *(Although this question is just copying definitions, this is important to understand the whole concepts and I expect students should remember these definitions)* <br> Write down the definition of the following:

### (a) $W$ is a subspace of a vector space $V$

$W$ is a subspace if:

* given vectors $\mathbf{u}, \mathbf{v}\in W$, then $\mathbf{u+v}\in W$; and
* given scalar $\alpha\in\R$ and vector $\mathbf{v}\in W$, then $\alpha\mathbf{v}\in W$.

### (b) $\operatorname{span}\set{\mathbf{v}_1, ...., \mathbf{v}_n}$.

The set of all linear combinations $c_1\mathbf{v}_1 + \cdots + c_n\mathbf{v}_n$ of the vectors $\mathbf{v}_1, \ldots, \mathbf{v}_n$ is called their span.

$$
\operatorname{span}\set{\mathbf{v}_1, \ldots, \mathbf{v}_n} =
\set{c_1\mathbf{v}_1 + \cdots + c_n\mathbf{v}_n : c_1,\ldots,c_n\in \R}
$$


### (c\) $\mathbf{v}_1, ...., \mathbf{v}_n$ are linearly independent.

...if and only if

$$
\set{x_1\mathbf{v}_1 + \cdots + x_n\mathbf{v}_n : x_i\in\R}
$$

are distinct vectors.

### (d) $\mathbf{v}_1, ...., \mathbf{v}_n$ are linearly dependent.

...if and only if

$$
\exists\mathbf{v}_j \in \operatorname{span}\set{\mathbf{v}_i: i\neq j}
$$

### (e) $\mathbf{v}_1, ...., \mathbf{v}_n$ forms a basis of $V$.

...if:

* $\set{\mathbf{v}_1, \ldots, \mathbf{v}_n}$ are linearly independent; and
* $\operatorname{span}\set{\mathbf{v}_1, \ldots, \mathbf{v}_n} = V$.

This means that every vector in $V$ is a unique linear combination of $\set{\mathbf{v}_1, \ldots, \mathbf{v}_n}$.

### (f) The dimension of a vector space $V$.

...is the number of vectors that make up a basis of $V$.

## 2. Determine if the following sets are subspaces of $\R^3$. Justify your answer.

### (i) $W_1 = \set{(x, y, z) : x = z + 2}$

#### Checking $\mathbf{0}\in W_1$

Clearly, $(0,0,0)\notin W_1$. Therefore $W_1$ is not a subspace of $\R^3$.

$$
(x,y,z) = (0,0,0) \implies 0 \neq 0 + 2 \\
\therefore \mathbf{0}\notin W_1
$$

### (ii) $W_2 = \set{(x, y, z) : x = 3y \text{ and } z = -y}$

#### Checking if $W_2$ is closed under addition

Consider two vectors $\begin{pmatrix}
    x_1 \\ y_1 \\ z_1
\end{pmatrix},  \begin{pmatrix}
    x_2 \\ y_2 \\ z_2
\end{pmatrix} \in W_2$.

Then,
$$
\begin{array}{c}
    \begin{pmatrix}
        x_1 \\ y_1 \\ z_1
    \end{pmatrix} \iff \begin{cases}
        x_1 = 3y_1 \\
        z_1 = -y_1
    \end{cases},
    &\begin{pmatrix}
        x_2 \\ y_2 \\ z_2
    \end{pmatrix} \iff \begin{cases}
        x_2 = 3y_2 \\
        z_2 = -y_2
    \end{cases}
\end{array}
$$

And so, for $\begin{pmatrix}
    x_1 \\ y_1 \\ z_1
\end{pmatrix} + \begin{pmatrix}
    x_2 \\ y_2 \\ z_2
\end{pmatrix} = \begin{pmatrix}
    x_1 + x_2 \\
    y_1 + y_2 \\
    z_1 + z_2
\end{pmatrix}$, notice that:
$$
\begin{cases}
    x_1 + x_2 = 3y_1 + 3y_2 = 3(y_1 + y_2) \\
    z_1 + z_2 = -y_1 - y_2 = -(y_1 + y_2)
\end{cases}
\implies \begin{pmatrix}
    x_1 + x_2 \\
    y_1 + y_2 \\
    z_1 + z_2
\end{pmatrix} \in W_2
$$

As such, $W_2$ is closed under addition.

#### Checking if $W_2$ is closed under scalar multiplication

Consider $\alpha\in\R$ and $\mathbf{u}=\begin{pmatrix}
    x_1 \\ y_1 \\ z_1
\end{pmatrix}\in W_2$. Then, for $\alpha\mathbf{u} = \begin{pmatrix}
    \alpha x_1 \\ \alpha y_1 \\ \alpha z_1
\end{pmatrix}$, notice that:

$$
\begin{cases}
    \alpha x_1 = \alpha(3y_1) = 3(\alpha y_1) \\
    \alpha z_1 = \alpha(-y_1) = -(\alpha y_1)
\end{cases}
\implies \begin{pmatrix}
    \alpha x_1 \\ \alpha y_1 \\ \alpha z_1
\end{pmatrix} \in W_2
$$

As such, $W_2$ is closed under scalar multiplication.

Therefore, we can conclude that $W_2$ is a subspace of $\R^3$.

### (iii) $W_3 = \set{(x, y, z) : z = x^2 + y^2}$

#### Checking if $W_3$ is closed under addition

Consider two vectors $\mathbf{u},\mathbf{v}\in W_3$ where: $\mathbf{u} = (1,1,2)$ and $\mathbf{v} = (2, 2, 8)$.

$$
\mathbf{u} = (1,1,2) \implies 2 = 1^2 + 1^2 \\
\mathbf{v} = (2, 2, 8) \implies 8 = 2^2 + 2^2
$$

Then, $\mathbf{u}+\mathbf{v} = (3, 3, 10)$. But clearly, $\mathbf{u}+\mathbf{v}\notin W_2$:

$$
\mathbf{u}+\mathbf{v} = (3, 3, 10) \implies 10 \neq 3^2 + 3^2
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
\operatorname{rref}
\left[
    \begin{array}{ccc}
        | & | & | \\
        \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 \\
        | & | & |
    \end{array}
\right] =
\operatorname{rref}
\begin{bmatrix}
    1 & -2 & 2 \\
    0 & 3 & -2 \\
    2 & -1 & 1 \\
    1 & 1 & -1
\end{bmatrix} =
\begin{bmatrix}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{bmatrix}
$$

The linear combination of the vectors do not have free variables. As such, they are linearly independent.

### (b) For (i), determine if $\mathbf{w} = (1, 1, 1)$ lies in the span.

Where $\mathbf{v}_1 = (0, 1, 1)$, $\mathbf{v}_2 = (1, -1, 0)$, and $\mathbf{v}_3 = (3, -1, 2)$.

$$
\operatorname{rref}
\left[
    \begin{array}{ccc|c}
        | & | & | & | \\
        \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 & \mathbf{w} \\
        | & | & | & |
    \end{array}
\right] =
\operatorname{rref}
\left[
\begin{array}{ccc|c}
    0 & 1 & 3 & 1 \\
    1 & -1 & -1 & 1 \\
    1 & 0 & 2 & 1
\end{array}
\right] =
\left[
\begin{array}{ccc|c}
    1 & 0 & 2 & 0 \\
    0 & 1 & 3 & 0 \\
    0 & 0 & 0 & 1
\end{array}
\right]
$$

The system has no solution. Therefore, $\mathbf{w} = (1, 1, 1)$ is not in the span.

### (c\) For (ii), express $\mathbf{v}_4$ as a linear combination of $\mathbf{v}_1$, $\mathbf{v}_2$ and $\mathbf{v}_3$.

Where $\mathbf{v}_1 = (2, 1, 3)$, $\mathbf{v}_2 = (1, -2, 1)$, $\mathbf{v}_3 = (2, -3, 0)$, and $\mathbf{v}_4 = (0, -1, 4)$.

$$
\operatorname{rref}
\left[
    \begin{array}{ccc|c}
        | & | & | & | \\
        \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 & \mathbf{v}_4 \\
        | & | & | & |
    \end{array}
\right] =
\operatorname{rref}
\left[
    \begin{array}{ccc|c}
        2 & 1 & 2 & 0 \\
        1 & -2 & -3 & -1 \\
        3 & 1 & 0 & 4
    \end{array}
\right] =
\left[
    \begin{array}{ccc|c}
        1 & 0 & 0 & \frac{2}{11} \\[.4em]
        0 & 1 & 0 & \frac{38}{11}\\[.4em]
        0 & 0 & 1 & -\frac{21}{11}
    \end{array}
\right]
\\[1em]
\therefore \mathbf{v}_4 = \frac{2}{11}\mathbf{v}_1 + \frac{38}{11}\mathbf{v}_2 -\frac{21}{11}\mathbf{v}_3
$$


## 4. Expand the kernel of the following matrices as span of vectors and then compute the dimension.

> Assuming the question is asking for the dimension of the kernel i.e., the *nullity*.

### (a) $$\begin{bmatrix}    1 & 1 \\    1 & 2 \\    1 & 3\end{bmatrix}$$

$$
\operatorname{rref}
\left[
    \begin{array}{cc|c}
        1 & 1 & 0 \\
        1 & 2 & 0 \\
        1 & 3 & 0
    \end{array}
\right]
= \left[
    \begin{array}{cc|c}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 0
    \end{array}
\right]
\\[1.2em]
\therefore\ker\begin{bmatrix}
    1 & 1 \\
    1 & 2 \\
    1 & 3
\end{bmatrix} = \Set{\begin{pmatrix}
    0 \\ 0
\end{pmatrix}} = \operatorname{span}\Set{
    \begin{pmatrix}
        0 \\ 0
    \end{pmatrix}
}
$$

The nullity is zero.

### (b) $$\begin{bmatrix}    1 & 1 & 1 \\    1 & 1 & 1 \\    1 & 1 & 1\end{bmatrix}$$

$$\
\operatorname{rref}
\left[
    \begin{array}{ccc|c}
        1 & 1 & 1 & 0 \\
        1 & 1 & 1 & 0 \\
        1 & 1 & 1 & 0
    \end{array}
\right] = \left[
    \begin{array}{ccc|c}
        1 & 1 & 1 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
    \end{array}
\right]
\\
\therefore x_1 = -x_2 - x_3 \\
x_2, x_3 \in\R
\\[1.2em]
\begin{align*}
    \therefore\ker\begin{bmatrix}
        1 & 1 & 1 \\
        1 & 1 & 1 \\
        1 & 1 & 1
    \end{bmatrix} &= \Set{
        \begin{pmatrix}
            -x_2 - x_3 \\
            x_2 \\
            x_3
        \end{pmatrix} : x_2, x_3 \in \R
    } \\
    &= \Set{
        x_2 \begin{pmatrix}
            -1 \\ 1 \\ 0
        \end{pmatrix} +
        x_3 \begin{pmatrix}
            -1 \\ 0 \\ 1
        \end{pmatrix} : x_2, x_3 \in \R
    } \\
    &= \operatorname{span}\Set{
        \begin{pmatrix}
            -1 \\ 1 \\ 0
        \end{pmatrix},
        \begin{pmatrix}
            -1 \\ 0 \\ 1
        \end{pmatrix}
    }
\end{align*}
$$

The nullity is two.

### (c\) $$\begin{bmatrix}    1 & -1 & -1 & 1 & 1 \\    -1 & 1 & 0 & -2 & 2 \\    1 & -1 & -2 & 0 & 3 \\    2 & -2 & -1 & 3 & 4\end{bmatrix}$$

$$
\operatorname{rref}
\left[
    \begin{array}{ccccc|c}
        1 & -1 & -1 & 1 & 1 & 0 \\
        -1 & 1 & 0 & -2 & 2 & 0 \\
        1 & -1 & -2 & 0 & 3 & 0 \\
        2 & -2 & -1 & 3 & 4 & 0
    \end{array}
\right]
= \left[
    \begin{array}{ccccc|c}
        1 & -1 & 0 & 2 & 0 & 0 \\
        0 & 0 & 1 & 1 & 0 & 0 \\
        0 & 0 & 0 & 0 & 1 & 0 \\
        0 & 0 & 0 & 0 & 0 & 0
    \end{array}
\right]
\\
\therefore x_5 = 0 \\
x_3 = -x_4 \\
x_1 = x_2 - 2x_4 \\
x_2, x_4 \in \R
\\[1.2em]
\begin{align*}
    \therefore\ker\begin{bmatrix}
        1 & -1 & -1 & 1 & 1 \\
        -1 & 1 & 0 & -2 & 2 \\
        1 & -1 & -2 & 0 & 3 \\
        2 & -2 & -1 & 3 & 4
    \end{bmatrix}
    &= \Set{
        \begin{pmatrix}
            x_2 - 2x_4 \\
            x_2 \\
            -x_4 \\
            x_4 \\
            0
        \end{pmatrix} : x_2, x_4 \in\R
    } \\
    &= \Set{
        x_2 \begin{pmatrix}
            1 \\ 1 \\ 0 \\ 0 \\ 0
        \end{pmatrix}
        + x_4 \begin{pmatrix}
            -2 \\ 0 \\ -1 \\ 1 \\ 0
        \end{pmatrix} : x_2, x_4 \in\R
    } \\
    &= \operatorname{span}\Set{
        \begin{pmatrix}
            1 \\ 1 \\ 0 \\ 0 \\ 0
        \end{pmatrix},
        \begin{pmatrix}
            -2 \\ 0 \\ -1 \\ 1 \\ 0
        \end{pmatrix}
    }
\end{align*}
$$

The nullity is two.

## 5. Let $W = \set{(x_1, x_2, x_3, x_4) : x_1 - x_2 + 2x_3 - x_4 = 0}$. Find a basis for the subspace $W$.

$$
x_1 - x_2 + 2x_3 - x_4 = 0 \implies x_1 = x_2 - 2x_3 + x_4 \\
\begin{align*}
    W &= \Set{
        \begin{pmatrix}
            x_2 - 2x_3 + x_4 \\
            x_2 \\
            x_3 \\
            x_4
        \end{pmatrix} : x_2, x_3, x_4 \in \R
    } \\
    &= \Set{
        x_2 \begin{pmatrix}
            1 \\ 1 \\ 0 \\ 0
        \end{pmatrix}
        + x_3 \begin{pmatrix}
            -2 \\0 \\ 1 \\ 0
        \end{pmatrix}
        + x_4 \begin{pmatrix}
            1 \\ 0 \\ 0 \\ 1
        \end{pmatrix} : x_2, x_3, x_4 \in \R
    }
\end{align*}
\\[2em]
\therefore \operatorname{basis}(W) =  \Set{
    \begin{pmatrix}
        1 \\ 1 \\ 0 \\ 0
    \end{pmatrix}
    , \begin{pmatrix}
        -2 \\0 \\ 1 \\ 0
    \end{pmatrix}
    , \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 1
    \end{pmatrix}
    }
$$

## 6. Let $W = \Set{(x_1, x_2, x_3, x_4) :\begin{cases}x_1 + x_2 - x_3 + x_4 = 0, \\2x_1 + 2x_2 - 2x_3 + x_4 = 0,\end{cases}}$. Find a basis for the subspace $W$ and what is its dimension?

$$
\begin{array}{c}
    \begin{cases}
        x_1 + x_2 - x_3 + x_4 = 0 \\
        2x_1 + 2x_2 - 2x_3 + x_4 = 0
    \end{cases}
    &\iff&
    \left[
        \begin{array}{cccc|c}
            1 & 1 & -1 & 1 & 0 \\
            2 & 2 & -2 & 1 & 0
        \end{array}
    \right]
\end{array}
\\[2em]
\begin{array}{c}
    \left[
        \begin{array}{cccc|c}
            1 & 1 & -1 & 1 & 0 \\
            2 & 2 & -2 & 1 & 0
        \end{array}
    \right]
    &\xrightarrow{R_2 - 2R_1}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & -1 & 1 & 0 \\
            0 & 0 & 0 & -1 & 0
        \end{array}
    \right]
    &\xrightarrow[-R_2]{R_1 + R_2}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & -1 & 0 & 0 \\
            0 & 0 & 0 & 1 & 0
        \end{array}
    \right]
\end{array}
\\
\therefore x_4 = 0 \\
x_1 = -x_2 + x_3 \\
x_2, x_3 \in \R
\\
\begin{align*}
    W &= \Set{
        \begin{pmatrix}
            -x_2 + x_3 \\
            x_2 \\
            x_3 \\
            0
        \end{pmatrix} : x_2, x_3 \in \R
    } \\
    &= \Set{
        x_2 \begin{pmatrix}
            -1 \\ 1 \\ 0 \\ 0
        \end{pmatrix}
        + x_3 \begin{pmatrix}
            1 \\ 0 \\ 1 \\ 0
        \end{pmatrix}: x_2, x_3 \in \R
    }
\end{align*}
\\[2em]
\therefore\operatorname{basis}(W) = \Set{
    \begin{pmatrix}
        -1 \\ 1 \\ 0 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        1 \\ 0 \\ 1 \\ 0
    \end{pmatrix}
}
$$

The nullity is two.
