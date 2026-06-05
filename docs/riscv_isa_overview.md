Hi# RISC-V ISA Overview

## What is an ISA?

ISA (Instruction Set Architecture) defines the interface between hardware and software.

It specifies:

* Instructions
* Registers
* Memory model
* Data formats
* Privilege architecture

Programs compiled for an ISA can run on any processor implementing that ISA.

---

## What is RISC-V?

RISC-V is an open-standard Reduced Instruction Set Computer (RISC) architecture developed at the University of California, Berkeley.

Key advantages:

* Open Source
* Modular
* Scalable
* Industry Adoption
* Academic Friendly

---

## RV32I Base Integer ISA

The MYTH workshop processor implements RV32I.

Where:

```text
RV = RISC-V
32 = 32-bit architecture
I = Base Integer Instruction Set
```

---

## Register Architecture

RV32I contains 32 general-purpose registers.

### Important Registers

| Register | ABI Name | Purpose            |
| -------- | -------- | ------------------ |
| x0       | zero     | Constant 0         |
| x1       | ra       | Return Address     |
| x2       | sp       | Stack Pointer      |
| x5-x7    | t0-t2    | Temporaries        |
| x8-x9    | s0-s1    | Saved Registers    |
| x10-x17  | a0-a7    | Function Arguments |
| x18-x27  | s2-s11   | Saved Registers    |
| x28-x31  | t3-t6    | Temporaries        |

---

## Instruction Formats

### R-Type

Used for register-register operations.

Examples:

```assembly
ADD
SUB
AND
OR
XOR
```

Fields:

```text
funct7 rs2 rs1 funct3 rd opcode
```

---

### I-Type

Used for immediate operations and loads.

Examples:

```assembly
ADDI
LW
JALR
```

---

### S-Type

Used for stores.

Examples:

```assembly
SW
```

---

### B-Type

Used for branches.

Examples:

```assembly
BEQ
BNE
BLT
BGE
```

---

### U-Type

Used for upper immediate instructions.

Examples:

```assembly
LUI
AUIPC
```

---

### J-Type

Used for jumps.

Examples:

```assembly
JAL
```

---

## Arithmetic Instructions

Examples:

```assembly
ADD
SUB
ADDI
```

Used for integer arithmetic.

---

## Logical Instructions

Examples:

```assembly
AND
OR
XOR
ANDI
ORI
XORI
```

---

## Shift Instructions

Examples:

```assembly
SLL
SRL
SRA
SLLI
SRLI
SRAI
```

---

## Comparison Instructions

Examples:

```assembly
SLT
SLTU
SLTI
SLTIU
```

---

## Branch Instructions

Examples:

```assembly
BEQ
BNE
BLT
BGE
BLTU
BGEU
```

Control program flow based on comparison results.

---

## Memory Instructions

### Load

```assembly
LW
```

Reads data from memory.

### Store

```assembly
SW
```

Writes data to memory.

---

## Jump Instructions

### JAL

```assembly
JAL
```

Jump and store return address.

### JALR

```assembly
JALR
```

Jump using register-based target address.

---

## Program Counter

The Program Counter (PC) stores the address of the current instruction.

For RV32I:

```text
PC = PC + 4
```

for sequential execution.

Branches and jumps modify the PC.

---

## Workshop Implementation Coverage

The final processor implemented during the workshop supports:

* Arithmetic Instructions
* Logical Instructions
* Shift Instructions
* Comparison Instructions
* Branch Instructions
* Load Instructions
* Store Instructions
* JAL
* JALR

This forms a functional subset of the RV32I ISA.
