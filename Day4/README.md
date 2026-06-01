# Day 4 - Basic RISC-V CPU Microarchitecture

## Overview

Day 4 focused on building a functional Single-Cycle RISC-V RV32I Processor using TL-Verilog and Makerchip.

The objective was to move from generic digital design concepts learned in Day 3 to actual CPU implementation by constructing the major datapath and control blocks of a processor.

The day introduced key CPU design concepts such as:

* Program Counter (PC)
* Instruction Fetch
* Instruction Decode
* Immediate Generation
* Register File Read
* ALU Operations
* Register File Write
* Branch Logic
* Program Counter Redirection
* CPU Verification

---

## Final Result

Successfully implemented a Single-Cycle RV32I Processor capable of:

* Instruction Fetch
* Instruction Decode
* Register File Read
* ALU Execution
* Register File Write
* Branch Execution

Final verification program computes:

```text
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45
```

Stored in:

```text
x10 (a0)
```

Simulation Status:

```text
✅ PASSED
```

---

## Workshop Progress

| Day   | Topic                                                 | Status      |
| ----- | ----------------------------------------------------- | ----------- |
| Day 1 | Introduction to RISC-V ISA and GNU Compiler Toolchain | ⏳ Pending   |
| Day 2 | Introduction to ABI and Basic Verification Flow       | ⏳ Pending   |
| Day 3 | Digital Logic with TL-Verilog and Makerchip           | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture                    | ✅ Completed |
| Day 5 | Complete Pipelined RISC-V CPU Microarchitecture       | 🚧 Upcoming |

---

## Repository Structure

```text
riscv-myth-workshop_devdutt/
│
├── Day1/
├── Day2/
├── Day3/
│
├── Day4/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
│
├── Day5/
│
└── README.md
```

---

## Learning Objectives

This day focused on understanding how a processor executes instructions by implementing the complete datapath and control flow of a simple RV32I CPU.

Topics covered include:

* CPU Microarchitecture
* Instruction Fetch
* Instruction Decode
* Immediate Generation
* Register File Architecture
* ALU Design
* Branch Control Logic
* Program Counter Control
* CPU Verification

The goal was to understand how instructions move through a processor from fetch to execution.

---

## Topics Covered

### 1. Program Counter (PC)

Implemented Program Counter logic.

Responsibilities:

* Reset Handling
* PC Increment
* Branch Redirection

Example:

```tlv
$pc = >>1$pc + 32'd4;
```

---

### 2. Instruction Fetch

Fetched instructions from Instruction Memory.

Implemented:

* Instruction Memory Enable
* Instruction Memory Address Generation
* Instruction Fetch Logic

---

### 3. Instruction Decode

Decoded instruction fields:

* opcode
* rd
* rs1
* rs2
* funct3
* funct7

Used these fields to identify instructions.

---

### 4. Immediate Generation

Implemented immediate extraction and sign extension.

Instruction types decoded:

* I-Type
* B-Type

---

### 5. Register File Read

Implemented:

* Read Port 1
* Read Port 2

Generated source operands:

```text
src1_value
src2_value
```

for ALU execution.

---

### 6. Arithmetic Logic Unit (ALU)

Implemented arithmetic instructions:

#### ADD

```text
result = src1 + src2
```

#### ADDI

```text
result = src1 + imm
```

---

### 7. Register File Write

Implemented writeback stage.

Signals:

* Write Enable
* Write Address
* Write Data

Protected:

```text
x0 register
```

from accidental writes.

---

### 8. Branch Logic

Implemented:

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Generated:

```text
taken_br
```

signal.

---

### 9. Branch Target Generation

Implemented:

```text
PC + Immediate
```

to generate branch target addresses.

---

### 10. CPU Verification

Implemented a testbench to verify processor functionality.

Pass condition:

```text
x10 = 45
```

Simulation completed successfully.

---

## Labs Completed

* Introduction to RISC-V CPU Microarchitecture
* Program Counter (PC) Implementation
* Instruction Fetch Logic
* Instruction Type Decode
* Immediate Decode
* Register Field Decode
* Complete Instruction Decode
* Register File Read - Part 1
* Register File Read - Part 2
* ALU Implementation (ADD / ADDI)
* Register File Write
* Branch Logic - Part 1
* Branch Logic - Part 2
* CPU Testbench

---

## Screenshots

### Introduction

![Introduction](screenshots/Day4_Lab1_intro.png)

### Program Counter

![Program Counter](screenshots/Day4_Lab2_PC.png)

![Program Counter Waveform](screenshots/Day4_Lab2_PC_waveform.png)

### Instruction Fetch

![Instruction Fetch](screenshots/Day4_Lab3_fetch.png)

![Instruction Fetch Waveform](screenshots/Day4_Lab3_fetch_waveform.png)

### Instruction Type Decode

![Instruction Decode](screenshots/Day4_Lab4_decode_type.png)

### Immediate Decode

![Immediate Decode](screenshots/Day4_Lab5_immediate_decode.png)

### Register Field Decode

![Register Field Decode](screenshots/Day4_Lab6_register_fields.png)

### Complete Instruction Decode

![Complete Decode](screenshots/Day4_Lab7_complete_decode.png)

### Register File Read

![Register File Read](screenshots/Day4_Lab8_regfile_read.png)

![Register File Read Waveform](screenshots/Day4_Lab9_regfile_read_waveform.png)

### ALU

![ALU](screenshots/Day4_Lab10_ALU.png)

### Register File Write

![Register File Write](screenshots/Day4_Lab11_regfile_write.png)

### Branch Logic

![Branch Logic](screenshots/Day4_Lab12_branch_logic.png)

### Branch Target PC

![Branch Target PC](screenshots/Day4_Lab13_branch_target.png)

### Testbench

![Testbench](screenshots/Day4_Lab14_testbench.png)

### Simulation Passed

![Simulation Passed](screenshots/Day4_Lab15_pass.png)

---

## Key Learnings

* Understood the architecture of a simple RV32I processor.
* Learned how instructions are fetched from memory.
* Implemented instruction decoding and control signal generation.
* Learned how register files provide operands to the ALU.
* Implemented arithmetic execution using ADD and ADDI.
* Implemented register writeback logic.
* Learned branch comparison and PC redirection.
* Built and verified a complete single-cycle CPU.

---

## Files

### Code

Located in:

```text
Day4/code/
```

### Screenshots

Located in:

```text
Day4/screenshots/
```

### Notes

Located in:

```text
Day4/notes.md
```

### Observations

Located in:

```text
Day4/observations.md
```
