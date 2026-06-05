# ABI and Function Calls

## Objective

To understand the Application Binary Interface (ABI), register conventions, memory organization, and function call mechanisms in RISC-V.

---

## Topics Covered

### ABI Overview

- Interface between software and hardware
- Register conventions
- Function argument passing
- Return value handling

### Register Structure

- 32 General Purpose Registers
- ABI naming convention
- Caller and Callee saved registers

### Memory Organization

- Little Endian Architecture
- Doubleword allocation
- Memory addressing

### Instruction Formats

- I-Type
- R-Type
- S-Type

### Function Call Mechanism

Arguments:

a0-a7

Return Value:

a0

Return Address:

ra

---

## Lab: Sum of Numbers from 1 to 9

Implemented a summation algorithm using:

- C program
- Assembly function

### Execution Flow

Main Function

↓

Pass arguments using ABI

↓

Assembly Function

↓

Loop execution

↓

Return result through a0

↓

Print output

### Result

Sum of number from 1 to 9 is 45

---

## Key Learning

The ABI allows C and Assembly code to interact seamlessly by following common register conventions.