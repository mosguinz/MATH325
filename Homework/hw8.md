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

$$
A = \begin{bmatrix}
    1 & 1 & −1 & 1 & 2 \\
    0 & 2 & 1 & 1 & 3 \\
    0 & 0 & 3 & 0 & 1 \\
    0 & 0 & 0 & 4 & −1 \\
    0 & 0 & 0 & 0 & −1
\end{bmatrix}
,\quad B = \begin{bmatrix}
1 & 1 & 1 \\
0 & 1 & 1 \\
0 & 0 & 2
\end{bmatrix}
$$

## 2. Find the conditions on $a$, $b$, $c$ so that the following matrix is diagonalizable.$$\begin{bmatrix}    1 & a & b \\    0 & 2 & c \\    0 & 0 & 1\end{bmatrix}$$

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

### (b) What is the dimension of $\mathcal{U}$?

### (c\)

#### (i) Is it true that any 7 matrices taken from $\mathcal{U}$ must be linearly dependent? Explain
#### (ii) Is it true that any 6 matrices taken from $\mathcal{U}$ must be a basis for $\mathcal{U}$? Explain

## 4. Consider the set of all continuous functions on the interval $[a, b]$, denoted by $C([a, b])$. Show that the set of all functions with mean value zero, i.e. $$M = \Set{    f: \frac{1}{b-a}\int_a^b f(x)dx = 0}$$ is a subspace of $C([a, b])$.

## 5. Determine if the following sets of vectors linearly independent in their own vector space.

### (i) $x^2 −3, 2 −x, (x −1)^2$ on $\mathcal{P}_2$.

### (ii) $\begin{bmatrix}2 & 1 \\3 & 2\end{bmatrix},\begin{bmatrix}1 & 2 \\0 & 3\end{bmatrix},\begin{bmatrix}1 & 5 \\2 & 0\end{bmatrix}$ on $\mathcal{M}_{2\times2}$

### (iii) $e^x, e^{3x}$ on $C([0, 1])$.


## 6. Let $$M = \Set{    \begin{bmatrix}    a_{11} & a_{12} & a_{13} \\    a_{21} & a_{22} & a_{23} \\    a_{31} & a_{32} & a_{33}    \end{bmatrix}: a_{11} + a_{22} + a_{33} = 0}.$$

### (i) Show that $M$ is a subspace for $\mathcal{M}_{3\times3}$.
### (ii) Find a basis for $M$ and what is the dimension of $M$?
