# Part 1

a) Given that $0\leq\chi\leq1$, recreate Figure 4.14. (Note that the event horizon when spin is not = 0 is given by $r_{event} = r_g(1+\sqrt{1-\chi^2})$.) Verify this is correct by giving the capture radii $\frac{r_c}{r_g}$ for $s=0$ and $s=m$.

b) Approximately derive the periapsis distance at high eccentricity ($e\approx 1$) in terms of the critical angular momentum $L_c$ using the semi-latus rectum in natural units (you may need to Google an equation for this). From this, recreate Figure 4.15, using equation 4.270.
$r_p$ is given by $r_p = \frac{l}{1+e} \approx \frac{l}{2}$, $l$ is the semi-latus rectum.
$l$ is given by $l = \frac{L_c^2}{GM} \approx L_c^2$ if $r_g$ is being divided out and we're using natural units.
Therefore, $r_p \approx \frac{L_c^2}{2}$.

# Part 2

a) In ${\tt Rebound}$, create a simulation of $N=1000$ stars around a central SMBH. Distribute the stars uniformly about eccentricity $e$ and semi-major axis $a$ phase-space, for example, $a\in (0.5,2)$ and $e\in (0, 0.9)$. Simulate the motion of the stars around the SMBH and determine which will be lost to the SMBH, show the area of $a$-$e$ phase-space that is populated by doomed stars. Last week's notebook will be very useful as a starting point.
It will be useful to note that star would be lost if it has angular momentum $L < L_{lc}$ with a distance from the SMBH $r = r_{lc}$, where $r_{lc}$ is the loss-cone radius. For the purposes of this exercise, we may set the loss-cone radius to an arbitrary value (say $r_{lc} = 0.2$). Therefore, at a given timestep, a star will be lost if $L < L_{lc}$ and $r < r_{lc}$. Experiment with different ranges of $a$, $e$, and values of $r_{lc}$!

b) You should notice an early burst of losses, followed by a long period of few losses or no losses at all. Why is this? How does the feeding rate of the SMBH change if each star receives a small "kick" at each time step? (this is a rudimentary way of simulating the diffusion of angular momentum in a galactic center). Plot the accumulation of lost stars over time with this addition. 
