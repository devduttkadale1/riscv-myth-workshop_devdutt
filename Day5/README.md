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

Located in:

```text
Day5/screenshots/
```

### Lab 1

* Lab1a_start_valid.png
* Lab1b_start_valid.png

### Lab 2

* Lab2a_cycle1.png
* Lab2b_cycle1.png

### Lab 3

* Lab3a_cycle2.png
* Lab3b_cycle2.png

### Lab 4

* Lab4a_register_file_bypass.png
* Lab4b_register_file_bypass.png

### Lab 5

* Lab5a_branch.png
* Lab5b_branch.png

### Lab 6

* Lab6a_complete_instr_decode.png
* Lab6b_complete_instr_decode.png

### Lab 7

* Lab7a_complete_alu.png
* Lab7b_complete_alu.png

### Lab 8

* Lab8a_redirect_loads.png
* Lab8b_redirect_loads.png
* Lab8c_redirect_loads.png

### Lab 9

* Lab9a_load_data.png
* Lab9b_load_data.png
* Lab9c_load_data.png

### Lab 10

* Lab10a_load_data2.png
* Lab10b_load_data2.png
* Lab10c_load_data2.png

### Lab 11

* Lab11a_load_store_program.png
* Lab11b_load_store_program.png
* Lab11c_load_store_program.png

### Lab 12

* Lab12a_jump_instr.png
* Lab12b_jump_instr.png
* Lab12c_jump_instr.png

---

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
