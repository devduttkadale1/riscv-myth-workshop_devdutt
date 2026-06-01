# RISC-V MYTH Workshop

A complete learning journey through the RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop using TL-Verilog and Makerchip.

This repository documents my hands-on implementation of a RISC-V processor, starting from digital logic fundamentals and progressing to a complete pipelined RV32I CPU.

---

## Overview

The workshop covers:

* RISC-V ISA Fundamentals
* GNU Toolchain
* ABI Concepts
* Basic Verification Flow
* Digital Logic Design
* TL-Verilog
* CPU Microarchitecture
* Single-Cycle RV32I Processor
* Pipelined RV32I Processor
* CPU Verification and Debugging

The repository includes:

* Detailed Notes
* Debugging Observations
* TL-Verilog Source Code
* Architecture Diagrams
* Waveforms and Screenshots
* Processor Implementation Labs

---

## Workshop Progress

| Day   | Topic                                                 | Status      |
| ----- | ----------------------------------------------------- | ----------- |
| Day 1 | Introduction to RISC-V ISA and GNU Compiler Toolchain | ✅ Completed |
| Day 2 | Introduction to ABI and Basic Verification Flow       | ✅ Completed |
| Day 3 | Digital Logic with TL-Verilog and Makerchip           | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture                    | ✅ Completed |
| Day 5 | Complete Pipelined RISC-V CPU Microarchitecture       | ✅ Completed |

---

## Repository Structure

```text
riscv-myth-workshop_devdutt/
│
├── Day1/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
│
├── Day2/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
│
├── Day3/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
│
├── Day4/
│   ├── README.md
│   ├── notes.md
│   ├── observations.md
│   ├── code/
│   └── screenshots/
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

## Major Implementations

### Day 3 - Digital Logic Design

Implemented:

* Logic Gates
* Multiplexers
* Combinational Calculator
* Sequential Calculator
* Counters
* Validity Logic
* Single Value Memory
* Pipelined Arithmetic Designs

Key Learning:

```text
Timing Abstraction
Pipeline Alignment
Feedback Paths
State Creation
```

---

### Day 4 - Single-Cycle RV32I Processor

Implemented:

* Program Counter
* Instruction Fetch
* Instruction Decode
* Immediate Generation
* Register File Read
* ALU (ADD / ADDI)
* Register File Write
* Branch Logic
* Program Counter Redirection

Successfully executed:

```text
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45
```

Simulation Status:

```text
PASSED
```

---

### Day 5 - Pipelined RV32I Processor

Implemented:

* Multi-Stage Pipeline
* Pipeline Registers
* Hazard Handling
* Data Forwarding
* Branch Handling
* Pipeline Verification

Key Learning:

```text
Pipeline Design
Timing Closure Concepts
Hazard Resolution
CPU Performance Improvement
```

---

## Technologies Used

* RISC-V RV32I
* TL-Verilog
* Makerchip
* Verilator
* Git
* GitHub

---

## Key Learnings

Throughout this workshop I gained practical experience in:

* Computer Architecture
* Processor Design
* RTL Development
* Pipeline Design
* Instruction Decoding
* Register File Architecture
* ALU Design
* Branch Control Logic
* Verification and Debugging

---

## Final Outcome

By the end of the workshop, a functional Pipelined RV32I Processor was implemented and verified using TL-Verilog and Makerchip.

This repository serves as both a learning journal and a processor design project demonstrating the progression from basic digital logic to a complete RISC-V CPU implementation.

---

## Author

**Devdutt Kadale**
Broad Semiconductor
National Institute of Technology (NIT) Calicut

Interested in:

* RTL Design
* Digital Design
* Computer Architecture
* RISC-V
* VLSI Front-End Design
