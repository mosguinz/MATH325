---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 8

## 1. Find the algebraic and geometric multiplicity of the eigenvalues of the following matrices. $$A = \begin{bmatrix}    1 & 1 & −1 & 1 & 2 \\    0 & 2 & 1 & 1 & 3 \\    0 & 0 & 3 & 0 & 1 \\    0 & 0 & 0 & 4 & −1 \\    0 & 0 & 0 & 0 & −1\end{bmatrix},\quad B = \begin{bmatrix}1 & 1 & 1 \\0 & 1 & 1 \\0 & 0 & 2\end{bmatrix}$$Are they diagonalizable? Explain.

### For $A = \begin{bmatrix}    1 & 1 & −1 & 1 & 2 \\    0 & 2 & 1 & 1 & 3 \\    0 & 0 & 3 & 0 & 1 \\    0 & 0 & 0 & 4 & −1 \\    0 & 0 & 0 & 0 & −1\end{bmatrix}$

$$
A-\lambda I = \begin{bmatrix}
    1-\lambda & 1 & −1 & 1 & 2 \\
    0 & 2-\lambda & 1 & 1 & 3 \\
    0 & 0 & 3-\lambda & 0 & 1 \\
    0 & 0 & 0 & 4-\lambda & −1 \\
    0 & 0 & 0 & 0 & −1-\lambda
\end{bmatrix} \\
\det(A-\lambda I) =
(1-\lambda)(2-\lambda)(3-\lambda)(4-\lambda)(−1-\lambda) = 0 \\
\therefore\lambda= -1, 1, 2, 3, 4
$$

By observation, we can see that there are no repeated roots in the characteristic polynomial. As such, the algebraic multiplicity of all five eigenvalues are $1$.

For $\lambda_1=-1$,

$$
\operatorname{rref} (A-(-1) I) = \begin{bmatrix}
    1 & 0 & 0 & 0 & \frac{11}{15} \\[.5em]
    0 & 1 & 0 & 0 & \frac{59}{60} \\[.5em]
    0 & 0 & 1 & 0 & \frac{1}{4} \\[.5em]
    0 & 0 & 0 & 1 & -\frac{1}{5} \\[.5em]
    0 & 0 & 0 & 0 & 0
\end{bmatrix}
$$

There's one free variable, so the geometric multiplicity for $\lambda_1 = -1$ is $1$ (because the nullity i.e., $\dim\ker (A-\lambda)$ is $1$).

And similarly for $\lambda_2,\lambda_3,\lambda_4,\lambda_5$, we find that they all have one free variable.

$$
\begin{array}{c}
    \lambda_2 = 1 &
    \lambda_3 = 2 &
    \lambda_4 = 3 &
    \lambda_5 = 4 & \\
    \operatorname{rref}(A-I) &
    \operatorname{rref}(A-2I) &
    \operatorname{rref}(A-3I) &
    \operatorname{rref}(A-4I) \\
    \\ \hline \\
    \begin{bmatrix}
        1 & 1 & 0 & 0 & 0 \\
        0 & 0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 & 0 \\
        0 & 0 & 0 & 0 & 1 \\
        0 & 0 & 0 & 0 & 0
    \end{bmatrix} &
    \begin{bmatrix}
        1 & -1 & 0 & 0 & 0 \\
        0 & 0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 1 & 0 \\
        0 & 0 & 0 & 0 & 1 \\
        0 & 0 & 0 & 0 & 0
    \end{bmatrix} &
    \begin{bmatrix}
        1 & 0 & 0 & 0 & 0 \\
        0 & 1 & -1 & 0 & 0 \\
        0 & 0 & 0 & 1 & 0 \\
        0 & 0 & 0 & 0 & 1 \\
        0 & 0 & 0 & 0 & 0
    \end{bmatrix} &
    \begin{bmatrix}
        1 & 0 & 0 & -\frac{1}{2} & 0 \\[.2em]
        0 & 1 & 0 & -\frac{1}{2} & 0 \\[.2em]
        0 & 0 & 1 & 0 & 0 \\[.2em]
        0 & 0 & 0 & 0 & 1 \\[.2em]
        0 & 0 & 0 & 0 & 0
    \end{bmatrix}
\end{array}
$$

As such, the geometric multiplicity of all five eigenvalues are also $1$.

Since the algebraic and geometric multiplicity are the same for all five eigenvalues (all one), $A$ is diagonalizable.

### For $B = \begin{bmatrix}1 & 1 & 1 \\0 & 1 & 1 \\0 & 0 & 2\end{bmatrix}$

$$
B-\lambda I = \begin{bmatrix}
    1-\lambda & 1 & 1 \\
    0 & 1-\lambda & 1 \\
    0 & 0 & 2-\lambda
