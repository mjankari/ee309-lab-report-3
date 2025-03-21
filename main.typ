= EE309 Experiment 3 Report

== Objectives

- Observe the output waveform $V_o$ on the oscilloscope with a square wave input
  $V_i$ applied, keeping the AC/DC switch of the oscilloscope in the DC
  position.
- Measure the clamped voltage and verify it with the designed values.

== Results

#figure(
  grid(
    columns: 2,
    image("images/schematics-circuit-1.jpeg", width: 100%),
    image("images/output-circuit-1.jpeg", width: 90%)
  ),
  caption: [Positive peak clamped at $V_y$ level]
)

#figure(
  grid(
    columns: 2,
    image("images/schematics-circuit-2.jpeg", width: 100%),
    image("images/output-circuit-2.jpeg", width: 90%)
  ),
  caption: [Adding Extra DC Voltage Source ($+5V$)]
) <circuit-2>

#figure(
  grid(
    columns: 2,
    image("images/schematics-circuit-3.jpeg", width: 100%),
    image("images/output-circuit-3.jpeg", width: 90%)
  ),
  caption: [Changing The Direction of Diode]
) <circuit-3>

== Questions

=== Question 1

*Why are these versions of diode circuits called clamping circuits? What is the
meaning of clamp?*

=== Question 2

*What could happen if the capacity of the capacitor increased?*

=== Question 3

*Try to explain the logic behind the result of @circuit-2 and @circuit-3.*
