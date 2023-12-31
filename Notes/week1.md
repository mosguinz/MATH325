---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Week 1

We've seen something like this before:

$$
\left\{
    \begin{align*}
    x-y&=1 \\
    2x+3y&=4
    \end{align*}
\right.
$$

To solve, we simply rewrite for one of the terms and substitute into the other equation.

$$
\begin{align*}
    x-y=1 &\implies x=1+y \\
    2x+3=4 &\iff 2(1+y)+3y = 4 \\
    &\iff 5y = 2
\end{align*}
\\
\therefore y=\frac{2}{5}
$$

And to solve for $x$, simply plug it back into one of the equations.

$$
x-y=1 \\
\therefore x = 1 + \frac{2}{5} = \frac{7}{5}
$$

Easy! Now, what about three equations?

$$
\left\{
    \begin{align*}
        2x+y+z&=3 \\
        4x+3y+z &= 2 \\
        x+2y+3z&=5
    \end{align*}
\right.
$$

Or more generally:

$$
\left\{
    \begin{align*}
        a_{11}x + a_{12}y + a_{13}z &= b_1 \\
        a_{21}x + a_{22}y + a_{23}z &= b_2 \\
        a_{31}x + a_{32}y + a_{33}z &= b_3 \\
    \end{align*}
\right.
$$

<div><box-goal>

"How do we develop an algorithm to solve systems of linear equations?"

</box-goal></div>

## Elementary row operations

First, consider something with a lot of zeros:

$$
\left\{
    \begin{align*}
    a_{11}x \phantom{+ a_{12}y + a_{13}z} &= b_1 \\
    \phantom{a_{21}x + }a_{22}y \phantom{+ a_{23}z} &= b_2 \\
    \phantom{a_{31}x + a_{32}y + }a_{33}z &= b_3 \\
    \end{align*}
\right.
$$
Then, it's pretty easy!

$$
\therefore x=\frac{b_1}{a_{11}},y=\frac{b_2}{a_{22}},z=\frac{b_3}{a_{33}}
$$

Now, how about:

$$
\left\{
    \begin{align*}
        2x &= 3 &\implies x=\frac{2}{3} \\
        3y+z &= 2 \\
        3z &= 5 &\implies z=\frac{5}{3}
    \end{align*}
\right.
$$

Then, simply plug the value for $z$ to solve for $y$ in the section equation.

$$
y=\frac{2-\frac{5}{3}}{3} = \frac{1}{9}
$$

How about if we add another variable to the first equation:

$$
\left\{
    \begin{align*}
        2x+z &= 3 \\
        3y+z &= 2 &\implies y=\frac{1}{9}\\
        3z &= 5 &\implies z=\frac{5}{3}
    \end{align*}
\right.
$$

Same deal, we solve for $y$ by plugging in the known value for $z$. From the last example, we alraedy know $\displaystyle y=\frac{1}{9}$. So, we just need to solve for $x$ by plugging in the value for $z$ in the first equation:

$$
x=\frac{3-\frac{5}{3}}{2}=\frac{2}{3}
$$

And... one more variable:

$$
\left\{
    \begin{align*}
    2x+y+z &= 3 \\
    3y+z &= 2 &\implies y=\frac{1}{9}\\
    3z &= 5 &\implies z=\frac{5}{3}
    \end{align*}
\right.
$$

Again, the pattern here is to solve the smaller systems first (here, it is the last equation) and plug in the known values into another equation. So:

$$
x=\frac{3-\frac{1}{9}-\frac{5}{3}}{2}=\frac{11}{18}
$$

Okay, now back to the same question. How do we solve something like this.

$$
\left\{
    \begin{align*}
        2x+y+z&=3 \\
        4x+3y+z &= 2 \\
        x+2y+3z&=5
    \end{align*}
\right.
$$

First we double the first equation ($R_1$ herein).

$$
\begin{align*}
    4x+2y+2z&=6 \\
    4x+3y+z &= 2 \\
    x+2y+3z&=5
\end{align*}
$$

<div><box-note>

Note that doubling the first equation does not change the solutions. They are still equivalent.

$$
\left\{
    \begin{align*}
        2x+y+z&=3 \\
        4x+3y+z &= 2 \\
        x+2y+3z&=5
    \end{align*}
\right.
\quad\iff\quad
\left\{
    \begin{align*}
        4x+2y+2z&=6 \\
        4x+3y+z &= 2 \\
        x+2y+3z&=5
    \end{align*}
\right.
$$

</box-note></div>

We doubled $R_1$ to eliminate the $x$. Now, we subtract $R_2$ from $R_1$.

$$
\left\{
    \begin{align*}
    4x+2y+2z&=6 \\
    4x+3y+z &= 2 \\
    x+2y+3z&=5
    \end{align*}
\right.
\quad\xrightarrow{R_2-R_1}\quad
\left\{
    \begin{align*}
    4x+2y+2z&=6 \\
    y-z &= -4 \\
    x+2y+3z&=5
    \end{align*}
\right.
$$

Then, we do a similar thing to $R_3$ to get rid of $x$.

$$
\begin{array}{c}
    \left\{
        \begin{align*}
            4x+2y+2z&=6 \\
            y-z &= -4 \\
            x+2y+3z&=5
        \end{align*}
    \right.
    &\xrightarrow{4\times R_3}&
    \left\{
        \begin{align*}
            4x+2y+2z&=6 \\
            y-z &= -4 \\
            4x+8y+12z&=20
        \end{align*}
    \right.
    \\
    &\xrightarrow{R_3 - R_1}&
    \left\{
        \begin{align*}
            4x+2y+2z&=6 \\
            y-z &= -4 \\
            6y+10z&=14
        \end{align*}
    \right.
\end{array}
$$

<div><box-note>

Again, multiplying (or dividing) a row does not change the solutions. Nor does adding or subtracting one row from another.

</box-note></div>


Now, we see that $R_1$ and $R_2$ are both divisible by two, so we'll simplify them.

$$
\left\{
    \begin{align*}
        4x+2y+2z&=6 \\
        y-z &= -4 \\
        6y+10z&=14
    \end{align*}
\right.
\quad\xrightarrow[\frac{1}{2}\times R_3]
{\frac{1}{2}\times R_1}\quad
\left\{
    \begin{align*}
        2x+y+z&=3 \\
        y-z &= -4 \\
        3y+5z &= 7
    \end{align*}
\right.
$$

Then, we multiply $R_2$ by three so that we can subtract  $R_3$ to get rid of $y$.

$$
\begin{array}{c}
    \left\{ \begin{align*}
        2x+y+z&=3 \\
        y-z &= -4 \\
        3y+5z &= 7
    \end{align*} \right.
    &\xrightarrow{3\times R_2}&
    \left\{ \begin{align*}
        2x+y+z&=3 \\
        3y-3z &= -12 \\
        3y+5z &= 7
    \end{align*} \right.
    \\
    &\xrightarrow{R_3 - R_2}&
    \left\{ \begin{align*}
        2x+y+z&=3 \\
        3y-3z &= -12 \\
        8z &= 19
    \end{align*} \right.
\end{array}
$$

Now, we can solve for $z$ in $R_3$, and then work backwards to solve for $y$ in the second, and then $x$ in the first.

Clearly from $R_3$:
$$
z = \frac{19}{8}
$$

Then, from $R_2$:
$$
3y-3\(\frac{19}{8}\)= -12 \\
\therefore y = -\frac{13}{8}
$$

Finally, plug $y$ and $z$ into $R_1$ to solve for $x$:
$$
2x + \(-\frac{13}{8}\) + \frac{19}{8} = 3 \\
\therefore x = \frac{9}{8}
$$

And done! Again, the pattern here is to eliminate variables to solve smaller systems first. In general, for a system:

$$
\left\{ \begin{align*}
    a_{11}x + a_{12}y + a_{13}z &= b_1 \\
    a_{21}x + a_{22}y + a_{23}z &= b_2 \\
    a_{31}x + a_{32}y + a_{33}z &= b_3 \\
\end{align*} \right.
$$

We do some operations to turn it into something like:

$$
\begin{array}{c}
    \left\{ \begin{align*}
        a_{11}x + a_{12}y + a_{13}z &= b_1 \\
        cy + dz &= b_2' \\
        ey + fz &= b_3' \\
    \end{align*} \right.
    &\xrightarrow{\text{some more operations}}&
    \left\{ \begin{align*}
        a_{11}x + a_{12}y + a_{13}z &= b_1 \\
        cy + dz &= b_2' \\
        kz &= b_3'' \\
    \end{align*} \right.
\end{array}
$$

Then finally, we can solve for $z$ and solve the rest of the system backwards i.e., back substitution. The goal here to to reduce the system to an upper traingle form.

These "some operations" are known as elementary row operations.

<div><box-def>

## Elementary row operations

These operations will not change the solutions.

1. Multiplying a non-zero constant to a row.
2. Adding or subtracting a row to another.
3. Swapping two rows.

</box-def></div>

## Matrix form

Note that the important part of the systems are the numbers i.e., the coefficients --- not the variables. We can write systems of equations in a more compact form using matrices.

For example:

$$
\left\{
    \begin{align*}
        2x + y + z &= 3 \\
        3y + z &= 2 \\
        2y + 3z &= 5
    \end{align*}
\right.
\iff
\left[
    \begin{array}{ccc|c}
        2 & 1 & 1 & 3 \\
        0 & 3 & 1 & 2 \\
        0 & 2 & 3 & 5
    \end{array}
\right]
$$

Or more generally:

$$
\left\{
    \begin{align*}
        a_{11}x + a_{12}y + a_{13}z &= b_1 \\
        a_{21}x + a_{22}y + a_{23}z &= b_2 \\
        a_{31}x + a_{32}y + a_{33}z &= b_3 \\
    \end{align*}
\right.
\iff
\left[
    \begin{array}{ccc|c}
        a_{11} & a_{12} & a_{13} & b_1 \\
        a_{21} & a_{22} & a_{23} & b_2 \\
        a_{31} & a_{32} & a_{33} & b_3
    \end{array}
\right]
$$

Here's a more specific example.

$$
\begin{array}{c}
    &
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            x - 3y + 2z &= 1 \\
            2x -2y + 3z &= 2
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            1 & -3 & 2 & 1 \\
            2 & -2 & 3 & 2
        \end{array}
    \right]
    \\
    &\xrightarrow[R_3-2R_1]{R_2-R_1}
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            -5y + z &= -2 \\
            -6y + z &= -4
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            0 & -5 & 1 & -2 \\
            0 & -6 & 1 & -4
        \end{array}
    \right]
    \\
    &\xrightarrow{-\frac{1}{5}R_2}
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            y - \frac{1}{5}z &= \frac{2}{5} \\
            -6y + z &= -4
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            0 & 1 & - \frac{1}{5} & \frac{2}{5} \\
            0 & -6 & 1 & -4
        \end{array}
    \right]
    \\
    &\xrightarrow{R_3+6R_2}
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            y - \frac{1}{5}z &= \frac{2}{5} \\
            -\frac{1}{5}z &= -\frac{8}{5}
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            0 & 1 & - \frac{1}{5} & \frac{2}{5} \\
            0 & 0 & -\frac{1}{5} & -\frac{8}{5}
        \end{array}
    \right]
\end{array}
$$

## Echelon form

At this point, we got the upper row triangle and can just perform back substitution to solve for each variables. Alternatively, we can keep going to get the **reduced row echelon form (RREF)**.

<div><box-def>

## Row echelon form

A matrix is in **row echelon form** if:
* All rows consisting of only zeroes are at the bottom.
* The leading entry (that is the left-most nonzero entry) of every nonzero row is to the right of the leading entry of every row above.

A matrix in row echelon form may not be necessarily unique. Any matrix that is in echelon form can be put in an (equivalent) echelon form by adding a scalar multiple of a row to one of the above rows.

</b-def></div>

<div><box-def>

## Reduced row echelon form

A matrix is in ***reduced* row echelon form** if:
* It is in row echelon form.
* The leading entry in each nonzero row is a 1 (called a leading 1).
* Each column containing a leading 1 has zeros in all its other entries.

Every matrix has a unique *reduced* row echelon form.

</b-def></div>

Continuing from the last system to get the **reduced row echelon form**. (Again, doing back substitution will get you the same solutions)

$$
\begin{array}{c}
    &
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            y - \frac{1}{5}z &= \frac{2}{5} \\
            -\frac{1}{5}z &= -\frac{8}{5}
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            0 & 1 & - \frac{1}{5} & \frac{2}{5} \\
            0 & 0 & -\frac{1}{5} & -\frac{8}{5}
        \end{array}
    \right]
    \\
    &\xrightarrow[-5R_3]{R_2-R_3}
    &\left\{
        \begin{align*}
            x + 2y + z &= 3 \\
            y &= 2 \\
            z &= 8
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 2 & 1 & 3 \\
            0 & 1 & 0 & 2 \\
            0 & 0 & 1 & 8
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1-2R_2}
    &\left\{
        \begin{align*}
            x + z &= -1 \\
            y &= 2 \\
            z &= 8
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 1 & -1 \\
            0 & 1 & 0 & 2 \\
            0 & 0 & 1 & 8
        \end{array}
    \right]
    \\
    &\xrightarrow{R_1-R_3}
    &\left\{
        \begin{align*}
            x &= -9 \\
            y &= 2 \\
            z &= 8
        \end{align*}
    \right.
    &\iff
    &\left[
        \begin{array}{ccc|c}
            1 & 0 & 0 & -9 \\
            0 & 1 & 0 & 2 \\
            0 & 0 & 1 & 8
        \end{array}
    \right]
\end{array}
$$

## Geometric interpretation

Remember, we do this to find intersections. So far, the systems that we've dealt with provides us a unique solution. For example, the above question tells us that the planes intersects at a single point: $(-9,2,8)$ in a three-dimensional plane.

There are also cases where there are **no solutions** and **infinitely many solutions**.

| Unique solution                                 | No solution                               | Many solutions                              |
| ----------------------------------------------- | ----------------------------------------- | ------------------------------------------- |
| ![uniquesolution](/assets/uniquesolution.svg)   | ![nosolution](/assets/nosolution.svg)     | ![manysolutions](/assets/manysolutions.svg) |
| Three planes in space, intersecting at a point. | Three planes with no common intersection. | Three planes having a line in common.       |




