---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 7


## 1. Find the determinant of the matrices using Gaussian elimination.


### (a) $$\begin{bmatrix}    2 & 0 & 3 \\    1 & 3 & 1 \\    0 & 1 & 1\end{bmatrix}$$

$$
\begin{align*}
    \det\begin{bmatrix}
        2 & 0 & 3 \\
        1 & 3 & 1 \\
        0 & 1 & 1
    \end{bmatrix}
    &\overset{R_2-R_3}{=}
    \begin{vmatrix}
        2 & 0 & 3 \\
        1 & 2 & 0 \\
        0 & 1 & 1
    \end{vmatrix} \\
    &\overset{R_1\leftrightarrow R_2}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 0 \\
        2 & 0 & 3 \\
        0 & 1 & 1
    \end{vmatrix} \\
    &\overset{R_2 - 2R_1}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 0 \\
        0 & -4 & 3 \\
        0 & 1 & 1
    \end{vmatrix} \\
    &\overset{R_2 + 5R_1}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 0 \\
        0 & 1 & 8 \\
        0 & 1 & 1
    \end{vmatrix} \\
    &\overset{R_3 - R_2}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 0 \\
        0 & 1 & 8 \\
        0 & 0 & -7
    \end{vmatrix} \\
    &= (-1)(1\cdot1\cdot-7) \\
    &= 7
\end{align*}
$$

### (b) $$\begin{bmatrix}    0 & 1 & 2 \\    −1 & 1 & 3 \\    2 & −2 & 0\end{bmatrix}$$

$$
\begin{align*}
    \det\begin{bmatrix}
        0 & 1 & 2 \\
        −1 & 1 & 3 \\
        2 & −2 & 0
    \end{bmatrix}
    &\overset{R_1\leftrightarrow R_2}{=}
    (-1) \begin{vmatrix}
        −1 & 1 & 3 \\
        0 & 1 & 2 \\
        2 & −2 & 0
    \end{vmatrix} \\
    &\overset{R_3 + 2R_2}{=}
    (-1) \begin{vmatrix}
        −1 & 1 & 3 \\
        0 & 1 & 2 \\
        0 & 0 & 6
    \end{vmatrix} \\
    &= (-1) (-1\cdot1\cdot6) \\
    &= 6
\end{align*}
$$

### (c\)$$\begin{bmatrix}1 & −1 & 1 & 1\\1 & −1 & −1 & 0\\1 & 2 & 0 & −2\\2 & 0 & 2 & 1\end{bmatrix}$$

$$
\begin{align*}
    \det\begin{bmatrix}
        1 & −1 & 1 & 1 \\
        1 & −1 & −1 & 0 \\
        1 & 2 & 0 & −2 \\
        2 & 0 & 2 & 1
    \end{bmatrix}
    &\overset{R_2 - R_1}{=}
    \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 0 & -2 & -1 \\
        1 & 2 & 0 & −2 \\
        2 & 0 & 2 & 1
    \end{vmatrix} \\
    &\overset{R_3 - R_1}{=}
    \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 0 & -2 & -1 \\
        0 & 3 & -1 & −3 \\
        2 & 0 & 2 & 1
    \end{vmatrix} \\
    &\overset{R_4 - 2R_1}{=}
    \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 0 & -2 & -1 \\
        0 & 3 & -1 & −3 \\
        0 & 2 & 0 & -1
    \end{vmatrix} \\
    &\overset{R_2\leftrightarrow R_3}{=}
    (-1) \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 3 & -1 & −3 \\
        0 & 0 & -2 & -1 \\
        0 & 2 & 0 & -1
    \end{vmatrix} \\
    &\overset{\frac{2}{3}R_2}{=}
    \(-\frac{3}{2}\) \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 2 & -\frac{2}{3} & -2 \\
        0 & 0 & -2 & -1 \\
        0 & 2 & 0 & -1
    \end{vmatrix} \\
    &\overset{R_4 - R_2}{=}
    \(-\frac{3}{2}\) \begin{vmatrix}
        1 & −1 & 1 & 1 \\
        0 & 2 & -\frac{2}{3} & -2 \\
        0 & 0 & -2 & -1 \\
        0 & 0 & \frac{2}{3} & 1
    \end{vmatrix} \\
    &\overset{\frac{1}{3}R_3}{=}
    \(-\frac{9}{2}\) \begin{vmatrix}
        1 & −1 & 1 & 1 \\[.5em]
        0 & 2 & -\frac{2}{3} & -2 \\[.5em]
        0 & 0 & -\frac{2}{3} & -\frac{1}{3} \\[.5em]
        0 & 0 & \frac{2}{3} & 1
    \end{vmatrix} \\
    &\overset{R_4 + R_3}{=}
    \(-\frac{9}{2}\) \begin{vmatrix}
        1 & −1 & 1 & 1 \\[.5em]
        0 & 2 & -\frac{2}{3} & -2 \\[.5em]
        0 & 0 & -\frac{2}{3} & -\frac{1}{3} \\[.5em]
        0 & 0 & 0 & \frac{2}{3}
    \end{vmatrix} \\
    &= \(-\frac{9}{2}\)\(1\cdot2\cdot-\frac{2}{3}\cdot\frac{2}{3}\) \\
    &= 4
