ggplot(penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  stat_summary(geom ="point", col="red")


ggplot(penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  stat_summary(
    geom ="point",
    fun.y ="max",
    colour ="blue") + 
  stat_summary(
    geom ="line",
    fun.y ="mean",
    colour ="red") + geom_point(alpha=0.4)






ggplot(penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point()


ggplot(penguins,
       aes(x = flipper_length_mm,
           y = body_mass_g)) +
  geom_point() + 
  stat_summary(geom ="point", col="red")



