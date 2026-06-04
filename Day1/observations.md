# Day 1 Observations

## Most Important Learning

Day 1 is not merely about number systems.

The major takeaway is understanding:

```text
Software
     ↓
Compiler
     ↓
ISA
     ↓
RTL
     ↓
Hardware
```

Everything studied in later CPU design ultimately originates from this flow.

---

## Observation 1: ISA is an Abstraction

The ISA acts as a contract between software and hardware.

A programmer writes:

```c
a = b + c;
```

Compiler generates:

```assembly
add x5,x6,x7
```

Hardware only understands the binary encoding of this instruction.

---

## Observation 2: Hardware Sees Bits

Humans see:

```text
+2
-2
```

Hardware sees:

```text
00000010
11111110
```

Number interpretation depends entirely on ISA rules.

---

## Observation 3: Signed Numbers Use Two's Complement

Reasons:

* Simple arithmetic hardware
* Efficient subtraction
* Single adder can perform add/subtract

This is why almost all modern CPUs use two's complement.

---

## Observation 4: RV64 Means 64-bit Datapath

A doubleword contains:

```text
64 bits
```

Allowing:

```text
2^64 patterns
```

This directly impacts:

* Register width
* ALU width
* Memory transfers

---

## Observation 5: Extensions Add Capabilities

RV64I:

```text
Base CPU
```

RV64M:

```text
Multiplication and Division
```

RV64F/D:

```text
Floating Point Operations
```

Extensions allow modular processor design.

---

## Observation 6: ABI is Critical

The compiler and processor must agree on:

* Which registers store arguments
* Which registers store return values
* Stack usage

Without ABI, compiled programs would not execute correctly.

---

## Observation 7: Compiler Output Can Be Inspected

A C program can be transformed into:

```text
C Source
     ↓
Assembly
     ↓
Machine Code
```

This makes processor behavior observable and debuggable.

---

## Observation 8: RTL Designers Work Below ISA

Software Engineer:

```text
Works with C
```

RTL Engineer:

```text
Implements ISA in hardware
```

The processor core must decode instructions and generate correct datapath operations.

---

## Observation 9: Physical Hardware Is the Final Result

The path studied in Day 1:

```text
C Program
     ↓
Assembly
     ↓
ISA
     ↓
RTL
     ↓
Netlist
     ↓
Layout
     ↓
Silicon Chip
```

is the complete semiconductor design flow at a high level.

---

## Key Takeaway for RTL Design

Day 1 establishes the architectural foundation required for:

* Instruction Decode
* Register Files
* ALU Design
* Pipeline Design
* CPU Microarchitecture

The concepts learned here directly connect to Day 4 and Day 5 where the RISC-V processor is implemented using TL-Verilog.