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

## Screenshots

### RISC-V CPU Microarchitecture Introduction

![RISC-V Introduction](screenshots/risc_v_intro.png)

![RISC-V Visualization](screenshots/risc_v_viz.png)

---

### Lab 1 - Program Counter Reset

![PC Reset](screenshots/Lab_1_PC_reset.png)

---

### Lab 2 - Instruction Fetch

#### Initial Fetch Implementation

![Instruction Fetch Error](screenshots/Lab_2_fetch_error.png)

#### Correct Instruction Fetch

![Instruction Fetch Success](screenshots/Lab_2_fetch_with_instr.png)

---

### Lab 3 - Instruction Type Decode

![Instruction Type Decode](screenshots/Lab_3_decode_instr_type.png)

Implemented detection of:

* R-Type
* I-Type
* S-Type
* B-Type
* U-Type
* J-Type

---

### Lab 4 - Immediate Decode (I-Type)

![Immediate Decode](screenshots/Lab_4_decode_instr_i_type.png)

Implemented sign-extension and immediate extraction for I-Type instructions.

---

### Lab 5 - Instruction Format Decode

#### Part A

![Instruction Format Decode A](screenshots/Lab_5a_decode_instr_format.png)

#### Part B

![Instruction Format Decode B](screenshots/Lab_5b_decode_instr_format.png)

Decoded:

* opcode
* rd
* rs1
* rs2
* funct3
* funct7

---

### Lab 6 - Valid rs2 Condition

#### Part A

![Valid rs2 Condition A](screenshots/Lab_6a_decode_instr_valid_rs2_condition.png)

#### Part B

![Valid rs2 Condition B](screenshots/Lab_6b_decode_instr_valid_rs2_condition.png)

Implemented:

```text
rs2_valid
```

to determine whether an instruction requires a second source register.

---

### Lab 7 - Complete Instruction Decode

#### Part A

![Complete Decode A](screenshots/Lab_7a_decode_instr_complete_cycle.png)

#### Part B

![Complete Decode B](screenshots/Lab_7b_decode_instr_complete_cycle.png)

Implemented individual instruction decoding:

* ADD
* ADDI
* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

---

### Lab 8 - Register File Read

#### Part 1A

![Register File Read 1A](screenshots/Lab_8_Part1a_register_file_read.png)

#### Part 1B

![Register File Read 1B](screenshots/Lab_8_Part1b_register_file_read.png)

#### Part 2A

![Register File Read 2A](screenshots/Lab_8_Part2a_register_file_read.png)

#### Part 2B

![Register File Read 2B](screenshots/Lab_8_Part2b_register_file_read.png)

Implemented:

* Read Port 1
* Read Port 2
* Source Operand Extraction

---

### Lab 9 - ALU Implementation

#### Part A

![ALU Part A](screenshots/Lab_9a_ALU.png)

#### Part B

![ALU Part B](screenshots/Lab_9b_ALU.png)

Implemented:

* ADD
* ADDI

---

### Lab 10 - Register File Write

#### Part A

![Register File Write A](screenshots/Lab_10a_register_file_write.png)

#### Part B

![Register File Write B](screenshots/Lab_10b_register_file_write.png)

Implemented:

* Write Enable
* Write Address
* Write Data

Protected writes to:

```text
x0
```

---

### Lab 11 - Branch Logic

#### Part A

![Branch Logic A](screenshots/Lab_11a_register_file_branch.png)

#### Part B

![Branch Logic B](screenshots/Lab_11b_register_file_branch.png)

Implemented branch comparison logic.

---

### Lab 12 - Branch Target and PC Redirection

#### Part A

![Branch Target A](screenshots/Lab_12a_register_file_branch.png)

#### Part B

![Branch Target B](screenshots/Lab_12b_register_file_branch.png)

Implemented:

* Branch Target Address Generation
* Program Counter Redirection

---

### Lab 13 - CPU Testbench

#### Part A

![Testbench A](screenshots/Lab_13a_register_file_testbench.png)

#### Part B

![Testbench B](screenshots/Lab_13b_register_file_testbench.png)

Verified correct execution of the summation program.

Simulation Status:

```text
PASSED
```


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
