---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
---

# Homework 1

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


## 1. Solve the following systems of linear equations by Gaussian elimination:

### (a) $$\left\{    \begin{array}{l}        2y -8z = 8 \\        x -2y + z = 0 \\        -4x + 5y + 9z = -9    \end{array}\right.$$

$$
\begin{array}{ccl}
    \left\{
        \begin{array}{l}
            2y -8z = 8 \\
            x -2y + z = 0 \\
            -4x + 5y + 9z = -9
        \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            0 & 2 & -8 & 8 \\
            1 & -2 & 1 & 0 \\
            -4 & 5 & 9 & -9
        \end{array}
    \right]
    \\
    &\xrightarrow[R_2 + R_1]{\frac{1}{2}R_1}
    &\left[
        \begin{array}{ccc|c}
            0 & 1 & -4 & 4 \\
            1 & 0 & -7 & 8 \\
            -4 & 5 & 9 & -9
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 + 4R_2}
    &\left[
        \begin{array}{ccc|c}
            0 & 1 & -4 & 4 \\
            1 & 0 & -7 & 8 \\
            0 & 5 & -19 & 23
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 \leftrightarrow R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & -7 & 8 \\
            0 & 1 & -4 & 4 \\
            0 & 5 & -19 & 23
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 - 5R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & -7 & 8 \\
            0 & 1 & -4 & 4 \\
            0 & 0 & 1 & 3
        \end{array}
    \right]
    \\
    &\xrightarrow[R_2 + 4R_3]{R_1 + 7R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 0 & 29 \\
            0 & 1 & 0 & 16 \\
            0 & 0 & 1 & 3
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore x = 29, y=16, z=3
$$

### (b) $$ \left\{     \begin{array}{l}     x_1 - 2x_3 = -1 \\     x_2 - x_4 = 2 \\     -3x_2 + 2x_3 = 0 \\     -4x_1 + 7x_4 = -5 \end{array} \right. $$


$$
\begin{array}{ccl}
    \left\{
        \begin{array}{l}
            x_1 - 2x_3 = -1 \\
            x_2 - x_4 = 2 \\
            -3x_2 + 2x_3 = 0 \\
            -4x_1 + 7x_4 = -5
        \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & -2 & 0 & -1 \\
            0 & 1 & 0 & -1 & 2 \\
            0 & -3 & 2 & 0 & 0 \\
            -4 & 0 & 0 & 7 & -5
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3 + 3R_2]{R_4 + 4R_1}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & -2 & 0 & -1 \\
            0 & 1 & 0 & -1 & 2 \\
            0 & 0 & 2 & -3 & 6 \\
            0 & 0 & -8 & 7 & -9
        \end{array}
    \right]
    \\
    &\xrightarrow{R_4 + 4R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & -2 & 0 & -1 \\
            0 & 1 & 0 & -1 & 2 \\
            0 & 0 & 2 & -3 & 6 \\
            0 & 0 & 0 & -5 & 15
        \end{array}
    \right]
    \\
    &\xrightarrow[-\frac{1}{5}R_4]{\frac{1}{2}R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & -2 & 0 & -1 \\
            0 & 1 & 0 & -1 & 2 \\
            0 & 0 & 1 & -\frac{3}{2} & 3 \\
            0 & 0 & 0 & 1 & -3
        \end{array}
    \right]
    \\
    &\xrightarrow[R_2 + R_3]{R_3 + \frac{3}{2}R_4}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & -2 & 0 & -1 \\
            0 & 1 & 0 & 0 & -1 \\
            0 & 0 & 1 & 0 & -\frac{3}{2} \\
            0 & 0 & 0 & 1 & -3
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1 + 2R_3}
    &\left[
        \begin{array}{cccc|c}
            1 & 0 & 0 & 0 & -4 \\
            0 & 1 & 0 & 0 & -1 \\
            0 & 0 & 1 & 0 & -\frac{3}{2} \\
            0 & 0 & 0 & 1 & -3
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore x_1 = -4, x_2 = -1, x_3 = -\frac{3}{2}, x_4 = -3
$$

## 2. The sum of any two of three real numbers are $24$, $28$, $30$. Find these three numbers.

Let $x,y,z \in \R$. Then:
$$
\begin{array}{c}
    \left\{
        \begin{array}{l}
            x+y = 24 \\
            y+z = 28 \\
            z+x = 30
        \end{array}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 0 & 24 \\
            0 & 1 & 1 & 28 \\
            1 & 0 & 1 & 30
        \end{array}
    \right]
    \\
    &\xrightarrow[R_1 - R_2]{R_3 - R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & -1 & -4 \\
            0 & 1 & 1 & 28 \\
            0 & -1 & 1 & 6
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 + R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & -1 & -4 \\
            0 & 1 & 1 & 28 \\
            0 & 0 & 2 & 34
        \end{array}
    \right]
    \\
    &\xrightarrow{\frac{1}{2}R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & -1 & -4 \\
            0 & 1 & 1 & 28 \\
            0 & 0 & 1 & 17
        \end{array}
    \right]
    \\
    &\xrightarrow[R_1 + R_3]{R_2 - R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 0 & 13 \\
            0 & 1 & 0 & 11 \\
            0 & 0 & 1 & 17
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore x = 13, y = 11, z = 17
$$

As such, the three real numbers are $13$, $11$, and $17$.


 ## 3. Find the polynomial of degree 2 $f(t) = a+bt+ct^2 $ whose graph passes through $(1, -1)$, $(2, 3)$ and $(3, 13)$.

$$
\begin{array}{c}
    &\left\{
        \begin{array}{ll}
            a + b(1) + c(1)^2 &= -1 \\
            a + b(2) + c(2)^2 &= 3 \\
            a + b(3) + c(3)^2 &= 13
        \end{array}
    \right.
    &\iff
    &\left\{
        \begin{array}{ll}
            a + b + c &= -1 \\
            a + 2b + 4c &= 3 \\
            a + 3b + 9c &= 13
        \end{array}
    \right.
    \\
    \iff
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 1 & -1 \\
            1 & 2 & 4 & 3 \\
            1 & 3 & 9 & 13
        \end{array}
    \right]
    &\xrightarrow[R_3 - R_1]{R_2 - R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 1 & -1 \\
            0 & 1 & 3 & 4 \\
            0 & 2 & 8 & 14
        \end{array}
    \right]
    \\
    &&\xrightarrow{R_3 - 2R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 1 & -1 \\
            0 & 1 & 3 & 4 \\
            0 & 0 & 2 & 6
        \end{array}
    \right]
    \\
    &&\xrightarrow{\frac{1}{2}R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 1 & -1 \\
            0 & 1 & 3 & 4 \\
            0 & 0 & 1 & 3
        \end{array}
    \right]
    \\
    &&\xrightarrow[R_2 - 3R_3]{R_1 - R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 1 & 0 & -4 \\
            0 & 1 & 0 & -5 \\
            0 & 0 & 1 & 3
        \end{array}
    \right]
    \\
    &&\xrightarrow{R_1 - R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 0 & 1 \\
            0 & 1 & 0 & -5 \\
            0 & 0 & 1 & 3
        \end{array}
    \right]
\end{array}
$$

As such, the function
$$
f(t) = 1 -5t + 3t^2
$$

is a polynomial of degree two that passes through the points $(1, -1)$, $(2, 3)$, and $(3, 13)$.



## 4. Use some online program, write down the echelon form of the following system and solve the system as well. $$\left\{\begin{array}{l}x-2y+3z-4w+5v=-1\\2x+3y+4z+5w-6v=2\\2x-2y+3z-3w+6v=0\\x+y-z-w+3v=2\\3x+4y+5z-6w-4v=0\end{array}\right.$$
 
$$
\begin{array}{rl}
    \left\{
    \begin{array}{l}
        x-2y+3z-4w+5v=-1\\
        2x+3y+4z+5w-6v=2\\
        2x-2y+3z-3w+6v=0\\
        x+y-z-w+3v=2\\
        3x+4y+5z-6w-4v=0
    \end{array}
    \right.
    \iff
    &\left[
        \begin{array}{ccccc|c}
            1 & -2 & 3 & -4 & 5 & -1\\
            2 & 3 & 4 & 5 & -6 & 2\\
            2 & -2 & 3 & -3 & 6 & 0\\
            1 & 1 & -1 & -1 & 3 & 2\\
            3 & 4 & 5 & -6 & -4 & 0
        \end{array}
    \right]
   \\[3em]
   \xrightarrow{\text{careful calculations}}
    &\left[
        \begin{array}{ccccc|c}
            1 & 0 & 0 & 0 & 0 & \frac{171}{664} \\[.5em]
            0 & 1 & 0 & 0 & 0 &  \frac{543}{664} \\[.5em]
            0 & 0 & 1 & 0 & 0 &  -\frac{51}{664} \\[.5em]
            0 & 0 & 0 & 1 & 0 &  \frac{229}{664} \\[.5em]
            0 & 0 & 0 & 0 & 1 &  \frac{33}{83} \\[.5em]
        \end{array}
    \right]
\end{array}
\\[2em]
\therefore x = \frac{171}{664},
y = \frac{543}{664},
z = -\frac{51}{664},
w = \frac{229}{664},
v = \frac{33}{83}
$$

## 5. Find the following products. Explain why if it is undefined.

### (a) $$\begin{bmatrix}    0 & 1 \\    3 & 2\end{bmatrix}\begin{bmatrix}    2 \\    -3\end{bmatrix}$$

$$
\begin{bmatrix}
    0 & 1 \\
    3 & 2
\end{bmatrix}
\begin{bmatrix}
    2 \\
    -3
\end{bmatrix} =
\begin{bmatrix}
    0(2) + 1(-3) \\
    3(2) + 2(-3)
\end{bmatrix} =
\begin{bmatrix}
    -3 \\
    0
\end{bmatrix}
$$


### (b) $$\begin{bmatrix}    1 & 2 & 3\\    4 & 5 & 6\end{bmatrix}\begin{bmatrix}    7 \\    8\end{bmatrix}$$

$
\begin{bmatrix}
    1 & 2 & 3\\
    4 & 5 & 6
\end{bmatrix}
\begin{bmatrix}
    7 \\
    8
\end{bmatrix}
$ is undefined because the number of columns in the first matrix does not match the number of rows in the second.


### (c\) $$\begin{bmatrix}    0 & 1 \\    3 & 2 \\    5 & 6\end{bmatrix}\begin{bmatrix}    2 \\    1\end{bmatrix}$$

$$
\begin{bmatrix}
    0 & 1 \\
    3 & 2 \\
    5 & 6
\end{bmatrix}
\begin{bmatrix}
    2 \\
    1
\end{bmatrix} =
\begin{bmatrix}
    0(2) + 1(1) \\
    3(2) + 2(1) \\
    5(2) + 6(1)
\end{bmatrix} =
\begin{bmatrix}
    1 \\
    8 \\
    16
\end{bmatrix}
$$

### (d) $$\begin{bmatrix}    0 & 1 & 3 & 4\end{bmatrix}\begin{bmatrix}    2 \\    1 \\    -1 \\    4\end{bmatrix}$$

$$
\begin{bmatrix}
    0 & 1 & 3 & 4
\end{bmatrix}
\begin{bmatrix}
    2 \\
    1 \\
    -1 \\
    4
\end{bmatrix} =
\begin{bmatrix}
    0(2) + 1(1) + 3(-1) +4(4)
\end{bmatrix} =
\begin{bmatrix}
    14
\end{bmatrix}
$$

### (e) $$\begin{bmatrix}    0 \\    1 \\    3 \\    4\end{bmatrix}\begin{bmatrix}    2 \\    1 \\    -1 \\    4\end{bmatrix}$$


$
\begin{bmatrix}
    0 \\
    1 \\
    3 \\
    4
\end{bmatrix}
\begin{bmatrix}
    2 \\
    1 \\
    -1 \\
    4
\end{bmatrix}
$ is undefined because the number of columns in the first matrix does not match the number of rows in the second.


## 6. Express the vector $\mathbf{b} = \begin{bmatrix}2\\1\\2\end{bmatrix}$ as a linear combination of $\mathbf{v_1} = \begin{bmatrix}  1\\-1\\1 \end{bmatrix}, \mathbf{v_2}=\begin{bmatrix}  -1\\2\\1 \end{bmatrix}, \mathbf{v_3}=\begin{bmatrix}  2\\3\\-1 \end{bmatrix}$.

$$
\begin{array}{c}
    \left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            -1 & 2 & 3 & 1 \\
            1 & 1 & -1 & 2
        \end{array}
    \right]
    &\xrightarrow[R_3 + R_1]{R_2 + R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            0 & 1 & 5 & 3 \\
            2 & 0 & 1 & 4
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{R_3 - 2R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            0 & 1 & 5 & 3 \\
            0 & 2 & -3 & 0
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{R_3 - 2R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            0 & 1 & 5 & 3 \\
            0 & 0 & -13 & -6
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{-\frac{1}{13}R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            0 & 1 & 5 & 3 \\
            0 & 0 & 1 & \frac{6}{13}
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{R_2 - 5R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & -1 & 2 & 2 \\
            0 & 1 & 0 & \frac{9}{13} \\
            0 & 0 & 1 & \frac{6}{13}
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{R_1 + R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 2 & \frac{35}{13} \\
            0 & 1 & 0 & \frac{9}{13} \\
            0 & 0 & 1 & \frac{6}{13}
        \end{array}
    \right]
    \\[2em]
    &\xrightarrow{R_1 - 2R_3}
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 0 & \frac{23}{13} \\
            0 & 1 & 0 & \frac{9}{13} \\
            0 & 0 & 1 & \frac{6}{13}
        \end{array}
    \right]
\end{array}
\\
$$


## 7. Can the vector $\mathbf{b} = \begin{bmatrix}2\\1\\2\end{bmatrix}$ be expressed as a linear combination of $\mathbf{v_1} = \begin{bmatrix}  1\\2\\3 \end{bmatrix}, \mathbf{v_2}=\begin{bmatrix}  4\\5\\6 \end{bmatrix}, \mathbf{v_3}=\begin{bmatrix}  7\\8\\9 \end{bmatrix}$? Explain.

$$
\begin{array}{c}
    \left[
        \begin{array}{ccc|c}
            1 & 4 & 7 & 2 \\
            2 & 5 & 8 & 1 \\
            3 & 6 & 9 & 2\\
        \end{array}
    \right]
    &\xrightarrow[R_3 - 3R_1]{R_2 - 2R_1}
    &\left[
        \begin{array}{ccc|c}
            1 & 4 & 7 & 2 \\
            0 & -3 & -6 & -3 \\
            0 & -6 & -12 & -4\\
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3 - 2R_2}
    &\left[
        \begin{array}{ccc|c}
            1 & 4 & 7 & 2 \\
            0 & -3 & -6 & -3 \\
            0 & 0 & 0 & 2\\
        \end{array}
    \right]
\end{array}
$$

No. The vector $\mathbf{b} = \begin{bmatrix}2\\1\\2\end{bmatrix}$ cannot be expressed as a linear combination of $\mathbf{v_1} = \begin{bmatrix}  1\\2\\3 \end{bmatrix}, \mathbf{v_2}=\begin{bmatrix}  4\\5\\6 \end{bmatrix}, \mathbf{v_3}=\begin{bmatrix}  7\\8\\9 \end{bmatrix}$ because the system does not have a solution.
