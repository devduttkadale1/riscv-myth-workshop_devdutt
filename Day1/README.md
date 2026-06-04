# Day 1 - Introduction to RISC-V ISA and GNU Compiler Toolchain

## Overview

Day 1 introduced the fundamentals of the RISC-V Instruction Set Architecture (ISA), number representation, compiler flow, software-to-hardware abstraction, and the relationship between application software, system software, and processor hardware.

The objective was to understand how high-level programs are converted into machine instructions and executed by a RISC-V processor.

---

## Topics Covered

* RISC-V ISA Fundamentals
* Integer and Floating Point Operations
* Number Representation
* Signed and Unsigned Numbers
* Two's Complement Representation
* RISC-V Base Integer Instruction Set (RV64I)
* Multiply Extension (RV64M)
* Floating Point Extensions (RV64F/RV64D)
* Application Binary Interface (ABI)
* Stack Pointer and Memory Allocation
* Pseudo Instructions
* Software to Hardware Flow
* Compiler and Assembler Flow

---

## Workshop Progress

| Day | Topic | Status |
|------|--------|---------|
| Day 1 | Introduction to RISC-V ISA and GNU Compiler Toolchain | ✅ Completed |
| Day 2 | ABI and Basic Verification Flow | ⏳ Pending |
| Day 3 | Digital Logic with TL-Verilog and Makerchip | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture | ✅ Completed |
| Day 5 | Complete Pipelined RISC-V CPU | ✅ Completed |

---

## Repository Structure

```text
Day1/
│
├── README.md
├── notes.md
├── observations.md
├── gcc_toolchain.md
├── integer_representation.md
├── riscv_keywords.md
├── code/
└── screenshots/
```

---

## Key Learning Outcome

By the end of Day 1, I understood:

* What an ISA is
* How software communicates with hardware
* How compilers and assemblers generate machine code
* Number representation in RV64
* Signed and unsigned arithmetic
* Importance of ABI and stack management
* Relationship between architecture, RTL implementation and silicon

---

## Important Concepts

### Instruction Set Architecture (ISA)

ISA acts as the contract between software and hardware.

```text
Application
     ↓
Compiler
     ↓
Assembly
     ↓
Machine Code
     ↓
ISA
     ↓
Processor Hardware
```

---

### RISC-V Extensions Studied

| Extension | Purpose |
|------------|----------|
| RV64I | Base Integer Instructions |
| RV64M | Integer Multiplication and Division |
| RV64F | Single Precision Floating Point |
| RV64D | Double Precision Floating Point |

---

### Screenshots

All lecture screenshots are available in:

```text
Day1/screenshots/
```

---

## Next Step

Day 2 introduces:

* ABI in detail
* Function Calls
* Memory Organization
* Verification Basics