\end{align*}
$$


### (d)$$\begin{bmatrix}2 & 1 & 1 & 1 & 1 \\1 & 2 & 1 & 1 & 1 \\1 & 1 & 2 & 1 & 1 \\1 & 1 & 1 & 2 & 1 \\1 & 1 & 1 & 1 & 2\end{bmatrix}$$

$$
\begin{align*}
    \det\begin{bmatrix}
        2 & 1 & 1 & 1 & 1 \\
        1 & 2 & 1 & 1 & 1 \\
        1 & 1 & 2 & 1 & 1 \\
        1 & 1 & 1 & 2 & 1 \\
        1 & 1 & 1 & 1 & 2
    \end{bmatrix}
    &\overset{R_1\leftrightarrow R_2}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        2 & 1 & 1 & 1 & 1 \\
        1 & 1 & 2 & 1 & 1 \\
        1 & 1 & 1 & 2 & 1 \\
        1 & 1 & 1 & 1 & 2
    \end{vmatrix} \\
    &\overset{R_2 - 2R_1}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -3 & -1 & -1 & -1 \\
        1 & 1 & 2 & 1 & 1 \\
        1 & 1 & 1 & 2 & 1 \\
        1 & 1 & 1 & 1 & 2
    \end{vmatrix} \\
    &\overset{\substack{R_3 - R_1 \\ R_4  - R_1 \\ R_5 - R_1}}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -3 & -1 & -1 & -1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & -1 & 0 & 1 & 0 \\
        0 & -1 & 0 & 0 & 1
    \end{vmatrix} \\
    &\overset{R_2\leftrightarrow R_3}{=}
    \begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & -3 & -1 & -1 & -1 \\
        0 & -1 & 0 & 1 & 0 \\
        0 & -1 & 0 & 0 & 1
    \end{vmatrix} \\
    &\overset{R_3 - 3R_2}{=}
    \begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -4 & -1 & -1 \\
        0 & -1 & 0 & 1 & 0 \\
        0 & -1 & 0 & 0 & 1
    \end{vmatrix} \\
    &\overset{\substack{R_4 - R_2 \\ R_5 - R_2}}{=}
    \begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -4 & -1 & -1 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & -1 & 0 & 1
    \end{vmatrix} \\
    &\overset{R_3 \leftrightarrow R_4}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & -4 & -1 & -1 \\
        0 & 0 & -1 & 0 & 1
    \end{vmatrix} \\
    &\overset{R_4 - 4R_3}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & 0 & -5 & -1 \\
        0 & 0 & -1 & 0 & 1
    \end{vmatrix} \\
    &\overset{R_5 - R_3}{=}
    (-1)\begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & 0 & -5 & -1 \\
        0 & 0 & 0 & -1 & 1
    \end{vmatrix} \\
    &\overset{R_4 \leftrightarrow R_5}{=}
    \begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & 0 & -1 & 1 \\
        0 & 0 & 0 & -5 & -1 \\
    \end{vmatrix} \\
    &\overset{R_5 - 5R_4}{=}
    \begin{vmatrix}
        1 & 2 & 1 & 1 & 1 \\
        0 & -1 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 & 0 \\
        0 & 0 & 0 & -1 & 1 \\
        0 & 0 & 0 & 0 & -6 \\
    \end{vmatrix} \\
    &= 1\cdot-1\cdot-1\cdot-1\cdot-6 \\
    &= 6