\end{bmatrix} \\
\begin{align*}
    \det(B-\lambda I) &=
    (1-\lambda)(1-\lambda)(2-\lambda) &= 0 \\
    &= (1-\lambda)^2(2-\lambda) &= 0
\end{align*}
\\
\therefore\lambda=1,2
$$

Here, we see that $1$ is a repeated root. So, the algebraic multiplicity for:

* $\lambda_1=1$ is $2$ and
* $\lambda_2=2$ is $1$.

For $\lambda_1=1$,

$$
\operatorname{rref}(B-I)= \begin{bmatrix}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{bmatrix}
$$

There's one free variable, so the geometric multiplicity for $\lambda_1 = 1$ is $1$.

Similarly for $\lambda_2=2$,

$$
\operatorname{rref}(B-2I) = \begin{bmatrix}
    1 & 0 & -2 \\
    0 & 1 & -1 \\
    0 & 0 & 0
\end{bmatrix}
$$

There's one free variable, so the geometric multiplicity for $\lambda_2 = 2$ is $1$.

Since the algebraic and geometric multiplicity for $\lambda_1=1$ are not equal ($2$ and $1$, respectively), $B$ is not diagonalizable.

## 2. Find the conditions on $a$, $b$, $c$ so that the following matrix is diagonalizable.$$\begin{bmatrix}    1 & a & b \\    0 & 2 & c \\    0 & 0 & 1\end{bmatrix}$$

Let $A = \begin{bmatrix}
    1 & a & b \\
    0 & 2 & c \\
    0 & 0 & 1
\end{bmatrix}$. $A$ is diagonalizable if the algebraic and geometric multiplicities for all eigenvalues are equal. By inspection, we have that:

$$
\det (A-\lambda I) = (1-\lambda)^2 (2-\lambda) = 0 \\
\therefore\lambda = 1,2
$$

So the eigenvalues are $1$ and $2$, with algebraic multiplicities of two and one, respectively.

For $\lambda_1 = 1$,

$$
A-I = \begin{bmatrix}
    0 & a & b \\
    0 & 1 & c \\
    0 & 0 & 0
\end{bmatrix}
\implies \operatorname{rref}(A-I) = \begin{bmatrix}
    0 & 1 & c \\
    0 & 0 & b-ac \\
    0 & 0 & 0
\end{bmatrix}
$$

$A$ is diagonalizable if for $\lambda_1=1$, there are two free variables. The last column will be a non-pivot if $b-ac=0$.

For $\lambda_2=2$,

$$
A-2I = \begin{bmatrix}
    -1 & a & b \\
    0 & 0 & c \\
    0 & 0 & -1
\end{bmatrix}
\implies\operatorname{rref}(A-2I) = \begin{bmatrix}
    1 & -a & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
\end{bmatrix}
$$

Additionally, for $\lambda_2=2$, there must be only one free variable. The second column will be a non-pivot if and only if $a=0$.

Together,

$$
(b-ac=0)\land (a=0) \implies b=0
$$

which means that the matrix is diagonalizable for $a=b=0$ and for any $c\in\R$.


## 3. Consider the set of all $3\times3$ upper triangular matrices
$$
\mathcal{U} = \Set{\begin{bmatrix}
    a & b & c \\
    0 & d & e \\
    0 & 0 & f
    \end{bmatrix} : a, b, c, d, e, f \in \R
}.
$$

### (a) Show that $\mathcal{U}$ is a subspace of $\mathcal{M}_{3\times3}$.

#### Checking if $\mathcal{U}$ is closed under addition

Consider two matrices $A,B\in\mathcal{U}$:

$$
A = \begin{bmatrix}
    a_1 & b_1 & c_1 \\
    0 & d_1 & e_1 \\
    0 & 0 & f_1
\end{bmatrix}, \quad
B = \begin{bmatrix}
    a_2 & b_2 & c_2 \\
    0 & d_2 & e_2 \\
    0 & 0 & f_2
\end{bmatrix}
$$

Sure enough, adding $A$ and $B$ will still produce an upper-triangular matrix.

$$
A + B = \begin{bmatrix}
    a_1 & b_1 & c_1 \\
    0 & d_1 & e_1 \\
    0 & 0 & f_1
\end{bmatrix} + \begin{bmatrix}
    a_2 & b_2 & c_2 \\
    0 & d_2 & e_2 \\
    0 & 0 & f_2
\end{bmatrix} = \begin{bmatrix}
    a_1+a_2 & b_1+b_2 & c_1+c_2 \\
    0 & d_1+d_2 & e_1+e_2 \\
    0 & 0 & f_1+f_2
