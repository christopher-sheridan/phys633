# Week 3 Exercises

## Part 1

Consider a simple two-body system: a planet of mass $M_p$ and radius $R$, rotating at angular frequency $\Omega$, orbited by a satellite of mass $M_s$ on a Keplerian orbit with semi-major axis $a$ and eccentricity $e$. Assume $M_s\ll M_p$.

1. Write down the equation(s) required to compute the tidal deformation of the planet. Indicate where orbital eccentricity and planetary rotation enter the formulation.

2. Implement an algorithm to animate the deformation of the planet’s surface over several orbital periods. Show the behavior of this system with the following parameters:

    a. $e=0$ and $\Omega = 0$

    b. $e=0$ and $\Omega = n$

    c. $e=0.8$ and $\Omega = 3n$

3. (extra) Implement rotational deformation, assume the rotation is sufficiently small so that the tidal and rotational deformation effects add linearly.

## Part 2

Use Rebound to simulate a 2-planet system. Set up each planet with its mass and initial orbital parameters. You may want to change the units using ```sim.units = ('AU','yr','Msun')```

1. Try to replicate Fig.3-4 from the Exoplanets (PDF attached) book using the initial conditions from the captions, and add a plot for the argument of periastron for each planet as well. You can read the text in the PDF file for some more explanation. Increase the simulation time. What do you find and how can you explain that? (extra: animate the change in orbits)

2. Experiment with the orbital parameters of each planet. Try to put them into a resonance or near-resonance. Observe how orbital parameters evolve over time. Add a plot for the resonant argument (Eq. 7.43) and check if your system meets the criteria of being in resonance. (extra: animate the change in orbits)

3. Reproduce Fig. 7.9. Use Eq. 7.54 to set the timescale of the simulation to observe a few Kozai cycles. Can you confirm your observations with Eq. 7.52 and 7.53? The simulation may take longer now. Try to change the integrator (```sim.integrator=```) to reduce errors that accumulate over large timescales. (extra: animate the change in orbits)
