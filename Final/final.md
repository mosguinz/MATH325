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

If $\dim\ker(A) = 12$, then finding $\operatorname{rref}(A)$ will yield five pivot columns because the rest are free variables.

The corresponding pivot column on $A$ will make up a basis of $\operatorname{Im}(A)$. As such, the dimension of $\operatorname{Im}(A)$ is five.

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
\therefore \mathbf{\hat{x}} = (A^\top A)^{-1}A^\top \vector{b}
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

There are three free variables, as such $\dim\ker(A-I)=3$. So the geometric and algebraic multiplicity for $\lambda=1$ matches.

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

There is one free variable, as such $\dim\ker(A-2I)=1$. And so, the geometric and algebraic multiplicity for $\lambda=2$ also matches.

As such, we conclude that $A$ is diagonalizable.

## Question 6. (10 points) Let $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3, \mathbf{v}_4, \mathbf{v}_5$ be any 5 vectors in a vector space $V$ of dimension $4$. Determine if the following statements are correct. Explain.

### (i) These 5 vectors must be linearly dependent.

True. Since these vectors are of dimension four, at least one of them must be the same vector or a multiple or each other.

### (ii) We can always extract a basis for $V$ from these 5 vectors.

False. Consider $\mathbf{v}_1 = \mathbf{v}_2 = \mathbf{v}_3 = \mathbf{v}_4 = \mathbf{v}_5$.

### (iii) We can always extract a basis for the subspace $\operatorname{span}\set{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3, \mathbf{v}_4, \mathbf{v}_5}$ from these 5 vectors.

True. Let $W\subseteq V$ be a subspace where $W=\operatorname{span}\set{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3, \mathbf{v}_4, \mathbf{v}_5}$. A basis of $W$ would just be the set of linearly independent vectors in the span of $W$. Just to be clear, this only applies to $W$ and may not necessarily span the vector space $V$.

## Question 7. (15 points)

### (a) Define rigorously the definition of the least square solution for the system $A\mathbf{x} = b$. Using your definition, explain why if the system $A\mathbf{x} = b$ has a solution $x_0$, then $x_0$ must be the least square solution.

The least square solution for the system $A\mathbf{x}=b$ is a vector $\mathbf{\hat{x}}$ such that $||b-A\mathbf{\hat{x}}||$ is minimized. More concretely, it is a solution such that

$$
||b-A\mathbf{\hat{x}}|| \le ||b-A\mathbf{x}||
$$

for all other $\mathbf{x}$. In other words, the whole point of finding the least square solution is to satisfy the system $A\mathbf{x}=b$ as closely as possible.

However, if $A\mathbf{x}=b$ has a solution $x_0$, then $||b-Ax_0|| = 0$. Which means that $x_0$ is a solution such that the distance is minimized. Hence, $x_0$ must be the least square solution.

### (b). Let $A$ be an $m × n$ matrix with $\operatorname{rank}(A) = n$. Let also $A = UΣV^T$ be its singular value decomposition. Show that the least square solution of the system $A\mathbf{x} = \mathbf{b}$ is equal to $$\hat{\mathbf{x}} = \frac{\lang \mathbf{b}, \mathbf{u}_1 \rang}{\sigma_1}\mathbf{v}_1 + \cdots + \frac{\lang \mathbf{b}, \mathbf{u}_n \rang}{\sigma_n}\mathbf{v}_n$$

If $A$ is an $m\times n$ matrix with $\operatorname{rank}(A)=n$. Then, $A^\top A$ is an $m\times m$ matrix with $\operatorname{rank}(A^\top A)=m$.

Then, let

$$
U = \begin{bmatrix}
    | && | \\
    \mathbf{u}_1 & \cdots & \mathbf{u}_n \\
    | && |
\end{bmatrix},\quad
\Sigma = \begin{bmatrix}
    \sigma_1 && & 0 \\
    & \ddots && \vdots\\
    && \sigma_n & 0
\end{bmatrix},\quad
V = \begin{bmatrix}
    | && | \\
    \mathbf{v}_1 & \cdots & \mathbf{v}_n \\
    | && |
\end{bmatrix},
$$

where $U^\top U = I$ and $V^\top V = I$.

Since $A^\top A$ is invertible, the least square solution of the system $A\mathbf{x}=\mathbf{b}$ is

