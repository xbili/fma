# FPGA Fused Multiply Add (FMA)

> “The operation `fma(x, y, z)` computes `(x · y ) + z` as if with unbounded
range and precision, rounding only once to the destination format.”

(taken from IEEE 754-2008)

Here we try to come up with an efficient operation that makes use of
Partial Product Reduction Trees (PPRT) to speed up multioperand additions.

These are implemented on a Intel DE1-SoC board that comes with a Cyclone V FPGA.

## Hardware Design (FPGA)

This repository is a Quartus Prime project that is checked in. We are currently
using version 16.1. You can find it on the
[Altera/Intel FPGA website](https://www.altera.com/products/design-software/fpga-design/quartus-prime/download.html).

Launch `soc_system.qpf` to open the project in Quartus.

`ghrd_top.v` is a generated reference design a.k.a Golden Hardware Reference Design
that has taken care of lots of boilerplate Verilog/VHDL. It is also our **Top Level
Entity**.

## Software (HPS)

In order for the FPGA to talk to the HPS system, we need to allow the components
to communicate via a bridge. This is done through **Qsys**.

For this current implementation, we are only making use of the Lightweight
HPS-to-FPGA bridge. It has a maximum of 32-bit data width.

The software implementation is done in C, and can be found in the `software`
directory. This folder contains C source and header files necessary to make use
of our hardware design from software.

### Compilation

Compiling the C code in `src/software` is all done via a `Makefile`. `cd` into the
software directory and run `make` to compile.

After compilation, copy the file to our board running any flavor of Linux and
run it.

NOTE: You might run into permissions issue. Simply run as `root`:

`chmod +x <location of binary>`

## Implementation

Still a work-in-progress. The general idea is to make use of a Wallace tree as
a partial product reducer.
