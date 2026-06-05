# CPU Microarchitecture

## Overview

This document describes the microarchitecture of the RV32I RISC-V processor implemented during the RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop.

The processor is implemented using TL-Verilog and follows a pipelined architecture. It supports the RV32I base integer instruction set and demonstrates key computer architecture concepts including instruction fetch, decode, execution, memory access, write-back, branching, and hazard handling.

---

# High-Level Architecture

The processor consists of the following major functional blocks:

```text
                +----------------+
                | Program Counter|
                +-------+--------+
                        |
                        v
                +----------------+
                | Instruction    |
                | Memory         |
                +-------+--------+
                        |
                        v
                +----------------+
                | Instruction    |
                | Decode Unit    |
                +-------+--------+
                        |
                        v
                +----------------+
                | Register File  |
                +-------+--------+
                        |
                        v
                +----------------+
                | Immediate      |
                | Generator      |
                +-------+--------+
                        |
                        v
                +----------------+
                | ALU / Branch   |
                | Unit           |
                +-------+--------+
                        |
                        v
                +----------------+
                | Data Memory    |
                +-------+--------+
                        |
                        v
                +----------------+
                | Write Back     |
                +----------------+
```

---

# Processor Datapath

The datapath is responsible for moving instructions and data through the processor.

The general execution flow is:

1. Fetch instruction from Instruction Memory.
2. Decode instruction fields.
3. Read source operands from Register File.
4. Generate immediate values.
5. Execute ALU or branch operation.
6. Access Data Memory for load/store instructions.
7. Write results back to destination register.

---

# Program Counter (PC)

The Program Counter holds the address of the instruction currently being executed.

### Responsibilities

* Track instruction execution flow.
* Generate instruction memory addresses.
* Redirect execution on branches and jumps.

### PC Sources

The next PC can originate from:

1. Sequential execution

```text
PC + 4
```

2. Branch target

```text
Branch Target Address
```

3. Jump target

```text
JAL / JALR Target Address
```

---

# Instruction Fetch Stage

The Instruction Fetch stage retrieves instructions from Instruction Memory.

### Inputs

* Program Counter

### Outputs

* Instruction
* Current PC

### Functions

* Read instruction memory
* Supply instruction to decode stage
* Handle branch and jump redirections

---

# Instruction Decode Stage

The decode stage interprets instruction fields and generates control signals.

### Extracted Fields

* Opcode
* rd
* rs1
* rs2
* funct3
* funct7
* Immediate Fields

### Generated Control Signals

* ALU Operation
* Register Write Enable
* Memory Read Enable
* Memory Write Enable
* Branch Control
* Jump Control

---

# Register File

The Register File stores architectural state visible to software.

### Features

* 32 General Purpose Registers
* 32-bit Width
* Two Read Ports
* One Write Port

### Read Ports

```text
rs1 -> Operand A
rs2 -> Operand B
```

### Write Port

```text
rd <- Result
```

### Special Register

```text
x0 = Constant Zero
```

---

# Immediate Generator

The Immediate Generator extracts and sign-extends immediate values from instructions.

### Supported Formats

| Format | Purpose                        |
| ------ | ------------------------------ |
| I-Type | Immediate arithmetic and loads |
| S-Type | Stores                         |
| B-Type | Branches                       |
| U-Type | LUI and AUIPC                  |
| J-Type | JAL                            |

### Output

```text
32-bit Sign Extended Immediate
```

---

# Execution Unit

The Execution Unit contains the Arithmetic Logic Unit (ALU) and branch evaluation logic.

### Inputs

* Operand A
* Operand B
* Immediate Value
* ALU Control Signals

### Outputs

* ALU Result
* Branch Decision

---

# Arithmetic Logic Unit (ALU)

The ALU performs arithmetic and logical computations.

### Arithmetic Operations

* ADD
* SUB
* ADDI

### Logical Operations

* AND
* OR
* XOR

### Shift Operations

* SLL
* SRL
* SRA

### Comparison Operations

* SLT
* SLTU

---

# Branch Unit

The Branch Unit determines whether control flow should change.

### Supported Branches

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

### Functions

* Compare source operands
* Determine branch outcome
* Calculate branch target address

---

# Jump Unit

The Jump Unit handles unconditional control transfers.

### Supported Instructions

* JAL
* JALR

### Responsibilities

* Compute jump target
* Save return address
* Redirect Program Counter

---

# Load Store Unit

The Load Store Unit interfaces with Data Memory.

### Load Path

```text
Address Generation
       ↓
Data Memory Read
       ↓
Write Back
```

### Store Path

```text
Address Generation
       ↓
Data Memory Write
```

### Supported Instructions

* LW
* SW

---

# Data Memory Interface

The Data Memory Interface enables communication with external memory.

### Signals

```text
Address
Read Enable
Write Enable
Write Data
Read Data
```

### Responsibilities

* Load data retrieval
* Store data update

---

# Write Back Stage

The Write Back stage updates architectural registers.

### Write Back Sources

1. ALU Result

```text
ADD
SUB
AND
OR
...
```

2. Data Memory Output

```text
LW
```

3. Return Address

```text
JAL
JALR
```

### Destination

```text
Register File
```

---

# Pipeline Organization

The processor uses a pipelined architecture implemented using TL-Verilog timing abstraction.

### Pipeline Stages

| Stage | Function           |
| ----- | ------------------ |
| IF    | Instruction Fetch  |
| ID    | Instruction Decode |
| RR    | Register Read      |
| EX    | Execute            |
| MEM   | Memory Access      |
| WB    | Write Back         |

---

# Register Bypassing

To reduce pipeline stalls, the processor implements forwarding logic.

### Problem

```assembly
ADD x5,x1,x2
SUB x6,x5,x3
```

The second instruction depends on a value not yet written back.

### Solution

Forward result directly from later pipeline stages.

### Benefits

* Reduced stalls
* Improved throughput
* Better performance

---

# Hazard Handling

## Data Hazards

Handled using:

* Register Bypass Logic
* Forwarding Paths

---

## Control Hazards

Handled using:

* Branch Detection
* Pipeline Redirection
* Valid Signal Propagation

---

# TL-Verilog Microarchitecture Features

The processor leverages several TL-Verilog abstractions.

### Timing Abstraction

Signals can move between stages without manually inserting registers.

Example:

```tlv
>>1$signal
>>2$signal
```

### Validity Abstraction

Used to track meaningful instructions throughout the pipeline.

Benefits:

* Cleaner control logic
* Easier branch handling
* Simplified hazard management

---

# Microarchitectural Highlights

The final processor includes:

* RV32I Instruction Support
* 32-bit Datapath
* Pipelined Execution
* Register Bypass Logic
* Branch Handling
* Load/Store Support
* JAL and JALR Support
* Instruction and Data Memory Interfaces
* TL-Verilog Timing Abstraction

---

# Conclusion

The processor microarchitecture developed during the MYTH Workshop demonstrates the complete flow of instruction execution in a modern RISC-V CPU. By combining pipelining, forwarding, branch handling, and memory access mechanisms, the design provides practical insight into processor implementation and computer architecture principles while leveraging TL-Verilog's timing abstraction to simplify development.
