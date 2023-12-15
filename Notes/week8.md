---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Week 9

## Determinant

Recall, for a $2\times2$ matrix $A=\begin{pmatrix}
    a & b \\ c & d
\end{pmatrix}$, the determinant of $A$ is:

$$
\det A = \det \begin{pmatrix}
    a & b \\ c & d
\end{pmatrix} = ad - bc
$$

And that $A^{-1}$ exists if and only if $\det A\neq 0$ (because the scalar coefficient is $\displaystyle\frac{1}{\det A}=\frac{1}{ad-bc}$).

And recall that to compute eigenvalues for a vector, we needed to find values of $\lambda$ such that $A\vec{v}=\lambda\vec{v}$ (where $\vec{v}\neq\vec{0}$).

<div><box-def>

$\lambda$ is an eigenvalue if there exists $\vec{v}\neq\vec{0}$ such that $A\vec{v} = \lambda\vec{v}$... which is also equivalent to the following:

* $(A-\lambda I)\vec{v}=\vec{0}$ for some $\vec{v}\neq\vec{0}$
* $\ker(A-\lambda I)\neq\set{\vec{0}}$
* $(A-\lambda I)$ is not invertible
* $\det(A-\lambda I)=0$

</b-def></div>

So, the goal here is to find $\det A$ for some $n\times n$ matrix $A$.

<div><box-def>

The **determinant** is a function, usually denoted $\det$,

$$
\det: \underbrace{\R^n \times\cdots\times\R^n}_{n\text{ copies}} \to \R
$$

satisfying the following properties:

### Property 1: Multilinearity

$$
\det \begin{pmatrix}
    \vec{u}_1 + \vec{v}_1 \\
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_n
\end{pmatrix} = \det \begin{pmatrix}
    \vec{u}_1 \\
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_n
\end{pmatrix} + \det \begin{pmatrix}
    \vec{v}_1 \\
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_n
\end{pmatrix} \\
\det \begin{pmatrix}
    \alpha\vec{v}_1 \\
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_n
\end{pmatrix} = \alpha\det \begin{pmatrix}
    \vec{v}_1 \\
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_n
\end{pmatrix}
$$

### Property 2: Antisymmetry

Swapping any two rows will flip the sign of the determinant.

$$
\det \begin{pmatrix}
    \vec{v}_1 \\
    \vdots \\
    \vec{v}_2
\end{pmatrix} = -\det \begin{pmatrix}
    \vec{v}_2 \\
    \vdots \\
    \vec{v}_1
\end{pmatrix}
$$

### Property 3: And this shit (doesn't have a name, just remember it)

The determinant of the identity matrix is one.

$$
\det \begin{pmatrix}
    \vec{e}_1 \\
    \vdots \\
    \vec{e}_n
\end{pmatrix} =\det I_n = 1
$$

Notice that by properties 1 and 2, $\det$ is a function that is linear in all rows.

</b-def></div>

## Multilinearity

Take a unit cube, composed of three standard bases: $\vec{e}_1, \vec{e}_2, \vec{e}_3$.

We know that the volume of the unit cube is just $\text{length}\times\text{width}\times\text{height}$.

Or:

$$
1 \times 1 \times 1
$$


In other words, the volume $V$, is:

$$
V = \det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} = 1.
$$

Then, if one of the side is of length $2$ e.g., take $2\vec{e}_2$. Then, the volume is now

$$
2\times1\times1 = 2.
$$

Or:

$$
V = \det\begin{pmatrix}
    2\vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} = 2\det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} = 2.
$$

Then, for sides $a,b,c$, the volume of a given cube can be written as

$$
V = \det\begin{pmatrix}
    a\vec{e}_1 \\ b\vec{e}_2 \\ c\vec{e}_3
\end{pmatrix}.
$$

And by linearity (and that $\det I = 1$),

$$
V = \det\begin{pmatrix}
    a\vec{e}_1 \\ b\vec{e}_2 \\ c\vec{e}_3
\end{pmatrix} = abc\cdot\det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} = abc (1) = abc.
$$

Also note that

$$
\det\begin{pmatrix}
    a\vec{e}_1 \\ b\vec{e}_2 \\ c\vec{e}_3
\end{pmatrix} = \det\begin{pmatrix}
    a & 0 & 0 \\
    0 & b & 0 \\
    0 & 0 & c
\end{pmatrix} = abc
$$

And so, we can surmise for any diagonal matrices, we have:

<div><box-blue>

