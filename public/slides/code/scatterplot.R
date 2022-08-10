library(palmerpenguins)
library(ggplot2)

ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species))


ggplot(data=penguins,
       aes(x=flipper_length_mm, y=body_mass_g, colour=species)) +
  geom_point(aes(shape=island), alpha=0.5)

ggplot(data=penguins,
       aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(colour="red", alpha=0.2)
