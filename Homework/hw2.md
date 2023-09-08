---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
---

# Homework 2

$$
    % Differentials d[something]/d[something]
    \gdef\diff#1#2{\frac{\mathrm{d}#1}{\mathrm{d}#2}}
    % Shortcut for dy/dx
    \gdef\dydx{\diff{y}{x}}
    % Differential letter "d" with a thin space before it
    \gdef\dd{\mathop{}\!\mathrm{d}}
    % Shortcut for not implies
    \gdef\nimplies{\;\;\;\not\nobreak\!\!\!\!\implies\;}
    % Shortcuts for extended brackets
    \gdef\({\left(} \gdef\){\right)}
    \gdef\[{\left[} \gdef\]{\right]}
    % Shortcut for real number symbol
    \gdef\R{\mathbb{R}}
    % More spacing between lines in arrays (override by using \[5em])
    \gdef\arraystretch{1.2}
$$

## 1. Find the reduced row echelon form of the following matrices and compute the rank.

### (a) $$\begin{bmatrix}    1 & -1 & 1 \\    1 & -1 & 2 \\    -1 & 1 & 0 \\\end{bmatrix}$$

$$
\begin{array}{c}
    \begin{bmatrix}
        1 & -1 & 1 \\
        1 & -1 & 2 \\
        -1 & 1 & 0
    \end{bmatrix}
    &\xrightarrow[R_3 + R_2]{R_2 - R_1}
    &\begin{bmatrix}
        1 & -1 & 1 \\
        0 & 0 & 1 \\
        0 & 0 & 2 \\
    \end{bmatrix}
    \\
    &\xrightarrow{R_3 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 1 \\
        0 & 0 & 1 \\
        0 & 0 & 0 \\
    \end{bmatrix}
\end{array}
\\[2em]
\therefore \operatorname{rank}\(
    \begin{bmatrix}
        1 & -1 & 1 \\
        1 & -1 & 2 \\
        -1 & 1 & 0
    \end{bmatrix}
\) = 2
$$

### (b) $$\begin{bmatrix}    1 & -1 & 2 & 1 \\    2 & 1 & -1 & 0 \\    1 & 2 & -3 & -1 \\    4 & -1 & 3 & 2 \\    0 & 3 & -5 & -2 \\\end{bmatrix}$$

$$
\begin{array}{c}
    \begin{bmatrix}
        1 & -1 & 2 & 1 \\
        2 & 1 & -1 & 0 \\
        1 & 2 & -3 & -1 \\
        4 & -1 & 3 & 2 \\
        0 & 3 & -5 & -2
    \end{bmatrix}
    &\xrightarrow[R_3 - R_1]{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        0 & 3 & -5 & -2 \\
        0 & 3 & -5 & -2 \\
        4 & -1 & 3 & 2 \\
        0 & 3 & -5 & -2
    \end{bmatrix}
    \\
    &\xrightarrow[R_2 \leftrightarrow R_4]
    {\substack{
        R_2 - R_3 \\[.2em]
        R_3 - R_2 \\[.2em]
        R_5 - R_2
    }}
    &\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        0 & 3 & -5 & -2 \\
        0 & 3 & -5 & -2 \\
        4 & -1 & 3 & 2 \\
        0 & 3 & -5 & -2
    \end{bmatrix}
    \\
    &\xrightarrow[R_3 - R_1]{R_2 - 2R_1}
    &\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        4 & -1 & 3 & 2 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
    \end{bmatrix}
    \\
    &\xrightarrow{R_2 - 4R_1}
    &\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        0 & 3 & -5 & -2 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
    \end{bmatrix}
    \\
    &\xrightarrow{\frac{1}{3}R_2}
    &\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        0 & 1 & -\frac{5}{3} & -\frac{2}{3} \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
    \end{bmatrix}
    \\
    &\xrightarrow{R_1 + R_2}
    &\begin{bmatrix}
        1 & 0 & \frac{1}{3} & \frac{1}{3} \\
        0 & 1 & -\frac{5}{3} & -\frac{2}{3} \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
    \end{bmatrix}
\end{array}
\\[2em]
\therefore\operatorname{rank}\(
\begin{bmatrix}
        1 & -1 & 2 & 1 \\
        2 & 1 & -1 & 0 \\
        1 & 2 & -3 & -1 \\
        4 & -1 & 3 & 2 \\
        0 & 3 & -5 & -2
    \end{bmatrix}
\) = 2
$$

### (c\) $$\begin{bmatrix}    1 & -1 & 1 & -1 \\    1 & -1 & 1 & 1 \\    1 & -1 & 1 & 3 \\\end{bmatrix}$$

$$
\begin{array}{c}
    \begin{bmatrix}
        1 & -1 & 1 & -1 \\
        1 & -1 & 1 & 1 \\
        1 & -1 & 1 & 3 \\
    \end{bmatrix}
    &\xrightarrow[R_2 - R_1]{R_3 - R_2}
    &\begin{bmatrix}
        1 & -1 & 1 & -1 \\
        0 & 0 & 0 & 2 \\
        0 & 0 & 0 & 2 \\
    \end{bmatrix}
    \\
    &\xrightarrow[\frac{1}{2}R_3]{\frac{1}{2}R_2}
    &\begin{bmatrix}
        1 & -1 & 1 & -1 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 0 & 1 \\
    \end{bmatrix}
    \\
    &\xrightarrow[R_3 - R_2]{R_1 + R_2}
    &\begin{bmatrix}
        1 & -1 & 1 & 0 \\
        0 & 0 & 0 & 1 \\
        0 & 0 & 0 & 0 \\
    \end{bmatrix}
\end{array}
\\[2em]
\therefore\operatorname{rank}\(
    \begin{bmatrix}
        1 & -1 & 1 & -1 \\
        1 & -1 & 1 & 1 \\
        1 & -1 & 1 & 3 \\
    \end{bmatrix}
\) = 2
$$

### (d) $$\begin{bmatrix}    3 \\    0 \\    -2\end{bmatrix}$$

$$
\begin{array}{c}
    \begin{bmatrix}
        3 \\
        0 \\
        -2
    \end{bmatrix}
    &\xrightarrow[-\frac{1}{2}R_3]{R_1 + \frac{3}{2}R_3}
    &\begin{bmatrix}
        0 \\
        0 \\
        1
    \end{bmatrix}
    \\
    &\xrightarrow{R_1 \leftrightarrow R_2}
    &\begin{bmatrix}
        1 \\
        0 \\
        0
    \end{bmatrix}
\end{array}
\\[2em]
\therefore\operatorname{rank}\(
    \begin{bmatrix}
        3 \\
        0 \\
        -2
    \end{bmatrix}
\) = 1
$$

## 2. For which values of $a, b, c, d, e$ is the following matrix in reduced row echelon form? $$\begin{bmatrix}    1 & a & b & 3 & 0 & -2 \\    0 & 0 & c & 1 & d & 3 \\    0 & 0 & e & 0 & 1 & 1 \\\end{bmatrix}$$

$
\begin{bmatrix}
    1 & a & b & 3 & 0 & -2 \\
    0 & 0 & c & 1 & d & 3 \\
    0 & 0 & e & 0 & 1 & 1 \\
\end{bmatrix}
$ is in reduced row echelon form if $c=1$ and $b=d=e=0$.

## 3. If the rank of a $4\times4$ matrix $A$ is $4$, what is its $\operatorname{rref}(A)$?

$A$ must have a full row rank, therefore $\operatorname{rref}(A)$ must be:
$$
\begin{bmatrix}
    1 & 0 & 0 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 1 & 0 \\
    0 & 0 & 0 & 1
\end{bmatrix}
$$

## 4. Find all the possible solutions of the following systems.

### (i) $$\left\{\begin{array}{c}    x - 2y + 2z - w = 3 \\    3x + y + 6z + 11w = 16 \\    2x - y + 4z + w = 9 \\\end{array}\right.$$

$$
\begin{array}{c}
    \left\{
    \begin{array}{c}
        x - 2y + 2z - w = 3 \\
        3x + y + 6z + 11w = 16 \\
        2x - y + 4z + w = 9 \\
    \end{array}
    \right.
    &\iff&
    \left[
        \begin{array}{cccc|c}
            1 & - 2 & 2 & - 1 & 3 \\
            3 & 1 & 6 & 11 & 16 \\
            2 & - 1 & 4 & 1 & 9
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3 - 2R_1]{R_2 - 3R_1}
    &\left[
        \begin{array}{cccc|c}
            1 & - 2 & 2 & - 1 & 3 \\
            0 & 7 & 0 & 14 & 7\\
            0 & 3 & 0 & 3 & 3
        \end{array}
    \right]
    \\
    &\xrightarrow[\frac{1}{7}R_2]{\frac{1}{3}R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & - 2 & 2 & - 1 & 3 \\
            0 & 1 & 0 & 2 & 1 \\
            0 & 1 & 0 & 1 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow[R_1 + R_3]{R_2 - R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & -1 & 2 & 0 & 4 \\
            0 & 0 & 0 & 1 & 0 \\
            0 & 1 & 0 & 1 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3 - R_2]{R_1 + R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & 2 & 0 & 5 \\
            0 & 0 & 0 & 1 & 0 \\
            0 & 1 & 0 & 0 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow{R_2 \leftrightarrow R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & 2 & 0 & 5 \\
            0 & 1 & 0 & 0 & 1 \\
            0 & 0 & 0 & 1 & 0 \\
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore
\left\{
    \begin{array}{c}
        x + 2z &= 5 \\
        y &= 1 \\
        w &= 0
    \end{array}
\right.
$$

Let $z\in\R$. Then, $x= 5-2z$. As such, the solution set is:
$$
\left\{
    \begin{pmatrix}
        5 - 2z \\
        1 \\
        z \\
        0
    \end{pmatrix}
    : z \in\R
\right\}
$$


### (ii) $$\left\{\begin{array}{c}    x + y - 2z = -3 \\    2x - y + 3z = 7 \\    x - 2y + 5z = 1 \\\end{array}\right.$$

$$
\begin{array}{c}
    \left\{
    \begin{array}{c}
        x + y - 2z = -3 \\
        2x - y + 3z = 7 \\
        x - 2y + 5z = 1
    \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & -2 & -3 \\
            2 & - 1 & 3 & 7 \\
            1 & - 2 & 5 & 1
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3 - R_1]{R_2 - 2R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & -2 & -3 \\
            0 & -3 & 7 & 13 \\
            0 & -3 & 7 & 4
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 - R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & -2 & -3 \\
            0 & -3 & 7 & 13 \\
            0 & 0 & 0 & -9
        \end{array}
    \right]
\end{array}
$$

No solutions.

### (iii) $$\left\{\begin{array}{c}    x + 2y = 1 \\    2x + 5y = 2 \\    3x + 6y = 3 \\\end{array}\right.$$

$$
\begin{array}{c}
    \left\{
    \begin{array}{c}
        x + 2y = 1 \\
        2x + 5y = 2 \\
        3x + 6y = 3
    \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{cc|c}
            1 & 2 & 1 \\
            2 & 5 & 2 \\
            3 & 6 & 3
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3 - 2R_1]{R_2 - 2R_1}
    &\left[
        \begin{array}{cc|c}
            1 & 2 & 1 \\
            0 & 1 & 0 \\
            0 & 0 & 0
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - 2R_2}
    &\left[
        \begin{array}{cc|c}
            1 & 0 & 1 \\
            0 & 1 & 0 \\
            0 & 0 & 0
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore x=1, y=0
$$

### (iv) $$\left\{\begin{array}{c}    x_1 + x_2 + x_3 + 9x_4 = 8 \\    x_2 + 2x_3 + 8x_4 = 7 \\    -3x_1 + x_3 - 7x_4 = 9 \\\end{array}\right.$$

$$
\begin{array}{c}
    \left\{
    \begin{array}{c}
        x_1 + x_2 + x_3 + 9x_4 = 8 \\
        x_2 + 2x_3 + 8x_4 = 7 \\
        -3x_1 + x_3 - 7x_4 = 9
    \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & 1 & 9 & 8 \\
            0 & 1 & 2 & 8 & 7 \\
            -3 & 0 & 1 & -7 & 9
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 + 3R_1}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & 1 & 9 & 8 \\
            0 & 1 & 2 & 8 & 7 \\
            0 & 3 & 4 & 20 & 33
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 - 3R_2}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & 1 & 9 & 8 \\
            0 & 1 & 2 & 8 & 7 \\
            0 & 0 & -2 & -4 & 12
        \end{array}
    \right]
    \\
    &\xrightarrow{-\frac{1}{2}R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & 1 & 9 & 8 \\
            0 & 1 & 2 & 8 & 7 \\
            0 & 0 & 1 & 2 & -6
        \end{array}
    \right]
    \\
    &\xrightarrow[R_1 - R_3]{R_2 - 2R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 1 & 0 & 7 & 14 \\
            0 & 1 & 0 & 4 & 19 \\
            0 & 0 & 1 & 2 & -6
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 - R_2}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & 0 & 3 & -5 \\
            0 & 1 & 0 & 4 & 19 \\
            0 & 0 & 1 & 2 & -6
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore
\left\{
    \begin{array}{c}
        x_1 + 3x_4 &= -5 \\
        x_2 + 4x_4 &= 19 \\
        x_3 + 2x_4 &= -6
    \end{array}
\right.
$$

Let $x_4\in\R$. Then:
$$
x_1 = -5-3x_4 \\
x_2 = 19-4x_4 \\
x_3 = -6-2x_4
$$

As such, the solution set is:
$$
\left\{
    \begin{pmatrix}
        -5-3x_4 \\
        19-4x_4 \\
        -6-2x_4 \\
        x_4
    \end{pmatrix}
    : x_4 \in \R
\right\} =
\left\{
    \begin{pmatrix}
        -5 \\
        19 \\
        -6 \\
        0
    \end{pmatrix}
    +
    \begin{pmatrix}
        - 3 \\
        - 4 \\
        - 2 \\
        1
    \end{pmatrix}
    x_4
    : x_4 \in \R
\right\}
$$


## 5. Determine $k$ for which the following system has infinitely many solutions. $$\left\{\begin{array}{c}    x + y = 0 \\    2y + 2kz = 1 \\    y + kz = 2k \\\end{array}\right.$$

$$
\begin{array}{c}
    \left\{
    \begin{array}{c}
        x + y = 0 \\
        2y + 2kz = 1 \\
        y + kz = 2k \\
    \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 0 & 0 \\
            0 & 2 & 2k & 1 \\
            0 & 1 & k & 2k
        \end{array}
    \right]
    \\
    &\xrightarrow{R_2 - 2R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 0 & 0 \\
            0 & 0 & 0 & 1-4k \\
            0 & 1 & k & 2k
        \end{array}
    \right]
    \\
    &\xrightarrow{R_2 \leftrightarrow R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 0 & 0 \\
            0 & 1 & k & 2k \\
            0 & 0 & 0 & 1-4k
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore\operatorname{rank}\left(
\left[
    \begin{array}{ccc|c}
        1 & 1 & 0 & 0 \\
        0 & 1 & k & 2k \\
        0 & 0 & 0 & 1-4k
    \end{array}
\right]
\right) < 3 \iff k=\frac{1}{4}
$$

The system will have infinitely many solutions for $k=\displaystyle\frac{1}{4}$.

## 6. (True or False) Determine if the following statements are true or false. If it is true, explain and prove it. If it is false, give a counterexample.

Let $A$ be an $3\times5$ matrix, then:

### (i) $Ax = b$ always has a solution.

False. Let $
A = \begin{bmatrix}
    1 & 0 & 0 & 0 & 0 \\
    0 & 1 & 0 & 0 & 0 \\
    0 & 0 & 1 & 0 & 0
\end{bmatrix}$ and $ \vec{b} = \begin{bmatrix}
    1 \\
    1 \\
    0
\end{bmatrix}$. Clearly, $
\left[
\begin{array}{ccccc|c}
    1 & 0 & 0 & 0 & 0 & 1 \\
    0 & 1 & 0 & 0 & 0 & 1 \\
    0 & 0 & 1 & 0 & 0 & 0
\end{array}
\right]$ has no solutions.




### (ii) $Ax = 0$ always has a solution.

True. $A\vec{x} = \vec{0} \iff \vec{x} = \vec{0}$.

### (iii) If a system $Ax = b$ has no solution, then $\operatorname{rank}(A) < 3$.

True. Consider the inverse, where $\operatorname{rank}(A) = 3$ (which means it has a full row rank). Then, there must be at least one solution.

### (iv) There are always infinitely many solutions to the system $Ax = 0$.

True. $\operatorname{rank}(A)\leq3$ and the number of columns $n=5$. By definition, for a matrix $A$ with $n$ columns where $\operatorname{rank}(A) < n$, $A\vec{x}=\vec{0}$ will have infinitely many solutions.

### (v) It is possible that the system $Ax = b$ has a unique solution.

True. Sure, it's *possible*. Let $
A = \begin{bmatrix}
    1 & 0 & 0 & 0 & 0 \\
    0 & 1 & 0 & 0 & 0 \\
    0 & 0 & 1 & 0 & 0
\end{bmatrix}$ and $ \vec{b} = \begin{bmatrix}
    1 \\
    1 \\
    1
\end{bmatrix}$. Then clearly, $
\left[
\begin{array}{ccccc|c}
    1 & 0 & 0 & 0 & 0 & 1 \\
    0 & 1 & 0 & 0 & 0 & 1 \\
    0 & 0 & 1 & 0 & 0 & 1
\end{array}
\right]$ has a unique solution.