### Property 4: Diagonal matrices

$$
\det\begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots & \\
    0 & & \lambda_n
\end{pmatrix} = \lambda_1\lambda_2\cdots\lambda_n.
$$

</b-blue></div>


## Antisymmetry

Again, consider a unit cube in $\R^3$. We now know that the determinant of the three basis vectors produces the volume, such as:

$$
V = \det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} = 1.
$$

We also know that for a cube with sides of length one, its volume is always one. So, of course the order of the sides shouldn't matter. However, by antisymmetry, switching two rows would mean:

$$
V = -\det\begin{pmatrix}
    \vec{e}_2 \\ \vec{e}_1 \\ \vec{e}_3
\end{pmatrix} = -1.
$$

The negative sign actually just indicates the orientation of the unit cube. Strictly speaking, the volume of the cube is actually the **absolute value** of the determinant:

$$
V = \left|\det\begin{pmatrix}
     \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix}\right|
$$

And so, switching the rows in any order would not change the volume of the cube. In $\R^3$, there are $3! = 6$ combinations you can switch. Namely:

$$
\det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_2 \\ \vec{e}_3
\end{pmatrix} =
\det\begin{pmatrix}
    \vec{e}_3 \\ \vec{e}_1 \\ \vec{e}_2
\end{pmatrix} =
\det\begin{pmatrix}
    \vec{e}_2 \\ \vec{e}_3 \\ \vec{e}_1
\end{pmatrix} = 1
\\
\det\begin{pmatrix}
    \vec{e}_2 \\ \vec{e}_1 \\ \vec{e}_3
\end{pmatrix} =
\det\begin{pmatrix}
    \vec{e}_3 \\ \vec{e}_2 \\ \vec{e}_1
\end{pmatrix} =
\det\begin{pmatrix}
    \vec{e}_1 \\ \vec{e}_3 \\ \vec{e}_2
\end{pmatrix} = -1
$$

<div><box-def>

### Permutation matrix

The **permutation matrix** is an $n\times n$ matrix obtained by permuting the standard basis vector, $\vec{e}_i$. By properties 1 and 2, we have that

$$
\det P = (-1)^\sigma
$$

where $\sigma$ is the number of flips required to turn $P$ back into the identity matrix, $I_n$.

And so, for an $n\times n$ matrix, there exists $n!$ permuntation matrices.

</b-def></div>

Now consider a case if we have two identical rows. Then, by this property, switching them would mean that:

$$
\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix} =
-\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix}
$$

Remember that the determinant is just a number. So, the above is only true if and only if the determinant is zero.

$$
\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix} =
-\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix} \iff
\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix} = 0
$$

<div><box-blue>

### Property 5: Identical rows

$$
\det\begin{pmatrix}
    \vec{v} \\ \vdots \\ \vec{v}
\end{pmatrix} = 0
$$

</b-blue></div>

<div><box-eg>

Show that

$$
\det\begin{pmatrix}
    1 & 2 & 3 & 4 & 5 \\
    5 & 6 & 7 & 8 & 9 \\
    10 & 11 & 12 & 13 & 14 \\
    2 & 4 & 6 & 8 & 10 \\
    1 & 1 & 1 & 1 & 1
\end{pmatrix} = 0.
$$

Notice that row four is a multiple of row one. So, by multilinearity:

$$
\det\begin{pmatrix}
    1 & 2 & 3 & 4 & 5 \\
    5 & 6 & 7 & 8 & 9 \\
    10 & 11 & 12 & 13 & 14 \\
    2 & 4 & 6 & 8 & 10 \\
    1 & 1 & 1 & 1 & 1
\end{pmatrix} = 2\cdot\det\begin{pmatrix}
    1 & 2 & 3 & 4 & 5 \\
    5 & 6 & 7 & 8 & 9 \\
    10 & 11 & 12 & 13 & 14 \\
    1 & 2 & 3 & 4 & 5 \\
    1 & 1 & 1 & 1 & 1
\end{pmatrix}
$$

And because two rows are the same:

$$
2\cdot\det\begin{pmatrix}
    1 & 2 & 3 & 4 & 5 \\
    5 & 6 & 7 & 8 & 9 \\
    10 & 11 & 12 & 13 & 14 \\
    1 & 2 & 3 & 4 & 5 \\
    1 & 1 & 1 & 1 & 1
\end{pmatrix} = 2 \cdot 0 = 0
$$

</b-eg></div>

