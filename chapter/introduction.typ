#import "../assets/typst-boxes.typ": *
#import "../assets/typst-cd.typ": *

= Introduction <introduction>

There has been a trend in making texts of "math/modelling/programming" for x, where x represents a discipline from a basic science.
However, in this manuscript, we would like to go the other direction and provide advanced subject matter on the biological and environmental processes that undergird the mathematics and programming.
Understand the science of what is being modelled is in many ways just as important as understanding the equations that govern the analysis.
This goes to everything from compartmental models used to represent pharmacodynamics to building vaccine effectiveness analysis.

@achtmanYersiniaPestisCause1999.

#colorbox(
  title: lorem(5),
  color: "blue",
  radius: 2pt,
  width: auto
)[
  #lorem(50)
]


Below is just a test using this macro package of a three compartment model.

#align(center)[#commutative_diagram(
  node((0, 0), [$S$]),
  node((0, 1), [$I$]),
  node((0, 2), [$R$]),
  arr((0, 0), (0, 1), [$beta*S*I$], label_pos: -1em),
  arr((0, 1), (0, 2), [$gamma$], label_pos: -1em),
)]
