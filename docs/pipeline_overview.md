# RISC-V Pipeline Overview

## Introduction

A pipeline is a technique used to improve processor performance by dividing instruction execution into multiple stages. Instead of completing one instruction before starting the next, multiple instructions are processed simultaneously at different stages.

The RISC-V processor developed during the MYTH Workshop uses pipelining concepts implemented using TL-Verilog timing abstraction.

---

## Why Pipelining?

Without pipelining:

* One instruction completes before the next begins.
* Hardware resources remain idle for significant periods.
* Lower instruction throughput.

With pipelining:

* Multiple instructions execute concurrently.
* Better hardware utilization.
* Higher throughput.

---

## Typical RISC-V Pipeline Stages

### 1. Instruction Fetch (IF)

* Fetch instruction from Instruction Memory.
* Program Counter (PC) provides instruction address.

Output:

```text
Instruction
PC
```

---

### 2. Instruction Decode (ID)

Instruction fields are extracted:

```text
Opcode
rd
rs1
rs2
funct3
funct7
Immediate
```

Control signals are generated.

---

### 3. Register Read (RR)

Source registers are read from Register File.

```text
rs1 -> Operand A
rs2 -> Operand B
```

---

### 4. Execute (EX)

ALU performs:

* Arithmetic operations
* Logical operations
* Comparisons
* Branch evaluation

Examples:

```text
ADD
SUB
AND
OR
XOR
SLT
```

---

### 5. Memory Access (MEM)

Load and Store instructions access Data Memory.

Examples:

```text
LW
SW
```

---

### 6. Write Back (WB)

Results are written into the destination register.

```text
rd <- result
```

---

## Pipeline Hazards

### Data Hazard

Occurs when an instruction requires a value not yet written back.

Example:

```assembly
ADD x5,x1,x2
SUB x6,x5,x3
```

Solution:

```text
Register Bypassing / Forwarding
```

---

### Control Hazard

Occurs due to branches and jumps.

Example:

```assembly
BEQ x1,x2,label
```

Solution:

```text
Pipeline Redirection
Pipeline Valid Logic
```

---

## Validity in TL-Verilog

TL-Verilog uses valid signals to identify meaningful instructions.

Benefits:

* Simplified control logic
* Easier branch handling
* Cleaner pipeline implementation

Example:

```tlv
$valid
$valid_taken_br
```

---

## Pipeline Timing Abstraction

Traditional RTL requires explicit pipeline registers.

TL-Verilog uses timing notation:

```tlv
>>1$signal
>>2$signal
>>3$signal
```

Advantages:

* Cleaner code
* Easier stage movement
* Faster design iteration

---

## Pipeline Features Implemented in this Workshop

The final RV32I processor supports:

* Instruction Fetch
* Instruction Decode
* Register File Read
* ALU Operations
* Branch Handling
* Register Bypass
* Load/Store Operations
* Data Memory Access
* JAL/JALR Instructions
* Pipeline Valid Logic

---

## Key Learning

The MYTH workshop demonstrated how a complete RV32I processor can be incrementally built from simple digital logic concepts into a fully functional pipelined CPU using TL-Verilog and Makerchip.