Additionally, by properties 1 and 5:

$$
\begin{align*}
    \det\begin{pmatrix}
        \vec{v}_1 \\ \vdots \\ \vec{v}_2
    \end{pmatrix}
    &= \det\begin{pmatrix}
        \vec{v}_1 \\ \vdots \\ \vec{v}_2
    \end{pmatrix} +
    \det\begin{pmatrix}
        c\vec{v}_2 \\ \vdots \\ \vec{v}_2
    \end{pmatrix} \\
    &= \det\begin{pmatrix}
        \vec{v}_1 \\ \vdots \\ \vec{v}_2
    \end{pmatrix} +
    c\cdot\det\begin{pmatrix}
        \vec{v}_2 \\ \vdots \\ \vec{v}_2
    \end{pmatrix} \\
    &= \det\begin{pmatrix}
        \vec{v}_1 + c\vec{v}_2 \\ \vdots \\ \vec{v}_2
    \end{pmatrix}
\end{align*}
$$

Which gives us

<div><box-blue>

### Property 6

$$
\det\begin{pmatrix}
    \vec{v}_1 \\ \vdots \\ \vec{v}_2
\end{pmatrix} =
\det\begin{pmatrix}
    \vec{v}_1 + c\vec{v}_2 \\ \vdots \\ \vec{v}_2
\end{pmatrix}
$$

</b-blue></div>

## Diagonal matrices

The derivation for property 4 tells us that:

$$
\det\begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots & \\
    0 & & \lambda_n
\end{pmatrix} = \lambda_1\lambda_2\cdots\lambda_n.
$$

However, this also holds for upper and lower triangular matrices.


$$
\det\begin{pmatrix}
    \lambda_1 & & 0 \\
    & \ddots & \\
    * & & \lambda_n
\end{pmatrix} =
\det\begin{pmatrix}
    \lambda_1 & & * \\
    & \ddots & \\
    0 & & \lambda_n
\end{pmatrix} = \lambda_1\lambda_2\cdots\lambda_n.
$$

Because trust me bro, that's how it works. Or here, okay, I give a proof but I cheat you a little bit.

$$
\begin{align*}
    \det\begin{pmatrix}
        \lambda_1 & a & b \\
        0 & \lambda_2 & c \\
        0 & 0 & \lambda_3
    \end{pmatrix}
    &= \lambda_1 \lambda_2 \lambda_3
    \det\begin{pmatrix}
        1 & \frac{a}{\lambda_1} & \frac{b}{\lambda_1} \\
        0 & 1 & \frac{c}{\lambda_1} \\
        0 & 0 & 1
    \end{pmatrix} \\
    &= \lambda_1 \lambda_2 \lambda_3
    \det\begin{pmatrix}
        1 & \frac{a}{\lambda_1} & \frac{b}{\lambda_1} \\
        0 & 1 & 0 \\
        0 & 0 & 1
    \end{pmatrix}
    & \boxed{R_2 - \frac{c}{\lambda_1}R_3} \\
    &= \lambda_1 \lambda_2 \lambda_3
    \det\begin{pmatrix}
        1 & \frac{a}{\lambda_1} & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1
    \end{pmatrix}
    & \boxed{R_1 - \frac{b}{\lambda_1}R_3} \\
    &= \lambda_1 \lambda_2 \lambda_3
    \det\begin{pmatrix}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1
    \end{pmatrix}
    & \boxed{R_1 - \frac{b}{\lambda_1}R_2} \\
    &= \lambda_1 \lambda_2 \lambda_3
\end{align*}
$$

By induction, this works for $n$ lambdas. And the same will apply for lower triangle matrices, just upside-down.

## Applying different properties...

Consider a $2\times2$ matrix $\begin{pmatrix}
    a & b \\ c & d
\end{pmatrix}$. We know that its determinant is $ad-bc$. We can also derive this by applying the properties of the determinant.

