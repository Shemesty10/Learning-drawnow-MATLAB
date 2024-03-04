# Learning-drawnow-MATLAB
## Explanation
In this Repository, I showed some code I created when learning about the `drawnow` function in MATLAB and some explanation about it.
Using `drawnow` we could update a figure and create a data visualization animation. The example is as follows

# [Example: Rotation Point](RotationPoint.m)
In this code, I made three points which are black, red, and blue. The black point is the center of the rotation located on the origin $(0,0)$ and the red one is the initial position located on ($50,0)$. The blue one is the rotated point
The blue point will move in a circular path. To calculate the position of the blue point we can use the Rotation Matrix as follows:

$$x_{rot}=x\cos(\theta) - y\cos(\theta)\\
y_{rot}=x\sin(\theta) + y\cos(\theta)
$$