\end{align*}
$$

## 2. Given $5\times5$ matrices $A$, $B$, $Q$. Suppose that $\det A = 3$, $\det B = 2$ and $Q$ is an invertible matrix. Find the determinant of $A^TB$, $A^3$, $2A$, $ABA$ and $Q^{−1}AQ$.

### $\det A^T B$

$$
\begin{align*}
    \det A^T B &= \det A^T \det B \\
    &= \det A \det B \\
    &= 3\cdot 2 \\
    &= 6
\end{align*}
$$

### $\det A^3$

$$
\begin{align*}
    \det A^3 &= \det AAA \\
    &= \det A \det A \det A \\
    &= 3\cdot3\cdot3 \\
    &= 27
\end{align*}
$$

### $\det 2A$

$$
\begin{align*}
    \det 2A &= \det 2\begin{pmatrix}
        a_{11} & & \\
        &\ddots& \\
        & & a_{55}
    \end{pmatrix}, & a_{ij} \in \R \\
     &= \det \begin{pmatrix}
        2a_{11} & & \\
        &\ddots& \\
        & & 2a_{55}
    \end{pmatrix}, & a_{ij} \in \R \\
     &= 2^5 \det \begin{pmatrix}
        a_{11} & & \\
        &\ddots& \\
        & & a_{55}
    \end{pmatrix}, & a_{ij} \in \R \\
    &= 2^5 \det A \\
    &= 32 \cdot 3 \\
    &= 96
\end{align*}
$$

### $\det ABA$

$$
\begin{align*}
    \det ABA &= \det A \det B \det A \\
    &= 3 \cdot 2 \cdot 3 \\
    &= 18
\end{align*}
$$

### $\det Q^{-1}AQ$

$$
\begin{align*}
    \det Q^{-1}AQ &= \det Q^{-1} \det A \det Q \\
    &= \frac{1}{\det Q} \det A \det Q \\
    &= \det A \\
    &=  3
\end{align*}
$$



## 3. Consider the following system of linear equations: $$\begin{cases}    px + y + z = 6, \\    3x − y + 11z = 6, \\    2x + y + 4z = q,\end{cases}$$

$$
\begin{cases}
    px + y + z = 6, \\
    3x − y + 11z = 6, \\
    2x + y + 4z = q,
\end{cases}
$$

### (a) Find the condition on $p$ so that the system has unique solution (Hint: $\det(A) \neq 0$).

### (b) Find the condition on $p$ and $q$ so that the system has infinitely many solutions (Hint: $\det(A) = 0$ and no inconsistent equations). Describe the solution set.

## 4. Show that if $A$ is an $n \times n$ skew-symmetric matrix (i.e. $A^T = −A$) and $n$ is an odd number, then $\det A = 0$.


## 5. Let $$A = \begin{bmatrix}    1 & 3 \\    4 & 2\end{bmatrix},\quad B =\begin{bmatrix}    0 & −2 & −3 \\    −1 & 1 & −1 \\    2 & 2 & 5\end{bmatrix}.$$

$$
A = \begin{bmatrix}
    1 & 3 \\
    4 & 2
\end{bmatrix},\quad B =
\begin{bmatrix}
    0 & −2 & −3 \\
    −1 & 1 & −1 \\
    2 & 2 & 5
\end{bmatrix}.
$$


### (i) Find the eigenvalues and eigenvectors of both $A$ and $B$.
### (ii) Diagonalize $A$ and $B$.
### (iii) Find $A^{10}$ and $B^3$.
