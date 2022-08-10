## Exercise
library(tidyverse)
library(palmerpenguins)
data(penguins)
names(penguins)

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col="red"))

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col=species))


## What is the error?

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col=species)) + 
  geom_point()


ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species,
                            col=species)) + 
  geom_point(x = flipper_length_mm, y = body_mass_g)


ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_smooth(linetype = species,
              col=species) + 
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