$$
\mathbf{\hat{x}} = (A^\top A)^{-1} A^\top \mathbf{b}.
$$

Now, let's unpack $A^\top A$.

$$
A = U\Sigma V^\top \implies A^\top = V\Sigma^\top U^\top \\[1em]
\begin{align*}
    A^\top A &= V\Sigma^\top \underbrace{U^\top U}_I \Sigma V^\top \\
    &= V\begin{bmatrix}
        \sigma_1 & \\
        & \ddots & \\
        && \sigma_n \\
        0 &\cdots & 0
    \end{bmatrix}\begin{bmatrix}
        \sigma_1 && & 0 \\
        & \ddots && \vdots\\
        && \sigma_n & 0
    \end{bmatrix}V^\top \\
    &= V\begin{bmatrix}
        \sigma_1^2 && \\
        & \ddots &\\
        && \sigma_n^2
    \end{bmatrix}V^\top
\end{align*}
$$

Then, taking the inverse yields:

$$
\begin{align*}
    (A^\top A)^{-1} &= \(V\begin{bmatrix}
        \sigma_1^2 && \\
        & \ddots &\\
        && \sigma_n^2
    \end{bmatrix}V^\top\)^{-1} \\
    &= V\begin{bmatrix}
        \frac{1}{\sigma_1^2} && \\
        & \ddots &\\
        && \frac{1}{\sigma_n^2}
    \end{bmatrix}V^\top
\end{align*}
$$

Finally, plugging it into the expression for $\mathbf{\hat{x}}$:

$$
\def<{\left\langle} \def>{\right\rangle}
\begin{align*}
    \mathbf{\hat{x}} &= (A^\top A)^{-1} A^\top \mathbf{b} \\
    &= V\begin{bmatrix}
         \frac{1}{\sigma_1^2} && \\
         & \ddots &\\
         && \frac{1}{\sigma_n^2}
     \end{bmatrix}\underbrace{V^\top V}_I \Sigma^\top U^\top \mathbf{b} \\
     &= \begin{bmatrix}
        | && | \\
        \mathbf{v}_1 & \cdots & \mathbf{v}_n \\
        | && |
    \end{bmatrix}
    \begin{bmatrix}
         \frac{1}{\sigma_1^2} && \\
         & \ddots &\\
         && \frac{1}{\sigma_n^2}
     \end{bmatrix}
    \begin{bmatrix}
        \sigma_1 && & 0 \\
        & \ddots && \vdots\\
        && \sigma_n & 0
    \end{bmatrix}
    \begin{bmatrix}
        \mathbf{u}_1 \\ \vdots \\ \mathbf{u}_n
    \end{bmatrix} \mathbf{b} \\
    &= \begin{bmatrix}
        | && | \\
        \mathbf{v}_1 & \cdots & \mathbf{v}_n \\
        | && |
    \end{bmatrix}
    \begin{bmatrix}
         \frac{1}{\sigma_1} && \\
         & \ddots &\\
         && \frac{1}{\sigma_n}
     \end{bmatrix}
    \begin{bmatrix}
        <\mathbf{b}, \mathbf{u}_1> \\
        \vdots \\
        <\mathbf{b}, \mathbf{u}_n>
    \end{bmatrix} \\
    &= \begin{bmatrix}
        | && | \\
        \mathbf{v}_1 & \cdots & \mathbf{v}_n \\
        | && |
    \end{bmatrix}
    \begin{bmatrix}
        \frac{<\mathbf{b}, \mathbf{u}_1>}{\sigma_1} \\
        \vdots \\
        \frac{<\mathbf{b}, \mathbf{u}_n>}{\sigma_n}
    \end{bmatrix} \\
    &= \frac{\lang \mathbf{b}, \mathbf{u}_1 \rang}{\sigma_1}\mathbf{v}_1
    + \cdots
    + \frac{\lang \mathbf{b}, \mathbf{u}_n \rang}{\sigma_n}\mathbf{v}_n
\end{align*}
$$

## Question 8. (15 points) Let $\mathcal{P}_n$ be the vector space of polynomials of degree at most $n$. Let $$W_1 = \set{P(x) = a_0 + a_1x + a_2x^2 + .... + a_nx^n : P(1) = 0}.$$

### (i) Show that $W_1$ is a subspace of $\mathcal{P}_n$.

