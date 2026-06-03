# Day 5 - Complete Pipelined RISC-V CPU Microarchitecture

## Overview

Day 5 focused on transforming the Single-Cycle RV32I Processor developed in Day 4 into a complete Pipelined RISC-V CPU using TL-Verilog and Makerchip.

The objective was to introduce pipelining concepts and implement additional processor functionality required for executing a larger subset of the RV32I instruction set.

The day introduced key concepts such as:

* Pipeline Validity
* Pipeline Timing
* Register File Bypass
* Complete Instruction Decode
* ALU Expansion
* Load Instructions
* Store Instructions
* Memory Interface
* Jump Instructions (JAL / JALR)
* Pipeline Redirection

---

## Final Result

Successfully implemented a functional 5-stage Pipelined RV32I Processor capable of executing arithmetic, logical, branch, load, store, and jump instructions with pipeline hazard handling and memory access support.

* Arithmetic Operations
* Branch Instructions
* Load Instructions
* Store Instructions
* JAL
* JALR
* Register Bypass
* Memory Access
* Pipeline Control

Simulation Status:

```text
PASSED
```

---

## Workshop Progress

| Day   | Topic                                           | Status      |
| ----- | ----------------------------------------------- | ----------- |
| Day 1 | Introduction to RISC-V ISA and GNU Toolchain    | ⏳ Pending   |
| Day 2 | ABI and Verification Flow                       | ⏳ Pending   |
| Day 3 | Digital Logic using TL-Verilog                  | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture              | ✅ Completed |
| Day 5 | Complete Pipelined RISC-V CPU Microarchitecture | ✅ Completed |

---

## Repository Structure

```text
riscv-myth-workshop_devdutt/
│
├── Day1/
├── Day2/
├── Day3/
├── Day4/
│
├── Day5/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
│
└── README.md
```

---

## Learning Objectives

This day focused on transforming a Single-Cycle CPU into a Pipelined RV32I Processor.

Topics covered include:

* Pipeline Validity
* Pipeline Timing
* Register File Bypass
* Branch Redirection
* Complete Instruction Decode
* Complete ALU Implementation
* Load and Store Instructions
* Memory Interface
* Jump Instructions
* Pipeline Hazard Handling

The goal was to understand how instructions execute simultaneously across multiple pipeline stages while maintaining correctness.

---

## Topics Covered

### 1. Pipeline Validity

Implemented instruction validity tracking across pipeline stages.

### 2. Pipeline Timing

Introduced cycle delays using TL-Verilog timing abstraction.

### 3. Register File Bypass

Implemented forwarding to eliminate data hazards.

### 4. Branch Handling

Implemented branch redirection and shadow invalidation.

### 5. Complete Instruction Decode

Implemented decode for:

* Arithmetic Instructions
* Logical Instructions
* Load Instructions
* Store Instructions
* Branch Instructions
* Jump Instructions

### 6. Complete ALU

Implemented:

* ADD / ADDI
* SUB
* AND / ANDI
* OR / ORI
* XOR / XORI
* SLL / SLLI
* SRL / SRLI
* SRA / SRAI
* SLT / SLTI
* SLTU / SLTIU

### 7. Load and Store Operations

Implemented memory access through Data Memory.

### 8. Jump Instructions

Implemented:

* JAL
* JALR

### 9. Pipeline Verification

Verified correct operation through simulation and waveform analysis.

---

## Labs Completed

### Lab 1

Pipeline Start and Valid Logic

### Lab 2

Pipeline Timing - Cycle 1

### Lab 3

Pipeline Timing - Cycle 2

### Lab 4

Register File Bypass

### Lab 5

Branch Handling

### Lab 6

Complete Instruction Decode

### Lab 7

Complete ALU

### Lab 8

Redirect Loads

### Lab 9

Load Data

### Lab 10

Load Data Completion

### Lab 11

Load / Store Program

### Lab 12

Jump Instructions (JAL / JALR)

---

## Code Files

Located in:

```text
Day5/code/
```

Main Files:

* riscv_pipeline_start_valid.tlv
* riscv_pipeline_cycle1.tlv
* riscv_pipeline_cycle2.tlv
* riscv_pipeline_register_file_bypass.tlv
* riscv_pipeline_branch.tlv
* riscv_pipeline_complete_instr_decode.tlv
* riscv_pipeline_complete_alu.tlv
* riscv_pipeline_redirect_loads.tlv
* riscv_pipeline_load_data.tlv
* riscv_pipeline_load_data2.tlv
* riscv_pipeline_load_store_program.tlv
* riscv_pipeline_jump.tlv
* riscv_pipeline_final.tlv

---

## Screenshots

### Lab 1 - Pipeline Start and Valid Logic

#### Part A

![Start Valid A](screenshots/Lab1a_start_valid.png)

#### Part B

![Start Valid B](screenshots/Lab1b_start_valid.png)

Implemented:

* Pipeline Start Signal
* Valid Instruction Tracking

---

### Lab 2 - Pipeline Timing (Cycle 1)

#### Part A

![Cycle 1A](screenshots/Lab2a_cycle1.png)

#### Part B

![Cycle 1B](screenshots/Lab2b_cycle1.png)

Implemented:

* First Pipeline Delay
* Instruction Propagation

---

### Lab 3 - Pipeline Timing (Cycle 2)

