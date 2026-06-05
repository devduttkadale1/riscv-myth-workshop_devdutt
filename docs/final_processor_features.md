# Final Processor Features

## Overview

This document summarizes the final RISC-V processor implemented during the RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop.

The processor was developed incrementally using TL-Verilog and Makerchip, starting from basic digital logic concepts and progressing to a complete pipelined RV32I processor.

The final implementation demonstrates fundamental computer architecture concepts including instruction fetch, decode, execution, memory access, write-back, branching, hazard handling, and register bypassing.

---

# Processor Specifications

| Feature              | Description                        |
| -------------------- | ---------------------------------- |
| ISA                  | RV32I                              |
| Architecture Width   | 32-bit                             |
| HDL                  | TL-Verilog                         |
| Development Platform | Makerchip                          |
| Pipeline Style       | Pipelined Processor                |
| Register Count       | 32 General Purpose Registers       |
| Register Width       | 32-bit                             |
| Instruction Width    | 32-bit                             |
| Data Width           | 32-bit                             |
| Program Counter      | 32-bit                             |
| Memory Support       | Instruction Memory and Data Memory |

---

# Implemented Functional Blocks

## Program Counter (PC)

The Program Counter is responsible for tracking the address of the current instruction being executed.

Implemented features:

* Sequential instruction execution
* PC increment logic
* Branch target redirection
* Jump target redirection
* Pipeline-aware PC update

---

## Instruction Fetch Unit

The Instruction Fetch stage retrieves instructions from instruction memory.

Implemented features:

* Instruction memory interface
* Instruction fetch using PC
* Fetch redirection for branches
* Fetch redirection for jumps

Outputs:

* Instruction
* Current PC
* Next PC

---

## Instruction Decode Unit

The decode stage extracts information from fetched instructions.

Decoded fields:

* Opcode
* Destination Register (rd)
* Source Register 1 (rs1)
* Source Register 2 (rs2)
* funct3
* funct7
* Immediate Fields

Generated signals:

* ALU controls
* Branch controls
* Memory controls
* Register write controls

---

## Register File

A 32-register RV32I register file was implemented.

Features:

* 32 General Purpose Registers
* 32-bit Register Width
* Two Read Ports
* One Write Port
* Register x0 permanently tied to zero

Supported operations:

* Read rs1
* Read rs2
* Write rd

---

## Immediate Generator

The processor supports immediate extraction for all major RV32I instruction formats.

Implemented formats:

* I-Type
* S-Type
* B-Type
* U-Type
* J-Type

Immediate values are properly sign-extended before execution.

---

## Arithmetic Logic Unit (ALU)

The ALU performs arithmetic and logical operations required by the RV32I ISA.

Supported arithmetic operations:

* ADD
* SUB
* ADDI

Supported logical operations:

* AND
* OR
* XOR
* ANDI
* ORI
* XORI

Supported shift operations:

* SLL
* SRL
* SRA
* SLLI
* SRLI
* SRAI

Supported comparison operations:

* SLT
* SLTU
* SLTI
* SLTIU

---

## Branch Unit

The branch unit evaluates branch conditions and redirects program execution.

Supported branch instructions:

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Implemented functionality:

* Branch comparison
* Branch target calculation
* PC redirection

---

## Jump Unit

The processor supports unconditional jumps.

Implemented instructions:

* JAL
* JALR

Features:

* Return address generation
* Jump target calculation
* PC update

---

## Load Store Unit

The Load Store Unit interfaces with Data Memory.

Supported instructions:

### Load Instructions

* LW

### Store Instructions

* SW

Implemented functionality:

* Address generation
* Data memory access
* Load data forwarding to writeback stage
* Store data transfer to memory

---

## Data Memory Interface

Implemented features:

* Read Enable
* Write Enable
* Address Generation
* Write Data Path
* Read Data Path

Supported by the pipeline memory stage.

---

## Write Back Unit

The write-back stage updates the destination register with the final result.

Write-back sources:

* ALU Result
* Load Data
* PC + 4 (JAL/JALR)

Supported functionality:

* Register write enable generation
* Destination register selection
* Write-back multiplexing

---

# Pipeline Implementation

The processor uses TL-Verilog timing abstraction to implement pipelined execution.

Pipeline stages include:

1. Instruction Fetch (IF)
2. Instruction Decode (ID)
3. Register Read (RR)
4. Execute (EX)
5. Memory Access (MEM)
6. Write Back (WB)

Benefits:

* Improved throughput
* Better hardware utilization
* Simplified implementation using TL-Verilog

---

# Hazard Handling

## Data Hazards

The processor implements register bypassing (forwarding) to reduce pipeline stalls.

Implemented features:

* Source operand forwarding
* Dependency detection
* Register bypass paths

Benefits:

* Improved performance
* Reduced execution delays

---

## Control Hazards

Control hazards arising from branch instructions are handled through pipeline redirection logic.

Implemented features:

* Branch detection
* Branch target calculation
* Pipeline validity control
* Program counter redirection

---

# TL-Verilog Features Utilized

The processor makes extensive use of TL-Verilog abstractions.

Implemented concepts:

* Timing abstraction
* Pipeline staging
* Signal alignment
* Validity abstraction
* Pipeline forwarding

Benefits observed:

* Reduced RTL complexity
* Improved readability
* Easier pipeline development
* Faster debugging

---

# Verification and Validation

The processor was verified throughout the workshop using Makerchip simulations.

Verification activities included:

* Instruction execution verification
* Register value verification
* ALU operation verification
* Branch verification
* Memory access verification
* Pipeline behavior verification

Artifacts available in the repository:

* Simulation screenshots
* Waveform captures
* Execution traces
* Lab exercises

---

# Supported RV32I Instruction Categories

| Category                | Status      |
| ----------------------- | ----------- |
| Arithmetic Instructions | Implemented |
| Logical Instructions    | Implemented |
| Shift Instructions      | Implemented |
| Comparison Instructions | Implemented |
| Branch Instructions     | Implemented |
| Load Instructions       | Implemented |
| Store Instructions      | Implemented |
| Jump Instructions       | Implemented |
| Register Operations     | Implemented |
| Immediate Operations    | Implemented |

---

# Key Learning Outcomes

Through this project, the following concepts were learned and implemented:

* RISC-V ISA Fundamentals
* Application Binary Interface (ABI)
* Instruction Encoding Formats
* Register File Design
* ALU Design
* Branch Logic Design
* Memory Interfaces
* Pipeline Architecture
* Hazard Handling
* Register Bypassing
* Processor Verification
* TL-Verilog Design Methodology

---

# Conclusion

The final outcome of the RISC-V MYTH Workshop is a functional pipelined RV32I processor implemented in TL-Verilog. The project demonstrates a complete journey from digital logic fundamentals to processor architecture, providing practical exposure to RTL design, computer architecture, verification, and modern hardware design methodologies.