$$
\begin{align*}
    \det\begin{pmatrix}
        a & b \\ c & d
    \end{pmatrix}
    &= \det\begin{pmatrix}
        a \vec{\mathbf{e}}_1 + b\vec{\mathbf{e}}_2 \\
        c \vec{\mathbf{e}}_1 + d \vec{\mathbf{e}}_2
    \end{pmatrix} \\
    &= \det\begin{pmatrix}
        a \vec{\mathbf{e}}_1 \\ c \vec{\mathbf{e}}_1
    \end{pmatrix} + \det\begin{pmatrix}
        a \vec{\mathbf{e}}_1 \\ d \vec{\mathbf{e}}_2
    \end{pmatrix} + \det\begin{pmatrix}
        b \vec{\mathbf{e}}_2 \\ c \vec{\mathbf{e}}_1
    \end{pmatrix} + \det\begin{pmatrix}
        b \vec{\mathbf{e}}_2 \\ d \vec{\mathbf{e}}_2
    \end{pmatrix} \\
    &= ac \det\begin{pmatrix}
        \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_1
    \end{pmatrix} + ad \det\begin{pmatrix}
        \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_2
    \end{pmatrix} + bc \det\begin{pmatrix}
        \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_1
    \end{pmatrix} + bd \det\begin{pmatrix}
        \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_2
    \end{pmatrix} \\
    &= ac (0) + ad (1) + bc (-1) + bd (0) \\
    &= ad - bc
\end{align*}
$$

We can also do the same thing for a $3\times3$ matrix $\begin{pmatrix}
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
    a_{31} & a_{32} & a_{33}
\end{pmatrix}$.

$$
\begin{align*}
    \det\begin{pmatrix}
        a_{11} & a_{12} & a_{13} \\
        a_{21} & a_{22} & a_{23} \\
        a_{31} & a_{32} & a_{33}
    \end{pmatrix} &= \det\begin{pmatrix}
        a_{11}\vec{\mathbf{e}}_1 & a_{12}\vec{\mathbf{e}}_2 & a_{13}\vec{\mathbf{e}}_3 \\
        a_{21}\vec{\mathbf{e}}_1 & a_{22}\vec{\mathbf{e}}_2 & a_{23}\vec{\mathbf{e}}_3 \\
        a_{31}\vec{\mathbf{e}}_1 & a_{32}\vec{\mathbf{e}}_2 & a_{33}\vec{\mathbf{e}}_3
    \end{pmatrix} \\
    &= \text{decomposes to 27 terms...}
\end{align*}
$$

Notice how, for the $2\times2$, two of the terms cancel out to zero. Here, for a $3\times3$, only six terms survives. The determinant of the remaining 21 terms will be zero.

$$
\begin{split}
    \det\begin{pmatrix}
        a_{11} & a_{12} & a_{13} \\
        a_{21} & a_{22} & a_{23} \\
        a_{31} & a_{32} & a_{33}
    \end{pmatrix}
    &= a_{11} a_{12} a_{13} \det\begin{pmatrix}
        \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_3
    \end{pmatrix}
    + a_{11} a_{23} a_{32} \det\begin{pmatrix}
        \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_3 \\ \vec{\mathbf{e}}_2
    \end{pmatrix}
    + a_{12} a_{21} a_{33} \det\begin{pmatrix}
        \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_3
    \end{pmatrix} \\
    &\quad+ a_{12} a_{23} a_{31} \det\begin{pmatrix}
        \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_3 \\ \vec{\mathbf{e}}_1
    \end{pmatrix}
    + a_{13} a_{21} a_{32} \det\begin{pmatrix}
        \vec{\mathbf{e}}_3 \\ \vec{\mathbf{e}}_1 \\ \vec{\mathbf{e}}_2
    \end{pmatrix}
    + a_{13} a_{22} a_{31} \det\begin{pmatrix}
        \vec{\mathbf{e}}_3 \\ \vec{\mathbf{e}}_2 \\ \vec{\mathbf{e}}_1
    \end{pmatrix}
    \end{split}
$$

Then, after some careful calculation using the properties, we will see that the we end up with our expression for the determinant for a $3\times3$ matrix.

$$
\begin{align*}
    \det\begin{pmatrix}
        a_{11} & a_{12} & a_{13} \\
        a_{21} & a_{22} & a_{23} \\
        a_{31} & a_{32} & a_{33}
    \end{pmatrix}
    &= a_{11} \det\begin{pmatrix}
        a_{22} & a_{23} \\ a_{32} & a_{33}
    \end{pmatrix}
    - a_{12} \det\begin{pmatrix}
        a_{21} & a_{23} \\ a_{31} & a_{33}
    \end{pmatrix}
    + a_{13} \det\begin{pmatrix}
        a_{21} & a_{22} \\ a_{31} & a_{32}
    \end{pmatrix}
\end{align*}
$$

Then, what about $\R^4$ and beyond... the number of terms that it come out of matrix will grow exponentially. In fact, the only way to do this in a sane manner, is to turn to our good friend Gauss.
