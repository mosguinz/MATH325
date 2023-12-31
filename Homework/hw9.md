---
print_background: true
export_on_save:
    html: true
puppeteer:
    format: "Letter"
    timeout: 3000
    scale: 0.8
---

# Homework 9

## 1. Consider $\R^4$ with standard inner product $\langle\mathbf{u},\mathbf{v}\rangle$.

### (i) Find the norm of the vectors $\mathbf{u} = (1, 2, 3, 2)$ and $\mathbf{v} = (2, 1, −1, 0)$.

$$
||\mathbf{u}|| = \sqrt{1^2+2^2+3^2+2^2} = 3\sqrt{2}\\
||\mathbf{v}|| = \sqrt{2^2+1^2+(−1)^2+0^2} = \sqrt{6}
$$


### (ii) What is the angle between $\mathbf{u}$ and $\mathbf{v}$?

$$
\theta = \cos^{-1}\frac{\langle\mathbf{u},\mathbf{v}\rangle}{||\mathbf{u}||\cdot||\mathbf{v}||}
= \cos^{-1}\frac{1(2)+2(1)+3(-1)+2(0)}{3\sqrt{2}\sqrt{6}}
= \cos^{-1}\frac{1}{6\sqrt{3}}
\approx 84.4782\degree
$$


## 2. Consider $\mathbf{v}_1=\begin{bmatrix}    -1 \\ 2 \\ 1\end{bmatrix},\mathbf{v}_2=\begin{bmatrix}    1 \\ 0 \\ 1\end{bmatrix},\mathbf{v}_3=\begin{bmatrix}    -1 \\ -1 \\ 1\end{bmatrix}$.

### (i) Show that $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$ form an orthogonal basis for $\R^3$.

The inner product for all pairs of $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$ are zero.

$$
\begin{align*}
    \langle\mathbf{v}_1,\mathbf{v}_2\rangle
    &= (-1)(1) + 2(0) + 1(1)
    &= 0 \\
    = \langle\mathbf{v}_2,\mathbf{v}_3\rangle
    &= 1(-1) + 0(-1) + 1(1)
    &= 0 \\
    = \langle\mathbf{v}_1,\mathbf{v}_3\rangle
    &= (-1)(-1) + 2(-1) + 1(1)
    &= 0
\end{align*}
$$

And a matrix composed of these vectors is full rank.

$$
\operatorname{rref}\begin{bmatrix}
    | & | & | \\
    \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 \\
    | & | & | \\
\end{bmatrix} =
\operatorname{rref}\begin{bmatrix}
    -1 & 1 & -1 \\
    2 & 0 & -1 \\
    1 & 1 & 1
\end{bmatrix} =
\begin{bmatrix}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
\end{bmatrix}
$$

Hence, $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$ form an orthogonal basis for $\R^3$.

### (ii) Find the orthonormal basis generated by $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$.

$$
\mathbf{\hat{v}}_1
= \frac{\mathbf{v}_1}{||\mathbf{v}_1||}
= \frac{1}{\sqrt{(-1)^2+2^2+1^2}}\begin{bmatrix}
    -1 \\ 2 \\ 1
\end{bmatrix}
= \begin{bmatrix}
    -\frac{1}{\sqrt{6}} \\[.5em] \frac{2}{\sqrt{6}} \\[.5em] \frac{1}{\sqrt{6}}
\end{bmatrix}
\\[1em]
\mathbf{\hat{v}}_2
= \frac{\mathbf{v}_2}{||\mathbf{v}_2||}
= \frac{1}{\sqrt{1^2+0^2+1^2}}\begin{bmatrix}
    1 \\ 0 \\ 1
\end{bmatrix}
= \begin{bmatrix}
    \frac{1}{\sqrt{2}} \\[.5em] 0 \\ \frac{1}{\sqrt{2}}
\end{bmatrix}
\\[1em]
\mathbf{\hat{v}}_3
= \frac{\mathbf{v}_3}{||\mathbf{v}_3||}
= \frac{1}{\sqrt{(-1)^2+(-1)^2+1^2}}\begin{bmatrix}
    -1 \\ -1 \\ 1
\end{bmatrix}
= \begin{bmatrix}
    -\frac{1}{\sqrt{3}} \\[.5em] -\frac{1}{\sqrt{3}} \\[.5em] \frac{1}{\sqrt{3}}
\end{bmatrix}
$$

