---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Final exam

## Question 1. (10 points)

### (a) What is the definition that $\set{v_1, ..., v_n}$ forms a basis for a vector space $V$.

$\set{v_1, ..., v_n}$ forms a basis for a vector space $V$ if and only if they are linearly independent and spans the space $V$.

### (b) What is the definition of the dimension of a vector space $V$?

The dimension of a vector space $V$ is the number of vectors in a basis of $V$.

### (c\) Explain why the vector space $\mathcal{M}_{3,2}$, the set of all $3 × 2$ matrices has dimension $6$.

Consider a matrix $\begin{bmatrix}
    a & b \\ c & d \\ e & f
\end{bmatrix}\in\mathcal{M}_{3,2}$. This matrix can be expanded as

$$
\begin{split}
    \begin{bmatrix}
        a & b \\ c & d \\ e & f
    \end{bmatrix} &= a \begin{bmatrix}
        1 & 0 \\ 0 & 0 \\ 0 & 0
    \end{bmatrix} + b \begin{bmatrix}
        0 & 1 \\ 0 & 0 \\ 0 & 0
    \end{bmatrix} + c \begin{bmatrix}
        0 & 0 \\ 1 & 0 \\ 0 & 0
    \end{bmatrix} \\ &\quad+ d \begin{bmatrix}
        0 & 0 \\ 0 & 1 \\ 0 & 0
    \end{bmatrix} + e \begin{bmatrix}
        0 & 0 \\ 0 & 0 \\ 1 & 0
    \end{bmatrix} + f \begin{bmatrix}
        0 & 0 \\ 0 & 0 \\ 0 & 1
    \end{bmatrix}.
\end{split}
$$

By inspection,

$$
\Set{
    \begin{bmatrix}
        1 & 0 \\ 0 & 0 \\ 0 & 0
    \end{bmatrix}, \begin{bmatrix}
        0 & 1 \\ 0 & 0 \\ 0 & 0
    \end{bmatrix}, \begin{bmatrix}
        0 & 0 \\ 1 & 0 \\ 0 & 0
    \end{bmatrix} \\ \begin{bmatrix}
        0 & 0 \\ 0 & 1 \\ 0 & 0
    \end{bmatrix}, \begin{bmatrix}
        0 & 0 \\ 0 & 0 \\ 1 & 0
    \end{bmatrix}, \begin{bmatrix}
        0 & 0 \\ 0 & 0 \\ 0 & 1
    \end{bmatrix}
}
$$

are linearly independent and and every matrix in $\mathcal{M}_{3,2}$ can be expanded by them. Hence, it forms a basis of $\mathcal{M}_{3,2}$ and its dimension is six.

## Question 2. (10 points) Find the answer of the following problem. Write a brief solution to explain.

### a. Suppose that $A$ is a $8 ×17$ matrix and the kernel of $A$ has dimension $12$. What is the dimension of $\operatorname{Im}(A)$?

If $A$ is an $8\times17$ matrix where $\dim\ker(A) = 12$. Then, there exists five pivots (because $17-12=5$).

To find $\dim A$, a similar process is applied. By finding the reduced-row echelon form of $A$, we will also find five pivots and the corresponding pivot column on $A$ will make up a basis of $A$. As such, the dimension of $\operatorname{Im}(A)$ is five.

### b.Find the inverse of the matrix $\begin{pmatrix}\cos \theta & \sin \theta \\ −\sin \theta & \cos \theta\end{pmatrix}.$

$$
\begin{pmatrix}
    \cos \theta & \sin \theta \\
    −\sin \theta & \cos \theta
\end{pmatrix}^{-1} =
\frac{1}{\cos^2\theta+\sin^2\theta}\begin{pmatrix}
    \cos \theta & -\sin \theta \\
    \sin \theta & \cos \theta
\end{pmatrix} =
\begin{pmatrix}
    \cos \theta & -\sin \theta \\
    \sin \theta & \cos \theta
\end{pmatrix}
$$

### c. Find the dimension of the following subspace on $\R^4$. $$W = \set{(x,y,z,w) : x + y + z + w = 0}.$$

$$
x = -y-z-w \\
W = \Set{
    \begin{pmatrix}
        -y-z-w \\ y \\ z \\ w
    \end{pmatrix}: y,z,w \in\R
} = \operatorname{span}\Set{
    \begin{pmatrix}
        -1 \\ 1 \\ 0 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        -1 \\ 0 \\ 1 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        -1 \\ 0 \\ 0 \\ 1
    \end{pmatrix}
} \\
\therefore \dim W = 3
$$

