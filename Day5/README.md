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

Successfully implemented a Pipelined RV32I Processor capable of:

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