The orthonormal basis $\set{\mathbf{\hat{v}}_1,\mathbf{\hat{v}}_2,\mathbf{\hat{v}}_3}$ genetrated by $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$ is

$$
\Set{
    \begin{bmatrix}
    -\frac{1}{\sqrt{6}} \\[.5em] \frac{2}{\sqrt{6}} \\[.5em] \frac{1}{\sqrt{6}}
\end{bmatrix},
\begin{bmatrix}
    \frac{1}{\sqrt{2}} \\[.5em] 0 \\[.5em] \frac{1}{\sqrt{2}}
\end{bmatrix},
\begin{bmatrix}
    -\frac{1}{\sqrt{3}} \\[.5em] -\frac{1}{\sqrt{3}} \\[.5em] \frac{1}{\sqrt{3}}
\end{bmatrix}
}.
$$

### (iii) Express $\mathbf{v}_4=\begin{bmatrix}1 \\ 2 \\ 0\end{bmatrix}$ as a linear combination of $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$.

$$
\operatorname{rref}\left[
    \begin{array}{ccc|c}
        | & | & | & | \\
        \mathbf{v}_1 & \mathbf{v}_2 & \mathbf{v}_3 & \mathbf{v}_4 \\
        | & | & | & | \\
    \end{array}
\right] =
\operatorname{rref}\left[
    \begin{array}{ccc|c}
        -1 & 1 & -1 & 1 \\
        2 & 0 & -1 & 2 \\
        1 & 1 & 1 & 0
    \end{array}
\right] = \left[
    \begin{array}{ccc|c}
        1 & 0 & 0 & \frac{1}{2} \\[.3em]
        0 & 1 & 0 & \frac{1}{2} \\[.3em]
        0 & 0 & 1 & -1
    \end{array}
\right]
\\[1em]
\therefore\mathbf{v}_4 = \frac{1}{2}\mathbf{v}_1 + \frac{1}{2}\mathbf{v}_2 - \mathbf{v}_3
$$


## 3. Consider the space of all continuous functions on $[0, 1]$, $C[0, 1]$ with the standard inner product. $$\langle f, g\rangle = \int_0^1 f(x)g(x)\d x$$

### (i) Find the norm of $f(x) = x^n$, for any positive integer $n$.

For $n\in\Z^+$:

$$
\langle x^n , x^n\rangle
= \int_0^1 x^{2n} \d x
= \left.\frac{x^{2n}}{2n+1}\right|_0^1
= \frac{1^{2n}}{2n+1}
= \frac{1}{2n+1}\\[1em]
||x^n|| = \sqrt{\langle x^n , x^n\rangle} = \frac{1}{\sqrt{2n+1}}
$$


### (ii) Find the angle between $x^n$ and $x^m$.

Assuming $n,m\in\Z^+$.

$$
\begin{align*}
    \theta = \frac{\langle x^n, x^m\rangle}{||x^n||\cdot||x^m||}
    &=\cos^{-1} \frac{\displaystyle\int_0^1 x^{nm}\d x}
    {\displaystyle\int_0^1 x^{2n}\d x\int_0^1 x^{2m}\d x} \\[2.5em]
    &=\cos^{-1} \frac{\displaystyle\frac{1^{nm}}{nm+1}}
    {\sqrt{\displaystyle\frac{1^{2n}}{2n+1}\frac{1^{2m}}{2m+1}}} \\[2.5em]
    &=\cos^{-1} \frac{1}{(nm+1)\displaystyle\frac{1}{\sqrt{(2n+1)(2m+1)}}} \\[2.5em]
    &=\cos^{-1} \frac{\sqrt{(2n+1)(2m+1)}}{nm+1}
\end{align*}
$$

Since it wasn't specified in the question, if $n$ and $m$ are not restricted to positive integers, then this solution is valid for all $n$ and $m$ such that $nm\neq-1\land(2n+1)(2m+1)\ge0$.

### (iii) Show that for any $m\neq n$, $\sin 2\pi mx$ and $\sin2\pi nx$ are always mutually orthogonal. (Hint: Check out product-to-sum formula)

Again, assuming $m,n\in\Z^+$. Suppose $\langle\sin2\pi mx, \sin2\pi nx\rangle = 0 \; \forall n\neq m$.

<div><box-note>

Again, since it wasn't specified in the question, we assume $m,n\in\Z^+$. Note that the assumption do not hold if either $m$ or $n$ are not positive integers.

For example, take $m=-1$ and $n=1$:

