# Learning-drawnow-MATLAB
## Explanation
In this Repository, I showed some code I created when learning about the `drawnow` function in MATLAB and some explanation about it.
Using `drawnow` we could update a figure and create a data visualization animation. The example is as follows

# [Example: Rotation Point](https://github.com/Shemesty10/Learning-drawnow-MATLAB/blob/main/RotationPoint.m)
In this code, I made three points which are black, red, and blue. The black point is the center of the rotation located on the origin $(0,0)$ and the red one is the initial position located on ($50,0)$. The blue one is the rotated point
The blue point will move in a circular path. To calculate the position of the blue point we can use the Rotation Matrix as follows:

$$x_{rot}=x\cos(\theta) - y\sin(\theta)$$

$$y_{rot}=x\sin(\theta) + y\cos(\theta)$$
$\theta$ is the rotation radian of the point concerning the initial position. $x_{rot}$ and $y_{rot}$ is the position of the rotated point. $x$ and $y$ is the initial position of the point.

The rotated point (blue point) plot is saved in a variable, named `h`, then to update the point we use `set`. `set` is used to update the properties of the plot parameter. To change the position of the plot we can change `XData` and `YData` (To see more of the plot properties, you can call the variable in the Command Window). The following is how to write the 'set' function
``` MATLAB
set(variable,'properties1',value1,'properties2',value2);
```
and The implementation example of the `set` function is
``` MATLAB
set(h,'XData',xrot,'YData',yrot);
```
After updating the plot properties value, we can use `drawnow` to update the MATLAB figure. The results are as follows
<p align ="center">
<img src="https://github.com/Shemesty10/Learning-drawnow-MATLAB/blob/main/RotationPoint_origin.gif" width="50%" height="50%">
</p>