### d. Find the determinant of the matrix $$A = \begin{pmatrix}    1 & 1 & 1 \\    1 & 2 & 3 \\    100 & 100 & 100\end{pmatrix}.$$

$$
\begin{pmatrix}
    1 & 1 & 1 \\
    1 & 2 & 3 \\
    100 & 100 & 100
\end{pmatrix}
\xrightarrow{R_2 - R_1}
\begin{pmatrix}
    1 & 1 & 1 \\
    0 & 1 & 2 \\
    100 & 100 & 100
\end{pmatrix}
\xrightarrow{R_3 - 100R_1}
\begin{pmatrix}
    1 & 1 & 1 \\
    0 & 1 & 2 \\
    0 & 0 & 0
\end{pmatrix}
\\[1em]
\therefore \det A = 1\cdot1\cdot0 = 0
$$

## Question 3. (15 points) Let $$A = \begin{bmatrix}    1 & 3 & 4 & 5 \\    0 & 0 & 2 & 6 \\    0 & 0 & 0 & 0 \\    0 & 0 & 0 & 0\end{bmatrix}$$

### (a) Using Gram-Schmidt Process, find an orthogonal basis for the $\operatorname{Im}(A)$.

$$
\operatorname{rref}(A) = \begin{bmatrix}
    1 & 3 & 0 & -7 \\
    0 & 0 & 1 & 3 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{bmatrix}
\implies
\operatorname{Im}(A) = \operatorname{span}\Set{
    \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        4 \\ 2 \\ 0 \\ 0
    \end{pmatrix}
}
$$

Let $\vector{v}_1 = \begin{pmatrix}
    1 \\ 0 \\ 0 \\ 0
\end{pmatrix}$. Then:

$$
\def<{\left\langle} \def>{\right\rangle}
\def\norm#1{\left|\left|#1\right|\right|}
\begin{align*}
    \vector{v}_2 &= \begin{pmatrix}
        4 \\ 2 \\ 0 \\ 0
    \end{pmatrix} - \frac{<\begin{pmatrix}
        4 \\ 2 \\ 0 \\ 0
    \end{pmatrix}, \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix}>}{
        \norm{\begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix}}^2
    }\begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix} \\
    &= \begin{pmatrix}
        4 \\ 2 \\ 0 \\ 0
    \end{pmatrix} - 4\begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix} \\
    &= \begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix}
\end{align*}
$$

As such, an orthogonal basis for $\operatorname{Im}(A)$ is $
\set{\vector{v}_1, \vector{v}_2} = \Set{
    \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix},\begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix}
}$.

### (b) Find the basis for the orthogonal complement for the $\operatorname{Im}(A)$.

$$
A^\top = \begin{bmatrix}
    1 & 0 & 0 & 0 \\
    3 & 0 & 0 & 0\\
    4 & 2 & 0 & 0\\
    5 & 6 & 0 & 0
\end{bmatrix}
\implies
\operatorname{rref}(A^\top) = \begin{bmatrix}
    1 & 0 & 0 & 0 \\
    0 & 1 & 0 & 0\\
    0 & 0 & 0 & 0\\
    0 & 0 & 0 & 0
\end{bmatrix}
\\[1em]
\therefore\operatorname{Im}(A)^\perp = \ker(A^\top) = \operatorname{span}\Set{
    \begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix}
}
$$

As such, the basis for the orthogonal complement of $\operatorname{Im}(A)$ is $\Set{
    \begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix}
}$.

### (c\) Let $\mathbf{b} = \begin{pmatrix}0 \\2 \\1 \\ −1\end{pmatrix}$

#### (i) Find the orthogonal projection of $\mathbf{b}$ onto $\operatorname{Im}(A)$.


From (a), an orthogonal basis for $\operatorname{Im}(A)$ is $ \Set{
    \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix},\begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix}
}$. As such:

$$
\def<{\left\langle} \def>{\right\rangle}
\def\norm#1{\left|\left|#1\right|\right|}
\begin{align*}
    \operatorname{proj}_{\operatorname{Im}(A)} (\mathbf{b})
    &= \frac{<\begin{pmatrix}
        0 \\ 2 \\ 1 \\ -1
    \end{pmatrix}, \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix}>}{\norm{
        \begin{pmatrix}
            1 \\ 0 \\ 0 \\ 0
        \end{pmatrix}
    }^2}\begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix}
    + \frac{<\begin{pmatrix}
        0 \\ 2 \\ 1 \\ -1
    \end{pmatrix}, \begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix}>}{\norm{
        \begin{pmatrix}
            0 \\ 2 \\ 0 \\ 0
        \end{pmatrix}
    }^2}\begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix} \\
    &= 0 \begin{pmatrix}
        1 \\ 0 \\ 0 \\ 0
    \end{pmatrix} + \frac{4}{4}\begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix} \\
    &= \begin{pmatrix}
        0 \\ 2 \\ 0 \\ 0
    \end{pmatrix}