$$
\begin{align*}
    \langle\sin2\pi mx, \sin2\pi nx\rangle
    &= \langle\sin(-2\pi x), \sin2\pi x\rangle \\
    &= \int_0^1 \sin(-2\pi x) \sin2\pi x \d x \\
    &= \frac{1}{2}\int_0^1\cos(-4\pi x) - \cos(0) \d x \\
    &= \frac{1}{2}\int_0^1\cos(-4\pi x) - \frac{1}{2}\int_0^1\cos(0) \d x \\
    &= -\frac{1}{2}
\end{align*}
$$


</b-note></div>



Then, using the product-to-sum formula

$$
\sin\alpha\sin\beta = \frac{1}{2}(\cos(\alpha-\beta)-\cos(\alpha+\beta)),
$$

the inner product can be written as follows:

$$
\begin{align*}
    \langle\sin2\pi mx, \sin2\pi nx\rangle
    &= \int_0^1 (\sin2\pi mx)(\sin2\pi nx ) \d x \\
    &= \int_0^1 \frac{1}{2}(\cos(2\pi mx - 2\pi nx) - \cos(2\pi mx + 2\pi nx))\d x \\
    &= \frac{1}{2}\int_0^1 \cos2\pi x(m-n) - \cos2\pi x(m+n)\d x \\
    &= \frac{1}{2}\int_0^1 \cos2\pi x(m-n) \d x - \frac{1}{2}\int_0^1 \cos2\pi x(m+n)\d x
\end{align*}
$$

Notice that if $m$ and $n$ are positive integers such that $m\neq n$, then $x$ must always be a factor of $2\pi$ in both terms.

Since

$$
\int_0^1 \cos2\pi x \d x = 0 \quad\forall x\in\Z^+,
$$

then the inner product must be zero for all positive integers $m\neq n$.

Or more clearly, if we recall our Calculus II nightmare by performing $u$-substitution:

