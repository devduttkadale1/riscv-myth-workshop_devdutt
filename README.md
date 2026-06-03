# RISC-V MYTH Workshop

A complete implementation journey through the RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop using TL-Verilog and Makerchip.

This repository documents the development of digital logic components, a Single-Cycle RV32I Processor, and a complete Pipelined RV32I Processor, built incrementally through hands-on labs and verified using simulation waveforms.

---

## Project Overview

The RISC-V MYTH Workshop introduces processor design from first principles using TL-Verilog and Makerchip.

This repository demonstrates the progression from:

```text
Digital Logic
      ↓
Sequential Logic
      ↓
CPU Datapath
      ↓
Single-Cycle RV32I Processor
      ↓
Pipelined RV32I Processor
```

All source code, notes, observations, screenshots, and verification results are included.

---

## Technologies Used

* RISC-V RV32I ISA
* TL-Verilog
* Makerchip
* Verilator
* Git
* GitHub

---

## Workshop Progress

| Day   | Topic                                                 | Status      |
| ----- | ----------------------------------------------------- | ----------- |
| Day 1 | Introduction to RISC-V ISA and GNU Compiler Toolchain | ✅ Completed |
| Day 2 | Introduction to ABI and Basic Verification Flow       | ✅ Completed |
| Day 3 | Digital Logic with TL-Verilog and Makerchip           | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture                    | ✅ Completed |
| Day 5 | Complete Pipelined RV32I CPU Microarchitecture        | ✅ Completed |

---

## Repository Structure

```text
riscv-myth-workshop_devdutt/
│
├── Day1/
├── Day2/
├── Day3/
├── Day4/
├── Day5/
│
├── README.md
└── LICENSE
```

Each day contains:

```text
README.md
notes.md
observations.md
code/
screenshots/
```

---

## Major Implementations

### Day 3 – Digital Logic Design

Implemented:

* Logic Gates
* Multiplexers
* Combinational Calculator
* Sequential Calculator
* Counters
* Validity Logic
* Single Value Memory
* Pipelined Arithmetic Circuits

Key Concepts Learned:

* Timing Abstraction
* State Creation
* Pipeline Alignment
* Sequential Logic
* Feedback Paths

---

### Day 4 – Single-Cycle RV32I Processor

Implemented:

* Program Counter
* Instruction Fetch
* Instruction Decode
* Immediate Generation
* Register File Read
* ALU
* Register File Writeback
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

### Day 5 – Complete Pipelined RV32I Processor

Implemented:

#### Pipeline Infrastructure

* Pipeline Valid Logic
* Multi-Cycle Timing
* Register File Bypass
* Data Forwarding

#### Instruction Support

Arithmetic Instructions:

```text
ADD
SUB
ADDI
```

Logical Instructions:

```text
AND
OR
XOR
ANDI
ORI
XORI
```

Shift Instructions:

```text
SLL
SRL
SRA
SLLI
SRLI
SRAI
```

Comparison Instructions:

```text
SLT
SLTU
SLTI
SLTIU
```

Branch Instructions:

```text
BEQ
BNE
BLT
BGE
BLTU
BGEU
```

Memory Instructions:

```text
LW
SW
```

Jump Instructions:

```text
JAL
JALR
```

#### Additional Features

* Branch Redirection
* Load Redirection
* Data Memory Interface
* Pipeline Hazard Handling
* Register Forwarding

Simulation Status:

```text
PASSED
```

---

## Final Processor Features

The final processor supports:

* Instruction Fetch
* Instruction Decode
* Register File Access
* Immediate Generation
* Arithmetic Operations
* Logical Operations
* Branch Operations
* Memory Access
* Jump Operations
* Pipeline Control
* Hazard Resolution

---

## Key Learnings

Throughout this workshop, practical experience was gained in:

* Computer Architecture
* RTL Design
* Processor Microarchitecture
* Pipeline Design
* Hazard Resolution
* Register File Design
* Instruction Decoding
* ALU Design
* Branch Handling
* Memory Interfaces
* Verification and Debugging

---

## Final Outcome

A functional Pipelined RV32I Processor was successfully implemented and verified using TL-Verilog and Makerchip.

This repository serves as both:

* A complete learning journal of the RISC-V MYTH Workshop
* A processor design project demonstrating the evolution from digital logic design to a complete pipelined CPU

---

## Author

**Devdutt Kadale**

Broad Semiconductor
National Institute of Technology Calicut (NIT Calicut)

Areas of Interest:

* RTL Design
* Digital Design
* Computer Architecture
* RISC-V
* VLSI Front-End Design
* Processor Microarchitecture