#### Checking if $W_1$ is closed under addition

Consider $P_1,P_2\in W_1$. Then, $P_1(1) = 0$ and $P_2(1) = 0$. Subsequently,

$$
(P_1 + P_2)(1) = P_1(1) + P_2(1) = 0 + 0 = 0.
$$

Hence, $P_1 + P_2\in W_1$.

#### Checking if $W_1$ is closed under scalar multiplication

Consider $P\in W_1$ and $\alpha\in\R$. Then, $P(1) = 0$ and $\alpha P(1) = \alpha(0) = 0$.

Hence, $\alpha P\in W_1$.

Since $W_1$ is closed under addition and scalar multiplication, it is a subspace of $\mathcal{P}_n$.

### (ii) Find a basis for $W_1$.

Consider a set of polynomial $P_1,P_2,\ldots,P_n\in W_1$, where:

$$
\begin{align*}
    P_1(x) &= a_0 + a_1x \\
    P_2(x) &= a_0 + a_1x + a_2x^2 \\
    &\vdots \\
    P_n(x) &= a_0 + a_1x + a_2x^2 + \cdots + a_nx^n \\
\end{align*}
$$

For some $P\in W_1$, we need $P(1)=0$.

$$
\begin{align*}
    P(1) &= a_0 + a_1(1) + a_2(1)^2 + \cdots + a_n(1)^n &= 0 \\
    &= a_0 + a_1 + a_2 + \cdots + a_n &= 0
\end{align*}
\\
\therefore a_0 + a_1 + a_2 + \cdots + a_n = 0
$$

So, we need the sum of the coefficients to be zero. An easy way to satisfy this is to:

* let the coefficient of the degree zero term, $a_0=1$,
* let the coefficient of the highest degree term $a_n=-1$,
* and set the coefficient of all other terms $a_1=a_2=\cdots=a_{n-1}=0$.

$$
\begin{CD}
    \text{ $a_0 + \cancel{a_1 x + a_2x^2 + \cdots + a_{n-1}x^{n-1}} + a_nx^n $}\\
    @V\text{$a_0 = 1$}\quad V \quad\text{$a_n=-1$}V \\
    \text{$1 - x^n$}
\end{CD}
$$

Simply put, we want to kill off the middle terms so that we get polynomials that will give us $1-1^n=0$.

And so, we have:

$$
\begin{align*}
    P_1(x) &= 1 - x \\
    P_2(x) &= 1 - x^2 \\
    \vdots \\
    P_n(x) &= 1-x^n
\end{align*}
$$

By observation, we can see that $P_i(1) = 0$ for all $i\in\Z^+$.

Let $c_1,c_2, \ldots, c_n \in\R$ be some scalars. Then, using the abovementioned, we have that

$$
\begin{align*}
    & c_1P_1(x) + c_2P_2(x) + \cdots + c_nP_n(x) \\
    &= c_1(0) + c_2(0) + \cdots + c_n(0) \\
    &= 0.
\end{align*}
$$

As such, a basis of $W_1$ is $\Set{1-x, 1-x^2, \cdots, 1-x^n}$.

### We now let $$W = \set{P(x) = a_0 + a_1x + a_2x^2 + .... + a_nx^n : P(i) = 0, \text{for all $i = 1, 2,\cdots, n$}}.$$ (iii) Google online the definition of the “Vandermonde matrix” and write down the determinant of the Vandermonde matrix.

