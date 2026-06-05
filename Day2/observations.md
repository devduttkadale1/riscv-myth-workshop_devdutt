# Day 2 Observations

## ABI

ABI acts as a contract between software and hardware.

The compiler, operating system, and processor follow common rules to exchange data correctly.

---

## Register Naming

Although registers are physically named x0-x31, ABI names make programs easier to understand.

Example:

x10 = a0

instead of

x10

---

## Little Endian Storage

RISC-V stores the least significant byte at the lowest memory address.

This affects how data is loaded and stored from memory.

---

## Load-Store Architecture

RISC-V is a load-store architecture.

Arithmetic operations occur only on registers.

Data must first be loaded from memory into registers before processing.

---

## Function Arguments

Arguments are passed through a0-a7 registers.

The return value is also stored in a0.

This convention allows C programs and assembly programs to communicate correctly.

---

## Function Calls

The assembly function received:

a0 = 0

a1 = 10

The result was returned through a0.

This confirms the ABI calling convention.

---

## Assembly Implementation

The assembly code used:

- add
- addi
- blt
- ret

to implement a loop-based summation algorithm.

---

## Verification Flow

The complete flow observed:

C Program
→ GCC Compiler
→ Assembly
→ Object File
→ Spike Simulator
→ Output

This is the basic software-to-hardware verification flow used in processor development.

---

## Simulation Result

Input:

1 to 9

Output:

45

The simulation result matched the expected mathematical sum.