\end{align*}
$$

#### (i) Find the orthogonal projection of $\mathbf{b}$ onto the orthogonal complement of $\operatorname{Im}(A)$

From (b), the orthogonal complement of $\operatorname{Im}(A)$ is $\Set{
    \begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix},
    \begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix}
}$ As such:

$$
\def<{\left\langle} \def>{\right\rangle}
\def\norm#1{\left|\left|#1\right|\right|}
\begin{align*}
    \operatorname{proj}_{\operatorname{Im}(A)^\perp} (\mathbf{b})
    &= \frac{<\begin{pmatrix}
        0 \\ 2 \\ 1 \\ -1
    \end{pmatrix}, \begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix}>}{\norm{
        \begin{pmatrix}
            0 \\ 0 \\ 1 \\ 0
        \end{pmatrix}
    }^2}\begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix}
    + \frac{<\begin{pmatrix}
        0 \\ 2 \\ 1 \\ -1
    \end{pmatrix}, \begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix}>}{\norm{
        \begin{pmatrix}
            0 \\ 0 \\ 0 \\ 1
        \end{pmatrix}
    }^2}\begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix} \\
    &= \frac{1}{1} \begin{pmatrix}
        0 \\ 0 \\ 1 \\ 0
    \end{pmatrix} - \frac{1}{1} \begin{pmatrix}
        0 \\ 0 \\ 0 \\ 1
    \end{pmatrix} \\
    &= \begin{pmatrix}
        0 \\ 0 \\ 1 \\ -1
    \end{pmatrix}
\end{align*}
$$

## Question 4. (10 points) Suppose that we want to find the least square best fitting hyperplane $z = Ax + By + C$ for a set of datas $(x_1,y_1,z_1),...,(x_k,y_k,z_k)$. Explain step by step the procedure we need to do.

First, interpret the data points $(x_1,y_1,z_1),...,(x_k,y_k,z_k)$, as a system of equation:

