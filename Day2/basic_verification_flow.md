# Basic Verification Flow

## Objective

To understand how a C program is transformed into executable machine code and verified on a RISC-V processor.

---

## Verification Flow

C Program

↓

GCC Compiler

↓

Assembly Code

↓

Object File

↓

Disassembly (Objdump)

↓

Spike Simulation

↓

Output Verification

---

## Commands Used

Compile:

riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o 1to9_custom.o 1to9_custom.c load.s

Simulate:

spike pk 1to9_custom.o

Disassemble:

riscv64-unknown-elf-objdump -d 1to9_custom.o

---

## Objdump Analysis

Observed:

- Function call through jal
- Return through ret
- Argument passing using a0 and a1
- Result returned in a0

---

## Simulation Result

Output:

Sum of number from 1 to 9 is 45

Expected result matched simulated result.

---

## Learning Outcome

- Understanding compiler flow
- Understanding object code generation
- Understanding assembly execution
- Introduction to processor verification methodology