\end{bmatrix}
$$

Since $A+B\in\mathcal{U}$, it is closed under addition.

#### Checking if $\mathcal{U}$ is closed under scalar multiplication

Consider a scalar $\alpha\in\R$ and a matrix $a\in\mathcal{U}$:

$$
A = \begin{bmatrix}
    a_1 & b_1 & c_1 \\
    0 & d_1 & e_1 \\
    0 & 0 & f_1
\end{bmatrix}
$$

Multiplying a scalar to an upper-triangular matrix will still produce an upper-triangular matrix.

$$
\alpha A = \begin{bmatrix}
    \alpha a_1 & \alpha b_1 & \alpha c_1 \\
    0 & \alpha d_1 & \alpha e_1 \\
    0 & 0 & \alpha f_1
\end{bmatrix}
$$

Since $\alpha A\in\mathcal{U}$, it is closed under scalar multiplication.

Hence, $\mathcal{U}$ is a subspace of $\mathcal{M}_{3\times3}$.

### (b) What is the dimension of $\mathcal{U}$?

For $a,b,c,d,e,f\in\R$, the matrix $\begin{bmatrix}
    a & b & c \\
    0 & d & e \\
    0 & 0 & f
\end{bmatrix}$ can be decomposed as:

$$
\begin{split}
    \begin{bmatrix}
        a & b & c \\
        0 & d & e \\
        0 & 0 & f
    \end{bmatrix} &= a \begin{bmatrix}
        1 & 0 & 0 \\
        0 & 0 & 0 \\
        0 & 0 & 0
    \end{bmatrix} + b \begin{bmatrix}
        0 & 1 & 0 \\
        0 & 0 & 0 \\
        0 & 0 & 0
    \end{bmatrix} + c \begin{bmatrix}
        0 & 0 & 1 \\
        0 & 0 & 0 \\
        0 & 0 & 0
    \end{bmatrix} \\
    &\quad+ d \begin{bmatrix}
        0 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 0
    \end{bmatrix} + e \begin{bmatrix}
        0 & 0 & 0 \\
        0 & 0 & 1 \\
        0 & 0 & 0
    \end{bmatrix} + f \begin{bmatrix}
        0 & 0 & 0 \\
        0 & 0 & 1 \\
        0 & 0 & 0
    \end{bmatrix}
\end{split}
$$

Note that these six $3\times3$ matrices are linearly independent. By observation, we can see that

$$
\vec{\mathbf{0}} = \begin{bmatrix}
    0 & 0 & 0 \\
    0 & 0 & 0 \\
    0 & 0 & 0
\end{bmatrix} \iff a=b=c=d=e=f=0.
$$

As such, by definition, it follows that these six vectors forms a basis of $\mathcal{U}$. Which subsequently means that $\dim\mathcal{U}=6$.



### (c\)

#### (i) Is it true that any 7 matrices taken from $\mathcal{U}$ must be linearly dependent? Explain

Yes. As shown in (b), its dimension is six. Choosing more than six means that at least one matrix must be the same or is a multiple of the other.

#### (ii) Is it true that any 6 matrices taken from $\mathcal{U}$ must be a basis for $\mathcal{U}$? Explain

No. If all six are identical or are multiple of each other, then they may not be a basis of $\mathcal{U}$.

## 4. Consider the set of all continuous functions on the interval $[a, b]$, denoted by $C([a, b])$. Show that the set of all functions with mean value zero, i.e. $$M = \Set{    f: \frac{1}{b-a}\int_a^b f(x)dx = 0}$$ is a subspace of $C([a, b])$.

## 5. Determine if the following sets of vectors linearly independent in their own vector space.

### (i) $x^2 −3, 2 −x, (x −1)^2$ on $\mathcal{P}_2$.

### (ii) $\begin{bmatrix}2 & 1 \\3 & 2\end{bmatrix},\begin{bmatrix}1 & 2 \\0 & 3\end{bmatrix},\begin{bmatrix}1 & 5 \\2 & 0\end{bmatrix}$ on $\mathcal{M}_{2\times2}$

### (iii) $e^x, e^{3x}$ on $C([0, 1])$.


## 6. Let $$M = \Set{    \begin{bmatrix}    a_{11} & a_{12} & a_{13} \\    a_{21} & a_{22} & a_{23} \\    a_{31} & a_{32} & a_{33}    \end{bmatrix}: a_{11} + a_{22} + a_{33} = 0}.$$

### (i) Show that $M$ is a subspace for $\mathcal{M}_{3\times3}$.
### (ii) Find a basis for $M$ and what is the dimension of $M$?
