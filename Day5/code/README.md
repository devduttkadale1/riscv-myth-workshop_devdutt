# Day 5 Code Documentation

## Overview

This directory contains the TL-Verilog source files developed during Day 5 of the RISC-V MYTH Workshop.

The objective of Day 5 was to transform the Single-Cycle RV32I Processor developed in Day 4 into a complete Pipelined RV32I Processor.

Each file represents a major milestone in the implementation process.

---

## Development Progression

The processor was developed incrementally through a sequence of labs.

```text
Start Valid
    ↓
Pipeline Timing
    ↓
Register File Bypass
    ↓
Branch Handling
    ↓
Complete Instruction Decode
    ↓
Complete ALU
    ↓
Load Support
    ↓
Store Support
    ↓
Jump Support
    ↓
Final Pipelined RV32I CPU
```

---

## Code Files

### riscv_pipeline_start_valid.tlv

Implemented:

* Pipeline Start Signal
* Instruction Valid Tracking

Key Concepts:

* Pipeline Initialization
* Valid Instruction Flow

---

### riscv_pipeline_cycle1.tlv

Implemented:

* First Pipeline Delay Stage

Key Concepts:

* Timing Abstraction
* Pipeline Registers

---

### riscv_pipeline_cycle2.tlv

Implemented:

* Multi-Cycle Pipeline Execution

Key Concepts:

* Instruction Propagation
* Pipeline Timing Alignment

---

### riscv_pipeline_register_file_bypass.tlv

Implemented:

* Register File Forwarding
* Data Hazard Resolution

Key Concepts:

* Operand Forwarding
* Register Dependency Handling

---

### riscv_pipeline_branch.tlv

Implemented:

* Branch Comparison Logic
* Branch Target Calculation
* Program Counter Redirection

Supported Instructions:

```text
BEQ
BNE
BLT
BGE
BLTU
BGEU
```

---

### riscv_pipeline_complete_instr_decode.tlv

Implemented complete instruction decode logic.

Supported Instruction Classes:

* Arithmetic Instructions
* Logical Instructions
* Branch Instructions
* Load Instructions
* Store Instructions

---

### riscv_pipeline_complete_alu.tlv

Implemented complete RV32I ALU support.

Supported Operations:

```text
ADD
SUB
ADDI

AND
OR
XOR

ANDI
ORI
XORI

SLL
SRL
SRA

SLLI
SRLI
SRAI

SLT
SLTU
SLTI
SLTIU
```

---

### riscv_pipeline_redirect_loads.tlv

Implemented:

* Load Redirection Logic
* Pipeline Validity Control

Key Concepts:

* Load Hazards
* Pipeline Flushing

---

### riscv_pipeline_load_data.tlv

Implemented:

* Data Memory Read Interface
* Load Address Generation

Supported Instructions:

```text
LW
```

---

### riscv_pipeline_load_data2.tlv

Implemented:

* Load Writeback Path
* Register File Update from Memory

Key Concepts:

* Memory-to-Register Data Flow

---

### riscv_pipeline_load_store_program.tlv

Implemented:

* Store Instructions
* Load Instructions
* Data Memory Verification

Supported Instructions:

```text
LW
SW
```

---

### riscv_pipeline_jump.tlv

Implemented:

* Jump Instructions
* Program Counter Redirection

Supported Instructions:

```text
JAL
JALR
```

---

### riscv_pipeline_final.tlv

Final integrated implementation of the Day 5 Pipelined RV32I Processor.

Features:

* Multi-Stage Pipeline
* Register File Bypass
* Complete RV32I Decode
* Complete ALU
* Branch Instructions
* Load Instructions
* Store Instructions
* JAL
* JALR
* Data Memory Interface
* Pipeline Hazard Handling

Simulation Status:

```text
PASSED
```

---

## Final Outcome

The final processor successfully executes:

* Arithmetic Operations
* Logical Operations
* Branch Instructions
* Memory Access Instructions
* Jump Instructions

The implementation demonstrates the progression from a Single-Cycle CPU to a functional Pipelined RV32I Processor using TL-Verilog and Makerchip.
