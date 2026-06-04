# RISC-V Basic Keywords

## Overview

This document summarizes the fundamental RISC-V terminology introduced during Day 1 of the RISC-V MYTH Workshop.

Understanding these keywords is essential before studying processor microarchitecture, pipelining, and RTL implementation.

---

# RISC-V

RISC-V is an open-standard Instruction Set Architecture (ISA).

It defines:

* Instructions
* Registers
* Data Types
* Memory Access Rules
* Processor Behavior

Unlike proprietary architectures, RISC-V is open-source and extensible.

---

# ISA (Instruction Set Architecture)

ISA is the interface between software and hardware.

It specifies:

* Supported instructions
* Register organization
* Memory model
* Instruction encoding

### Relationship

```text
Software
    ↓
ISA
    ↓
Hardware
```

### Screenshot

![ISA](screenshots/isa.png)

---

# RISC

RISC stands for:

```text
Reduced Instruction Set Computer
```

Characteristics:

* Simple instructions
* Fixed instruction formats
* Load-store architecture
* Easier pipelining
* Efficient hardware implementation

---

# RV64

RV64 represents:

```text
RISC-V 64-bit Architecture
```

Features:

* 64-bit registers
* 64-bit ALU operations
* 64-bit addressable data paths

Data unit:

```text
Doubleword = 64 bits
```

---

# Byte

A Byte contains:

```text
8 bits
```

Example:

```text
10101010
```

---

# Word

A Word contains:

```text
32 bits
```

Example:

```text
4 Bytes
```

---

# Doubleword

A Doubleword contains:

```text
64 bits
```

Equivalent to:

```text
8 Bytes
```

Used extensively in RV64 processors.

### Screenshot

![Doubleword](screenshots/number_sys_unsigned_nos_identification.png)

---

# MSB (Most Significant Bit)

The leftmost bit in a binary number.

In RV64:

```text
Bit 63
```

Used as:

* Sign bit for signed numbers

### Screenshot

![MSB](screenshots/number_sys_signed_MSB_representation.png)

---

# LSB (Least Significant Bit)

The rightmost bit in a binary number.

In RV64:

```text
Bit 0
```

Represents the smallest value.

---

# Signed Numbers

Numbers capable of representing:

```text
Positive values
Negative values
```

RISC-V uses:

```text
Two's Complement Representation
```

---

# Unsigned Numbers

Numbers representing only positive values.

Range:

```text
0 to (2^N -1)
```

For RV64:

```text
0 to (2^64 -1)
```

---

# Two's Complement

Method used to represent negative numbers.

Conversion:

```text
Invert Bits
+
Add 1
```

Advantages:

* Simple hardware implementation
* Efficient subtraction
* Single adder for add/sub operations

### Screenshot

![Two's Complement](screenshots/number_sys_signed_representation.png)

---

# Register

A small storage element inside the processor.

Used to store:

* Data
* Addresses
* Intermediate results

RV64 contains:

```text
32 General Purpose Registers
```

Named:

```text
x0 to x31
```

---

# Register File

Collection of all processor registers.

Functions:

* Read source operands
* Store computation results

Used by:

* ALU
* Control Unit
* Instruction Decoder

---

# ABI (Application Binary Interface)

Defines:

* Register usage
* Function call conventions
* Parameter passing
* Return values

Ensures compatibility between:

* Compiler
* Operating System
* Hardware

### Screenshot

![ABI](screenshots/abi.png)

---

# Stack Pointer (sp)

Register:

```text
x2
```

Alias:

```text
sp
```

Used for:

* Local variables
* Function calls
* Return addresses
* Temporary storage

### Screenshot

![Stack Pointer](screenshots/stack_pointer.png)

---

# Instruction

A command executed by the processor.

Example:

```assembly
add x5,x6,x7
```

Operations include:

* Arithmetic
* Logical
* Memory Access
* Control Flow

---

# Base Integer Instructions (RV64I)

Fundamental instruction set of RISC-V.

Examples:

```assembly
add
sub
addi
lui
ld
sd
jalr
```

### Screenshot

![RV64I](screenshots/base_integer_instr.png)

---

# RV64M Extension

Adds:

```assembly
mul
div
```

Used for:

* Integer multiplication
* Integer division

### Screenshot

![RV64M](screenshots/multiply_extension_instr.png)

---

# RV64F Extension

Single Precision Floating Point Extension.

Examples:

```assembly
fadd.s
fmul.s
fdiv.s
```

---

# RV64D Extension

Double Precision Floating Point Extension.

Examples:

```assembly
fadd.d
fmul.d
fdiv.d
```

### Screenshot

![Floating Point](screenshots/floating_point_instrn.png)

---

# Pseudo Instructions

Instructions provided for programming convenience.

Examples:

```assembly
mv
li
ret
```

Assembler converts them into actual machine instructions.

### Screenshot

![Pseudo Instructions](screenshots/isa_pseudo_inst.png)

---

# Compiler

Converts:

```text
C Program
```

into:

```text
Assembly Language
```

The compiler understands program structure and generates processor instructions.

---

# Assembler

Converts:

```text
Assembly Code
```

into:

```text
Machine Code
```

Machine code is directly executable by hardware.

---

# RTL (Register Transfer Level)

Hardware description level used by digital designers.

Examples:

* Verilog
* SystemVerilog
* TL-Verilog

RTL implements the ISA functionality in hardware.

### Screenshot

![RTL Flow](screenshots/rtl_integration.png)

---

# Key Takeaways

* ISA is the contract between software and hardware.
* RV64 is a 64-bit RISC-V architecture.
* Registers are the primary storage elements inside a processor.
* ABI standardizes software-hardware interaction.
* RV64I, RV64M, RV64F, and RV64D provide different processor capabilities.
* RTL designers implement ISA behavior using hardware description languages.