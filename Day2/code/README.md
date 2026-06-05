# Day 2 Code

This folder contains the source code used for ABI and Function Call experiments.

## Files

### 1to9_custom.c

Main C program.

Responsibilities:

- Initialize count value
- Call assembly function using ABI conventions
- Receive result
- Display final output

Arguments passed:

a0 = 0

a1 = count + 1

---

### load.s

Assembly implementation of the summation algorithm.

Responsibilities:

- Receive arguments from C program
- Execute loop-based addition
- Return result through a0

Instructions used:

- add
- addi
- blt
- ret

---

## ABI Register Usage

| Register | Purpose |
|-----------|-----------|
| a0 | Initial value / Return value |
| a1 | Count value |
| a2 | Loop limit |
| a3 | Counter |
| a4 | Accumulated sum |

---

## Output

Sum of number from 1 to 9 is 45

---

## Learning Outcome

This lab demonstrates communication between C and Assembly using the RISC-V ABI calling convention.