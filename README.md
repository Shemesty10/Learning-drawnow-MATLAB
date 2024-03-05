# Learning-drawnow-MATLAB
## Explanation
In this Repository, I showed some code I created when learning about the `drawnow` function in MATLAB and some explanation about it.
Using `drawnow` we could update a figure and create a data visualization animation. The example is as follows

# [Example: Rotation Point](https://github.com/Shemesty10/Learning-drawnow-MATLAB/blob/main/RotationPoint.m)
In this code, I made three points which are black, red, and blue. The black point is the center of the rotation located on the origin $(0,0)$ and the red one is the initial position located on ($50,0)$. The blue one is the rotated point
The blue point will move in a circular path. To calculate the position of the blue point we can use the rotation equation as follows:

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

# [Example: Rotation Line](https://github.com/Shemesty10/Learning-drawnow-MATLAB/blob/main/RotatedLine.m)
In this code, I made a line plot that connected 2 points (red and blue points) rotated around a black point located on the origin $(0,0)$. The red and blue points have different initial positions, the red point's initial position is located on $(2,0)$ and The blue one on $(4,0)$. To create a points plot we can use `scatter` and save the properties in the variable, named `dot1` and `dot2`.
Then to create a line that connects the points we can use the `plot` function with the `X` and `Y` as the position of the rotated points (red and blue points) and save the properties in the variable, named `lines`.
Similar to the previous section, we use the rotation equation to calculate the position of the rotated point and then use the `set` function to update each variable properties value, as seen below:
```
    set(dot1,'XData',x1rot,'YData',y1rot);
    set(dot2,'XData',x2rot,'YData',y2rot);
    set(lines,'XData',dotx,'YData',doty);
```
The code above shows we use multiple `set` to update the properties value of each variable. After updating the plot properties value, we can use `drawnow` to update the MATLAB figure. The result are as follows:
<p align ="center">
<img src="https://github.com/Shemesty10/Learning-drawnow-MATLAB/blob/main/RotatedLine.gif" width="50%" height="50%">
</p>
