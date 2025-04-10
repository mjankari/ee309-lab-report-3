#import "@preview/unify:0.7.1": qty

#set page(paper: "a4")
#set text(font: "Liberation Serif", size: 12pt)
#show heading: set block(below: 2em, above: 2em)
#set par(justify: true)

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
) <circuit-1>

#figure(
  grid(
    columns: 2,
    image("images/schematics-circuit-2.jpeg", width: 100%),
    image("images/output-circuit-2.jpeg", width: 90%)
  ),
  caption: [Adding Extra DC Voltage Source ($qty("5", "volt")$)]
) <circuit-2>

#figure(
  grid(
    columns: 2,
    image("images/schematics-circuit-3.jpeg", width: 100%),
    image("images/output-circuit-3.jpeg", width: 90%)
  ),
  caption: [Changing The Direction of Diode]
) <circuit-3>

#figure(
  table(
    columns: 4,
    table.header([], [@circuit-1], [@circuit-2], [@circuit-3]),
    $V_"p" "to" V_"p" "out"$, $qty("26.9", "volt")$, $qty("20.9", "volt")$, $qty("23.3", "volt")$,
    $V_"p" "to" V_"p" "in"$, $qty("20.5", "volt")$, $qty("20.6", "volt")$, $qty("22.9", "volt")$
  ),
  caption: [Measured voltage peak to peak inputs and outputs]
) <table>

== Questions

=== Question 1

*Why are these versions of diode circuits called clamping circuits?
What is the meaning of clamp?*

They are called clamping circuits because as the name suggests, They
clamp the voltage to a designated level, Which holds it in place
together.

Clamp essentially means by holding or clamping a level, The voltage will
stay in place and will not go above nor below the chosen level, It
achieves that by adding a capacitor to the circuit.

=== Question 2

*What could happen if the capacity of the capacitor increased?*

If the capacitance of the capacitor in a clamping circuit increases, the
capacitor will be able to store more charge. This would have the
following effects:

+ Slower Voltage Change: The capacitor will take longer to charge and discharge because a larger capacitance requires more time to accumulate or release charge. This means the voltage across the capacitor will change more slowly in response to the AC signal.
+ Smoother Output Voltage: Since the capacitor stores more charge, it can “hold” the voltage at the clamped level for a longer period, reducing the ripple or variations in the output. The result would be a smoother output waveform.
+ Higher Clamping Level: A larger capacitance can also result in a higher peak voltage across the capacitor (depending on the input signal's characteristics), which could shift the output voltage to higher or lower levels, depending on the design of the circuit.

In essence, increasing the capacitance makes the clamping action more
stable but slower in response, with potentially larger voltage swings
depending on the circuit.

=== Question 3

*Try to explain the logic behind the result of @circuit-2 and
@circuit-3.*

==== For @circuit-2

During the negative half cycle, the diode is forward biased.
The voltage on the resistor, $V_o$, will equal:
$ V_o = 5 - 0.7 = qty("4.3", "volt") $
During this cycle, the capacitor is charging with the AC input voltage
and $V_o$: $ "Charge" = 10 + 4.3 = qty("14.3", "volt") $

During the positive half cycle, the diode is reverse biased, so current
doesn't flow, and the capacitor holds the charge.
So then the output voltage Vo will be the voltage from when the
capacitor was charging, plus the input AC voltage:
$ V_o = 10 + 14.3 = qty("24.3", "volt") $

The minimum and maximum outputs are consistent with the output seen in
the screenshot of @circuit-2.

==== For @circuit-3

During the positive half cycle, the diode will be forward biased, so
the capacitor will be charging.

The voltage on the resistor, $V_o$, will equal:
$ V_o = 5 + 0.7 = qty("5.7", "volt") $
During this cycle, the capacitor is charging with the input AC voltage
and $V_o$: $ "Charge" = 10 - 5.7 = qty("4.3", "volt") $

During the negative half cycle, the diode is reverse biased, so current
doesn't flow, and the capacitor holds the charge. So then the output
voltage Vo will be the voltage from the capacitor, plus the input AC
voltage: $ V_o = -10 - 4.3 = qty("-14.3", "volt") $

The numbers are consistent with the output seen in the @circuit-3
screenshot.