#### Part A

![Cycle 2A](screenshots/Lab3a_cycle2.png)

#### Part B

![Cycle 2B](screenshots/Lab3b_cycle2.png)

Implemented:

* Additional Pipeline Stage
* Multi-cycle Execution

---

### Lab 4 - Register File Bypass

#### Part A

![Register File Bypass A](screenshots/Lab4a_register_file_bypass.png)

#### Part B

![Register File Bypass B](screenshots/Lab4b_register_file_bypass.png)

Implemented:

* Register Forwarding
* Data Hazard Resolution

---

### Lab 5 - Branch Logic

#### Part A

![Branch A](screenshots/Lab5a_branch.png)

#### Part B

![Branch B](screenshots/Lab5b_branch.png)

Implemented:

* Branch Comparison
* Branch Redirection

---

### Lab 6 - Complete Instruction Decode

#### Part A

![Decode A](screenshots/Lab6a_complete_instr_decode.png)

#### Part B

![Decode B](screenshots/Lab6b_complete_instr_decode.png)

Implemented decoding for:

* Arithmetic Instructions
* Branch Instructions
* Load Instructions
* Store Instructions

---

### Lab 7 - Complete ALU

#### Part A

![ALU A](screenshots/Lab7a_complete_alu.png)

#### Part B

![ALU B](screenshots/Lab7b_complete_alu.png)

Implemented:

* ADD
* ADDI
* AND
* OR
* XOR
* SLT
* SLTU

---

### Lab 8 - Redirect Loads

#### Part A

![Redirect Loads A](screenshots/Lab8a_redirect_loads.png)

#### Part B

![Redirect Loads B](screenshots/Lab8b_redirect_loads.png)

#### Part C

![Redirect Loads C](screenshots/Lab8c_redirect_loads.png)

Implemented:

* Load Redirection
* Pipeline Valid Control
* Memory Read Flow

---

### Lab 9 - Load Data

#### Part A

![Load Data A](screenshots/Lab9a_load_data.png)

#### Part B

![Load Data B](screenshots/Lab9b_load_data.png)

#### Part C

![Load Data C](screenshots/Lab9c_load_data.png)

Implemented:

* Data Memory Read
* Load Instruction Execution

---

### Lab 10 - Load Data Completion

#### Part A

![Load Data2 A](screenshots/Lab10a_load_data2.png)

#### Part B

![Load Data2 B](screenshots/Lab10b_load_data2.png)

#### Part C

![Load Data2 C](screenshots/Lab10c_load_data2.png)

Implemented:

* Load Writeback
* Register File Update

---

### Lab 11 - Load / Store Program

#### Part A

![Load Store A](screenshots/Lab11a_load_store_program.png)

#### Part B

![Load Store B](screenshots/Lab11b_load_store_program.png)

#### Part C

![Load Store C](screenshots/Lab11c_load_store_program.png)

Implemented:

* Store Instruction
* Load Instruction
* Data Memory Verification

---

### Lab 12 - Jump Instructions (JAL / JALR)

#### Part A

![Jump A](screenshots/Lab12a_jump_instr.png)

#### Part B

![Jump B](screenshots/Lab12b_jump_instr.png)

#### Part C

![Jump C](screenshots/Lab12c_jump_instr.png)

Implemented:

* JAL
* JALR
* Jump Target Generation
* Program Counter Redirection
* Pipeline Flush Handling

Simulation Status:

```text
PASSED
```

## Key Learnings

* Pipeline Validity Control
* Pipeline Timing
* Register File Bypass
* Branch Redirection
* Load Operations
* Store Operations
* Data Memory Interface
* Jump Instructions
* Pipeline Hazard Handling
* Complete Pipelined RV32I CPU Design

Day 5 completed the development of a functional Pipelined RV32I Processor in TL-Verilog.


## Files

### Code

All TL-Verilog source files used throughout Day 5 are located in:

```text
Day5/code/
```

This directory contains incremental implementations developed during each lab, including the final pipelined RV32I processor.

---

### Screenshots

All simulation waveforms and lab verification screenshots are located in:

```text
Day5/screenshots/
```

These screenshots document the successful completion of each lab and verify processor functionality through Makerchip simulations.

---

### Notes

Detailed technical notes covering the concepts learned during Day 5 are located in:

```text
Day5/notes.md
```

Topics include pipeline validity, pipeline timing, register bypassing, instruction decode, ALU operations, memory access, and jump instructions.

---

### Observations

Debugging experiences, implementation challenges, and key takeaways from Day 5 are documented in:

```text
Day5/observations.md
```

This file records practical insights gained while building and verifying the pipelined RV32I processor.

---

### Final Processor

The final integrated pipelined RV32I processor implementation is available in:

```text
Day5/code/risc_v_pipeline_final.tlv
```

This file contains the completed processor supporting:

* Arithmetic Instructions
* Logical Instructions
* Branch Instructions
* Load Instructions
* Store Instructions
* JAL
* JALR
* Register File Bypass
* Pipeline Hazard Handling
* Data Memory Interface

## Conclusion

Day 5 completed the transformation of a basic single-cycle processor into a functional pipelined RV32I CPU. Through the implementation of forwarding, branch handling, memory access, and jump instructions, a complete processor datapath was developed and verified using TL-Verilog and Makerchip simulations.