From [Wikipedia](https://en.wikipedia.org/wiki/Vandermonde_matrix):

In linear algebra, a *Vandermonde matrix*, named after Alexandre-Théophile Vandermonde, is a matrix with the terms of a geometric progression in each row: an $(m + 1) \times (n + 1)$ matrix

$$
V = V(x_0, x_1, \cdots, x_m) =
\begin{bmatrix}
    1 & x_0 & x_0^2 & \dots & x_0^n \\
    1 & x_1 & x_1^2 & \dots & x_1^n \\
    1 & x_2 & x_2^2 & \dots & x_2^n \\
    \vdots & \vdots & \vdots & \ddots &\vdots \\
    1 & x_m & x_m^2 & \dots & x_m^n
\end{bmatrix}
$$

with entries $V_{i,j} = x_i^j$, the $j$^th^ power of the number $x_i$, for all zero-based indices $i$ and $j$.

The determinant of a square Vandermonde matrix (when $n=m$) is called a *Vandermonde determinant* or Vandermonde polynomial. Its value is:

$$
\det(V) = \prod_{0 \le i < j \le n} (x_j - x_i).
$$

This is non-zero if and only if all $x_i$ are distinct (no two are equal), making the Vandermonde matrix invertible.

### (iv) Use Vandermonde matrix, show that $W = \set{0}$.

If $P\in W$, then it is a polynomial in the form

$$
P(x) = a_0 + a_1x + a_2x^2 + \cdots + a_nx^n
$$

such that it satisfies

$$
P(x_0) = y_0, P(x_1) = y_1, \ldots, P(x_m) = y_m.
$$

In our case, we have that

$$
\vector{x} = \begin{bmatrix}
    x_0 \\ x_1 \\ x_2 \\ \vdots \\ x_m
\end{bmatrix} = \begin{bmatrix}
    1 \\ 2 \\ 3 \\ \vdots \\ m
\end{bmatrix}
\quad\text{and}\quad
\vector{y} = \begin{bmatrix}
    y_0 \\ y_1 \\ y_2 \\ \vdots \\ y_m
\end{bmatrix} = \begin{bmatrix}
    P(x_0) \\ P(x_1) \\ P(x_2) \\ \vdots \\ P(x_m)
\end{bmatrix} = \begin{bmatrix}
    0 \\ 0 \\ 0 \\ \vdots \\ 0
\end{bmatrix}.
$$

Here, we note that $\vector{y}=\vector{0}$ because

$$
\begin{align*}
    P\in W &\iff P(x_0) = P(x_1) = P(x_2) = \cdots = P(x_m) = 0 \\
    &\iff P(1) = P(2) = P(3) = \cdots = P(m) = 0.
\end{align*}
$$


Then, our Vandermonde matrix $V$ is given by:

$$
V=
\begin{bmatrix}
    1 & x_0 & x_0^2 & \cdots & x_0^n \\
    1 & x_1 & x_1^2 & \cdots & x_1^n \\
    1 & x_2 & x_2^2 & \cdots & x_2^n \\
    \vdots & \vdots & \vdots & \ddots &\vdots \\
    1 & x_m & x_m^2 & \cdots & x_m^n
\end{bmatrix}=
\begin{bmatrix}
    1 & 1 & 1^2 & \cdots & 1^n \\
    1 & 2 & 2^2 & \cdots & 2^n \\
    1 & 3 & 3^2 & \cdots & 3^n \\
    \vdots & \vdots & \vdots & \ddots &\vdots \\
    1 & m & m^2 & \cdots & m^n
\end{bmatrix}
$$

Let $\vector{a} = \begin{bmatrix}
    a_0 \\ a_1 \\ a_2 \\ \vdots \\ a_n
\end{bmatrix}$ be a column vector representing the coefficients. Then, we can construct a system $V\vector{a} = \vector{y}$. Since $\vector{y}=\vector{0}$, we just have a homogenous system.

$$
V\vector{a} = \vector{y} \\
\begin{bmatrix}
    1 & 1 & 1^2 & \cdots & 1^n \\
    1 & 2 & 2^2 & \cdots & 2^n \\
    1 & 3 & 3^2 & \cdots & 3^n \\
    \vdots & \vdots & \vdots & \ddots &\vdots \\
    1 & m & m^2 & \cdots & m^n
\end{bmatrix}
\begin{bmatrix}
    a_0 \\ a_1 \\ a_2 \\ \vdots \\ a_n
\end{bmatrix} =
\begin{bmatrix}
    0 \\ 0 \\ 0 \\ \vdots \\ 0
\end{bmatrix}
$$

As such, we know there exists a trivial solution for $\vector{a}$.

Finally, since our $x_i$ terms are distinct (ascending natural numbers), $\det(V)\neq0$. Therefore, this system contains **only trivial solution**.

Further, given that $m=n$, $V$ is also invertible. As such, $P$ can be obtained by finding that $\vector{a}=V^{-1}\vector{y}=\vector{0}$.

Since

$$
\vector{a} = \vector{0}
\implies
a_0=\cdots=a_n=0,
$$

then such a polynomial $P\in W$ must be zero. Hence, $W$ is a trivial subspace.