$$
\begin{align*}
    \langle\sin2\pi mx, \sin2\pi nx\rangle
    &= \frac{1}{2}\int_0^1 \cos2\pi x(m-n) \d x - \frac{1}{2}\int_0^1 \cos2\pi x(m+n)\d x \\
    &= \href{https://www.wolframalpha.com/input?i=%5Cint_0%5E1+%28%5Csin%282%5Cpi+mx%29%29%28%5Csin%282%5Cpi+nx%29%29+dx+}
    {\text{careful calculations}} \\
    &= \frac{1}{4\pi}\(
        \frac{\sin2\pi(m-n)}{m-n} - \frac{\sin2\pi(m+n)}{m+n}
    \)
\end{align*}
$$

We can see that the argument of $\sin$ will be always be a multiple of $2\pi$ (and hence is always zero). Additionally, the inner product will not be defined for $m=n$.

## 4. Prove the identity $$\langle a\mathbf{v} + b\mathbf{w}, c\mathbf{v} + d\mathbf{w}\rangle = ac||\mathbf{v}||^2 + (ad + bc)\langle \mathbf{v}, \mathbf{w}\rangle + bd||\mathbf{w}||^2.$$

$$
\begin{align*}
    \langle a\mathbf{v} + b\mathbf{w}, c\mathbf{v} + d\mathbf{w}\rangle
    &= \langle a\mathbf{v}, c\mathbf{v} + d\mathbf{w}\rangle
    + \langle b\mathbf{w},  c\mathbf{v} + d\mathbf{w}\rangle \\
    &= \langle a\mathbf{v}, c\mathbf{v}\rangle
    + \langle a\mathbf{v},d\mathbf{w}\rangle
    + \langle b\mathbf{w},c\mathbf{v}\rangle
    + \langle b\mathbf{w},d\mathbf{w}\rangle \\
    &= ac \langle \mathbf{v},\mathbf{v}\rangle
    + ad \langle \mathbf{v},\mathbf{w}\rangle
    + bc \langle\mathbf{w},\mathbf{v}\rangle
    + bd \langle\mathbf{w},\mathbf{w}\rangle \\
    &= ac||\mathbf{v}||^2 + (ad + bc)\langle \mathbf{v}, \mathbf{w}\rangle + bd||\mathbf{w}||^2
\end{align*}
$$

## 5. Given an inner product space $V$.

### (i) Show that $$||\mathbf{x} + \mathbf{y}||^2 + ||\mathbf{x} − \mathbf{y}||^2 = 2(||\mathbf{x}||^2 + ||\mathbf{y}||^2).$$ (This is called the parallelogram identity)

$$
||\mathbf{x}+\mathbf{y}||^2 = (||\mathbf{x}||+||\mathbf{y}||)^2
= ||\mathbf{x}||^2 + ||\mathbf{y}||^2 + 2||\mathbf{x}|| ||\mathbf{y}|| \\
||\mathbf{x}-\mathbf{y}||^2 = (||\mathbf{x}||+||\mathbf{y}||)^2
= ||\mathbf{x}||^2 + ||\mathbf{y}||^2 - 2||\mathbf{x}|| ||\mathbf{y}||
\\[1em]
\begin{align*}
    \therefore ||\mathbf{\mathbf{x}} + \mathbf{\mathbf{y}}||^2 + ||\mathbf{\mathbf{x}} − \mathbf{\mathbf{y}}||^2
    &= ||\mathbf{x}||^2 + ||\mathbf{y}||^2 \;\cancel{+\; 2||\mathbf{x}|| ||\mathbf{y}||}+ ||\mathbf{x}||^2 + ||\mathbf{y}||^2 \;\cancel{-\; 2||\mathbf{x}|| ||\mathbf{y}||} \\
    &= ||\mathbf{x}||^2 + ||\mathbf{y}||^2 + ||\mathbf{x}||^2 + ||\mathbf{y}||^2 \\
    &= 2(||\mathbf{x}||^2 + ||\mathbf{y}||^2)
\end{align*}
$$


### (ii) Show that $$\langle \mathbf{u}, \mathbf{v}\rangle = \frac{1}{4}(||\mathbf{x} + \mathbf{y}||^2 − ||\mathbf{x} − \mathbf{y}||^2)$$ (This is called the polarization identity)

<div><box-note>

Assuming the left-hand side is meant to be $\langle \mathbf{x}, \mathbf{y}\rangle$ i.e., proving
$$
\langle \mathbf{x}, \mathbf{y}\rangle = \frac{1}{4}(||\mathbf{x} + \mathbf{y}||^2 − ||\mathbf{x} − \mathbf{y}||^2).
$$

</b-note></div>

$$
\def<{\langle}\def>{\rangle}
\def X{\mathbf{x}}
\def Y{\mathbf{y}}
\begin{align*}
    \frac{1}{4}(||X+Y||^2 - ||X-Y||^2)
    &= \frac{1}{4}(<X+Y,X+Y> - <X-Y,X-Y>) \\
    &= \frac{1}{4}(<X+Y,X>+<X+Y,Y>-(<X-Y,X>-<X-Y,Y>)) \\
    &= \frac{1}{4}(<X,X>+<X,Y>+<X,Y>+<Y,Y>-(<X,X>-<X,Y>-(<X,Y>-<Y,Y>))) \\
    &= \frac{1}{4}(<X,X>+<X,Y>+<X,Y>+<Y,Y>-(<X,X>-<X,Y>-<X,Y>+<Y,Y>)) \\
    &= \frac{1}{4}(\cancel{<X,X>}+<X,Y>+<X,Y>+\cancel{<Y,Y>}-\cancel{<X,X>}+<X,Y>+<X,Y>-\cancel{<Y,Y>}) \\
    &= \frac{1}{4}(4<X,Y>) \\
    &= <X,Y>
\end{align*}
$$


### (iii) Show that if $\mathbf{u}$ and $\mathbf{v}$ are orthogonal, then $$||\mathbf{u}+\mathbf{v}||^2=||\mathbf{u}||^2+||\mathbf{v}||^2.$$ (This is Pythagorean Theorem)

$$
\begin{align*}
    ||\mathbf{u}+\mathbf{v}||^2
    &= \langle\mathbf{u}+\mathbf{v}, \mathbf{u}+\mathbf{v}\rangle \\
    &= \langle\mathbf{u}+\mathbf{v}, \mathbf{u}\rangle
    + \langle\mathbf{u}+\mathbf{v}, \mathbf{v}\rangle \\
    &= \langle\mathbf{u},\mathbf{u}\rangle
    \;\cancel{+\;\langle\mathbf{v},\mathbf{u}\rangle + \langle\mathbf{u},\mathbf{v}\rangle}
    + \langle \mathbf{v},\mathbf{v}\rangle
    &\quad\boxed{\because\mathbf{u}\perp \mathbf{v}}\\
    &= ||\mathbf{u}||^2+||\mathbf{v}||^2
\end{align*}
$$