$$
\left\{\begin{array}{c}
    z_1 = Ax_1 + By_1 + C \\
    \vdots \\
    z_k = Ax_k + By_k + C
\end{array}\right.
$$

Then, they can be written in the form $\vector{b}=A\mathbf{\hat{x}}$.

$$
\begin{bmatrix}
    z_1 \\ \vdots \\ z_k
\end{bmatrix} = \begin{bmatrix}
    x_1 & y_1 & 1 \\[.5em]
    & \ddots & \\
    x_k & y_k & 1
\end{bmatrix} \begin{pmatrix}
    \hat{A} \\ \hat{B} \\ \hat{C}
\end{pmatrix}
$$

Finally, to find $\mathbf{\hat{x}}$, we apply $A^\top$ to both sides.

$$
A\mathbf{\hat{x}} = \vector{b} \\
A^\top A\mathbf{\hat{x}} = A^\top\vector{b} \\
\therefore \mathbf{\hat{x}} = (A^\top A\mathbf{\hat{x}})^{-1}A^\top \vector{b}
$$

Thus, $\mathbf{\hat{x}} = \begin{pmatrix}
    \hat{A} \\ \hat{B} \\ \hat{C}
\end{pmatrix}$ is the least squared solution, giving us the best fitting hyperplane $z = \hat{A}x + \hat{B}y + \hat{C}$.


## Question 5 (15 points)

### (a) State the definition of eigenvalue and eigenvectors of a matrix $A$.

We say that $\lambda$ is an *eigenvalue* of $A$ if we can find some vector $\vector{v}\neq\vector{0}$ such that $A\vector{v}=\lambda\vector{v}$. Subsequently, $\vector{v}$ is the corresponding *eigenvectors* associated with $\lambda$.

### (b) State the definition of geometric multiplicity and algebraic multiplicity of the eigenvalue $λ$ for the matrix $A$.

The *geometric multiplicity* of an eigenvalue $\lambda$ is $\dim\ker(A-\lambda I)$.

The *algebraic multiplicity* of an eigenvalue $\lambda_i$ is the highest power $p$ such that $(\lambda − \lambda_i)^p$ is a factor of $\det(A − \lambda I)$.

### (c\) Let $$A = \begin{pmatrix}    3 & −2 & 4 & −4 \\    1 & 0 & 2 & −2 \\    −1 & 1 & −1 & 2 \\    −1 & 1 & −2 & 3\end{pmatrix}$$ Find the eigenvalues of $A$ (computer is allowed, but you need to write down the polynomial equation required to solve) and determine if $A$ is diagonalizable.

$$
A-\lambda I = \begin{pmatrix}
    3-\lambda & −2 & 4 & −4 \\
    1 & 0-\lambda & 2 & −2 \\
    −1 & 1 & −1-\lambda & 2 \\
    −1 & 1 & −2 & 3-\lambda
\end{pmatrix}
\\[1em]
\det(A-\lambda I) = (\lambda-1)^3(\lambda-2) = 0 \\
\therefore\lambda = 1,2
$$

The eigenvalues of $A$ are $1$ and $2$ with algebraic multiplicities of $3$ and $2$, respectively.

For $A$ to be diagonalizable, the geometric multiplicities must be equal to the algebraic multiplicities for all corresponding eigenvectors.

For $\lambda = 1$,

$$
\operatorname{rref}(A-I) = \operatorname{rref}\begin{pmatrix}
    3-1 & −2 & 4 & −4 \\
    1 & 0-1 & 2 & −2 \\
    −1 & 1 & −1-1 & 2 \\
    −1 & 1 & −2 & 3-1
\end{pmatrix} = \begin{pmatrix}
    1 & -1 & 2 & -2 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0
\end{pmatrix}
$$

For $\lambda = 2$,

$$
\operatorname{rref}(A-2I) = \operatorname{rref}\begin{pmatrix}
    3-2 & −2 & 4 & −4 \\
    1 & 0-2 & 2 & −2 \\
    −1 & 1 & −1-2 & 2 \\
    −1 & 1 & −2 & 3-2
\end{pmatrix} = \begin{pmatrix}
    1 & 0 & 0 & 2 \\
    0 & 1 & 0 & 1 \\
    0 & 0 & 1 & -1 \\
    0 & 0 & 0 & 0
\end{pmatrix}
$$

There are three free variables, as such $\dim\ker(A-I)=3$. So the geometric and algebraic multiplicity for $\lambda=2$ also matches.

As such, we can conclue that $A$ is diagonalizable.

## Question 6. (10 points) Let $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3, \mathbf{v}_4, \mathbf{v}_5$ be any 5 vectors in a vector space $V$ of dimension $4$. Determine if the following statements are correct. Explain.

### (i) These 5 vectors must be linearly dependent.
### (ii) We can always extract a basis for $V$ from these 5 vectors.
### (iii) We can always extract a basis for the subspace $\operatorname{span}\set{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3, \mathbf{v}_4, \mathbf{v}_5}$ from these 5 vectors.

## Question 7. (15 points)

### (a) Define rigorously the definition of the least square solution for the system $A\mathbf{x} = b$. Using your definition, explain why if the system $A\mathbf{x} = b$ has a solution $x_0$, then $x_0$ must be the least square solution.

### (b). Let $A$ be an $m × n$ matrix with $\operatorname{rank}(A) = n$. Let also $A = UΣV^T$ be its singular value decomposition. Show that the least square solution of the system $A\mathbf{x} = \mathbf{b}$ is equal to

$$
\hat{\mathbf{x}} = \frac{\lang \mathbf{b}, \mathbf{u}_1 \rang}{\sigma_1}\mathbf{v}_1 + \cdots + \frac{\lang \mathbf{b}, \mathbf{u}_n \rang}{\sigma_n}\mathbf{v}_n
$$

## Question 8. (15 points) Let $\mathcal{P}_n$ be the vector space of polynomials of degree at most $n$. Let $$W_1 = \set{P(x) = a_0 + a_1x + a_2x^2 + .... + a_nx^n : P(1) = 0}.$$

### (i) Show that $W_1$ is a subspace of $\mathcal{P}_n$.

### (ii) Find a basis for $W_1$.

We now let

$$
W = \set{P(x) = a_0 + a_1x + a_2x^2 + .... + a_nx^n : P(i) = 0, \text{for all $i = 1, 2,\cdots, n$}}.
$$

### (iii) Google online the definition of the “Vandermonde matrix” and write down the determinant of the Vandermonde matrix.

### (iv) Use Vandermonde matrix, show that $W = \set{0}$.
