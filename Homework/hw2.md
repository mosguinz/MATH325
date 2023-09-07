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

> ## 2. For which values of $a, b, c, d, e$ is the following matrix in reduced row echelon form? $$\begin{bmatrix}    1 & a & b & 3 & 0 & -2 \\    0 & 0 & c & 1 & d & 3 \\    0 & 0 & e & 0 & 1 & 1 \\\end{bmatrix}$$

$
\begin{bmatrix}
    1 & a & b & 3 & 0 & -2 \\
    0 & 0 & c & 1 & d & 3 \\
    0 & 0 & e & 0 & 1 & 1 \\
\end{bmatrix}
$ is in reduced row echelon form for $c=e=0$ and $a,b,d \neq 0$.

> ## 3. If the rank of a $4\times4$ matrix $A$ is $4$, what is its $\operatorname{rref}(A)$?

$A$ must have a full row rank (and also full column rank), therefore $\operatorname{rref}(A)$ must be a matrix in the form:
$$
\begin{bmatrix}
    a & b & c & d \\
    0 & e & f & g \\
    0 & 0 & h & i \\
    0 & 0 & 0 & j
\end{bmatrix}
$$

where $a,e,h,j \neq 0$.

## 4. Find all the possible solutions of the following systems.

### (i) $$\left\{\begin{array}{c}    x - 2y + 2z - w = 3 \\    3x + y + 6z + 11w = 16 \\    2x - y + 4z + w = 9 \\\end{array}\right.$$

$$
\left\{
\begin{array}{c}
    x - 2y + 2z - w = 3 \\
    3x + y + 6z + 11w = 16 \\
    2x - y + 4z + w = 9 \\
\end{array}
\right.
$$

### (ii) $$\left\{\begin{array}{c}    x + y - 2z = -3 \\    2x - y + 3z = 7 \\    x - 2y + 5z = 1 \\\end{array}\right.$$

$$
\left\{
\begin{array}{c}
    x + y - 2z = -3 \\
    2x - y + 3z = 7 \\
    x - 2y + 5z = 1 \\
\end{array}
\right.
$$

### (iii) $$\left\{\begin{array}{c}    x + 2y = 1 \\    2x + 5y = 2 \\    3x + 6y = 3 \\\end{array}\right.$$

$$
\left\{
\begin{array}{c}
    x + 2y = 1 \\
    2x + 5y = 2 \\
    3x + 6y = 3 \\
\end{array}
\right.
$$

### (iv) $$\left\{\begin{array}{c}    x_1 + x_2 + x_3 + 9x_4 = 8 \\    x_2 + 2x_3 + 8x_4 = 7 \\    -3x_1 + x_3 - 7x_4 = 9 \\\end{array}\right.$$

$$
\left\{
\begin{array}{c}
    x_1 + x_2 + x_3 + 9x_4 = 8 \\
    x_2 + 2x_3 + 8x_4 = 7 \\
    -3x_1 + x_3 - 7x_4 = 9 \\
\end{array}
\right.
$$

## 5. Determine $k$ for which the following system has infinitely many solutions. $$\left\{\begin{array}{c}    x + y = 0 \\    2y + 2kz = 1 \\    y + kz = 2k \\\end{array}\right.$$

$$
\left\{
\begin{array}{c}
    x + y = 0 \\
    2y + 2kz = 1 \\
    y + kz = 2k \\
\end{array}
\right.
$$

## 6. (True or False) Determine if the following statements are true or false. If it is true, explain and prove it. If it is false, give a counterexample.

Let $A$ be an $3\times5$ matrix, then:

### (i) $Ax = b$ always has a solution.

### (ii) $Ax = 0$ always has a solution.

### (iii) If a system $Ax = b$ has no solution, then $\operatorname{rank}(A) < 3$.

### (iv) There are always infinitely many solutions to the system $Ax = 0$.

### (v) It is possible that the system $Ax = b$ has a unique solution.
