# Week 5 Exercise

The goal of this week's exercise is to set up situations in which a more massive body moves in a sea of background particles and experiences a dynamical friction force.

## Getting started 

A notebook has been provided that sets up a disk of planetesimals orbiting a central star. Try running this first and test out the visualization server and check that the notebook is outputting png files correctly.

## Part 1: Planet migration

First, we'll add a planet to the disk and see whether we can reproduce the results from the Kirsh et al. paper. 

Add a planet to the disk in a circular orbit with $a=1$. You can try different masses, but a good starting point is to take the planet mass to be 10% of the total disk mass. Note that because we are using the tree code for gravity, the `particles` array may be reordered, so it is best to label the planet with e.g. `hash="planet"` so that you can refer to it later (I've done something similar with the star).

Use your simulation to
- make a movie of the simulation, plotting the positions of all the particles in the frame rotating with the planet. It's helpful to plot the planet with its own symbol, and you can also add a symbol for the initial location so you can see whether the planet migrates. What features do you see in this movie?
- plot the semimajor axis and eccentricity of the planet's orbit as a function of time. Note that when getting the orbital parameters, you should explicitly tell rebound that the star is the primary (because of the reordering of the particle array), for example `orb = sim.particles["planet"].orbit(primary = sim.particles["star"])`. Does the evolution you see match the prediction from Kirsh et al. for $a(t)$?
- make a movie of the orbits of the planetsimals in the $e_H$-$a$ plane, as in Figure 4 of Kirsh et al. What features do you see? Add lines to the plot showing the prediction from Kirsh et al. for the edges of the feeding zone and see if it matches what you see in the simulation. Are there other features in the plot, and what do you think they correspond to?
- if you have time, you can investigate the effect of changing the number of particles in the disk, the planet mass, and the initial planetesimal orbits (e.g. you could give them some small dispersion in eccentricity initially as in Kirsh et al.)

## Part 2: Dynamical friction in a spherical cluster

Make modifications to the code to initialize a spherical cluster of particles. One way to do this is to choose the planetesimal locations so that they are uniformally-distributed in a sphere, and give the particle velocity random directions, with speed $\propto 1/\sqrt{r}$. You'll see some adjustment at first when you run the simulation, but the system should settle down to a stable spherical cluster of particles.

Once you have a spherical cluster, you can try adding a planet and see whether the orbit decays and whether it matches the prediction from the Chandrasekhar dynamical friction formula.

You might also be able to think up some other numerical set up to illustrate the concept of dynamical friction.

For example, rather than using a swarm of planetesimals around a central star, you could also set up a self-gravitating cluster of stars (without the massive central object). In the C version of REBOUND there is a [routine to initialize a Plummer sphere](https://github.com/hannorein/rebound/blob/e4248d983a7ed294bfe8ce59b35740306b9a5db6/src/tools.c#L523) that you could translate into Python for your initial condition.