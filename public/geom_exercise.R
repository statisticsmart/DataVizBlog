## Exercise
#library(tidyverse)
library(ggplot2)
library(palmerpenguins)
data(penguins)
names(penguins)

ggplot(data = penguins) + 
 geom_smooth(mapping = aes(x = flipper_length_mm, 
                            y = body_mass_g, 
                            linetype = species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, 
                            y = body_mass_g))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           col=species))


ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm,
                            y = body_mass_g, 
                            linetype = species
                            ), col="red")

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, 
                            y = body_mass_g, linetype = species,
                            col=species))


## What is the error?

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm,
                            y = body_mass_g, 
                            linetype = species,
                            col=species)) + 
  geom_point(mapping = aes(x = flipper_length_mm,
                           y = body_mass_g, 
                           col=species))


ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm,
                                      y = body_mass_g, 
                                      col=species)) +
  geom_smooth(mapping = aes(linetype = species)) + 
  geom_point()



ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col=species)) + 
  geom_point(aes(x = flipper_length_mm, 
             y = body_mass_g))


ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_smooth(aes(linetype = species,
              col=species) )+ 
  geom_point()



## Correct
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_smooth(aes(linetype = species,
              col=species)) + 
  geom_point()


## Correct

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col=species)) + 
  geom_point(aes(x = flipper_length_mm, y = body_mass_g))
