# Day 2 Notes

## Application Binary Interface (ABI)

ABI (Application Binary Interface) is the interface between software and hardware. It defines how application programs interact with the operating system and processor architecture.

ABI specifies:

- Register usage
- Function calling conventions
- Return value conventions
- Memory addressing
- Data representation

The compiler follows ABI rules to generate machine code that can execute correctly on the processor.

---

## XLEN

XLEN represents the register width of the processor.

- RV32 → XLEN = 32 bits
- RV64 → XLEN = 64 bits

In RV64 architecture, all general-purpose registers are 64-bit wide.

---

## RISC-V Registers

RISC-V contains 32 general-purpose registers:

x0 – x31

Important ABI names:

| Register | ABI Name | Purpose |
|-----------|-----------|----------|
| x0 | zero | Constant zero |
| x1 | ra | Return address |
| x2 | sp | Stack pointer |
| x5-x7 | t0-t2 | Temporary registers |
| x8 | s0/fp | Saved register |
| x9 | s1 | Saved register |
| x10-x17 | a0-a7 | Function arguments |
| x18-x27 | s2-s11 | Saved registers |
| x28-x31 | t3-t6 | Temporary registers |

---

## Little Endian Memory

RISC-V follows little-endian memory addressing.

Least Significant Byte (LSB) is stored at the lowest memory address.

Example:

64-bit value:

0xBD8C584C491F72B2

Memory arrangement:

B2 → Lowest Address
72
1F
49
4C
58
8C
BD → Highest Address

---

## Double Word Memory Allocation

RV64 uses:

- Byte = 8 bits
- Halfword = 16 bits
- Word = 32 bits
- Doubleword = 64 bits

One doubleword occupies 8 bytes in memory.

Memory addresses:

M[0]
M[8]
M[16]
M[24]

Each location stores one doubleword.

---

## Load Instruction

Example:

ld x8, 16(x23)

Meaning:

x8 = Memory[x23 + 16]

Components:

- ld → load doubleword
- x8 → destination register
- x23 → source/base register
- 16 → offset

Instruction Type:

I-Type

---

## Add Instruction

Example:

add x8, x24, x8

Meaning:

x8 = x24 + x8

Components:

- x8 → destination register
- x24 → source register 1
- x8 → source register 2

Instruction Type:

R-Type

---

## Store Instruction

Example:

sd x8, 8(x23)

Meaning:

Memory[x23 + 8] = x8

Components:

- x8 → source data register
- x23 → base register
- 8 → offset

Instruction Type:

S-Type

---

## Function Call Convention

Arguments:

a0 → First argument

a1 → Second argument

a2 → Third argument

...

a7 → Eighth argument

Return Value:

a0

Function Return Address:

ra