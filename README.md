# hello-assembly
Collection of "Hello World" examples for assembly I've written

Most of these examples are using bare system calls to write "Hello World" to
stdout. 

The structure of the folders is: `arch/abi/`, where `arch` is the architecture,
e.g. x86_64, i386, ppc, etc., and `abi` is the ABI the example targets, most of
which are just "linux".

Most of these are written using GNU AS syntax. It's debatable whether it's the
best, but at least it's some point of commonality across all the examples, so
hopefully they're easier to understand.

## Testing

As far as possible, I try to test all the examples on actual hardware. So far
I've tested:

- x86_64
    - Ryzen 5 5600x
- i386
    - Ryzen 5 5600x
- ppc
    - MPC8313E (PowerQUICC II, e300c3)
- arm
    - BCM2835 (Raspberry Pi, Model B Rev 2)

When not possible to test physically, I've tested the examples using QEMU's
wonderful user-mode emulation.

## Compiling

These examples are meant to be compiled on an x86_64 computer be default.
Examples that can be natively compiled (i.e. i386) are done so just with
compiler flags, and the others use cross compilers.

If you're on a different platform and want to compile anything, you'll have to
adjust the `CC` definition in the `Makefile` to match. If you have a cross
compiler which is compatible, but under a different name, you'll likewise have
to adjust that definition.

