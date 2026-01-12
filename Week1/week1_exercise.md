# Week 1 Exercises

## Part 1

Work in pairs. Start with the notebook provided which uses REBOUND to integrate a binary with primary of mass $1$ and secondary of mass $0.1$. You should see a plot showing the instantaneous orbit (produced by `rebound.OrbitPlot`) and the trajectory of the secondary animated over two orbits.

(a) You should see in the output the orbital period (the line that prints `o.P`) which has a numerical value of $\approx 18.98$. Check that this value makes sense given the units that REBOUND uses which have G=1 (see [here](https://rebound.hanno-rein.de/units/#using-g1) for more explanation).

(b) After setting up the two particles, one with $m=1$ at rest at the origin, the other with $m=0.1$ at $x=1$, $y=0$ with $v_x=0$, $v_y=1.3$, we ask REBOUND to move to the centre of mass frame using `sim.move_to_com()`. Comment out this line and rerun. What happens? Does it make sense?

(c) Now add two more curves to the plot to show (i) the trajectory of the primary star and (ii) the trajectory of the vector $\vec{r}=\vec{r}_2 - \vec{r}_1$, the relative position between the two stars. Then, rescale the primary trajectory by a factor $-(1+m_1/m_2)$ and the secondary trajectory by a factor $1+m_2/m_1$. Explain what you find. What is `rebound.OrbitPlot` plotting when it plots the instantaneous orbit of the secondary?

(d) You should also see some output giving information about the orbit. Use equations (2.134) and (2.135) to check that $a$ and $e$ are as expected given the initial conditions. What velocity $v_\mathrm{circ}$ would you have to give $m_2$ to obtain a circular orbit? What is the difference between choosing an initial velocity $< v_\mathrm{circ}$ compared to an initial velocity $> v_\mathrm{circ}$?

## Part 2

Divide into three groups to work on the following problems. You will have 10 minutes at the end of class to present your results. _In all three cases, you can take the limit where the primary is much more massive than the secondary (set $m_2=0$) to keep things simple._ Also, you might find it useful to initialize the orbit with specific $a$ and $e$ rather than position and velocity, e.g. `sim.add(m=0, a=1, e=0.01)`.

1. __Guiding centre approximation__. The guiding centre approximation is discussed in Section 2.6. Test this approximation numerically by making plots in the rotating frame that rotates with the guiding centre. Check numerically that the error in the approximation scales $\propto e^2$.

2. __Applying forces to a particle in orbit__. Section 2.9 presents results for how the orbital elements change when forces are applied to the orbiting body. Test these predictions numerically. You can use the [example notebook on the Stark problem]( https://github.com/hannorein/rebound/blob/main/ipython_examples/Forces.ipynb) included with REBOUND to get started.

3. __Orbits in velocity space__. Study the shape, size and location of the orbits in velocity space and how they depend on semi-major axis $a$ and eccentricity $e$. Derive formulas if you can and test them against your numerical results.


