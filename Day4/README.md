# Day 4 - Building a Single-Cycle RV32I Processor

## Overview

Day 4 focused on implementing the core microarchitecture of a RISC-V RV32I processor using TL-Verilog and Makerchip.

The objective was to transform the digital design concepts learned in Day 3 into a functioning processor capable of fetching, decoding, executing, and writing back instructions.

By the end of Day 4, a complete single-cycle RV32I processor was capable of executing arithmetic instructions and control-flow instructions while successfully running a summation program.

---

## Workshop Progress

| Day   | Topic                                        | Status      |
| ----- | -------------------------------------------- | ----------- |
| Day 1 | Introduction to RISC-V ISA and GNU Toolchain | ⏳ Pending   |
| Day 2 | ABI and Verification Flow                    | ⏳ Pending   |
| Day 3 | Digital Logic with TL-Verilog and Makerchip  | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture           | ✅ Completed |
| Day 5 | Pipelined RISC-V CPU Microarchitecture       | 🚧 Upcoming |

---

## CPU Datapath Implemented

The processor datapath built during Day 4 consists of:

```text
Program Counter
      │
      ▼
Instruction Memory
      │
      ▼
Instruction Decode
      │
      ▼
Register File Read
      │
      ▼
ALU Execute
      │
      ▼
Register File Write
```

Additional control logic:

```text
Branch Comparator
      │
      ▼
Branch Target Generation
      │
      ▼
Program Counter Redirection
```

---

## Features Implemented

### Instruction Fetch

Implemented:

* Program Counter (PC)
* PC Reset Logic
* PC Increment Logic
* Instruction Memory Interface

Instruction fetch performed using:

```tlv
$imem_rd_addr = $pc[M4_IMEM_INDEX_CNT+1:2];
```

---

### Instruction Decode

Decoded instruction fields:

```text
opcode
rd
rs1
rs2
funct3
funct7
```

Implemented instruction recognition for:

#### Arithmetic Instructions

* ADD
* ADDI

#### Branch Instructions

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

---

### Immediate Generation

Implemented immediate extraction and sign extension for I-type instructions.

Example:

```tlv
$imm[31:0] =
   {{21{$instr[31]}}, $instr[30:20]};
```

---

### Register File Read

Implemented:

* Read Port 1
* Read Port 2

Generated:

```text
src1_value
src2_value
```

for ALU execution.

---

### Arithmetic Logic Unit (ALU)

Implemented:

#### ADD

```text
result = src1 + src2
```

#### ADDI

```text
result = src1 + imm
```

The ALU generates the final computation result used for writeback.

---

### Register File Write

Implemented:

* Write Enable
* Write Address
* Write Data

Special handling added for:

```text
x0 register
```

Writes to x0 are ignored as required by the RISC-V specification.

---

### Branch Logic

Implemented:

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Generated:

```text
taken_br
```

which determines whether branch redirection occurs.

---

### Branch Target Generation

Branch target address calculated as:

```text
PC + Immediate
```

Generated signal:

```text
br_tgt_pc
```

Used to redirect execution flow when branch conditions are satisfied.

---

### Program Counter Redirection

Implemented logic to select:

```text
PC + 4
```

for normal execution

or

```text
Branch Target PC
```

for taken branches.

This enables loop execution and control-flow changes.

---

## Test Program

The implemented processor executes the following summation program:

```text
sum = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9
```

Registers used:

```text
x10 (a0) : Final Result
x12 (a2) : Loop Limit
x13 (a3) : Counter
x14 (a4) : Accumulator
```

Expected result:

```text
45
```

---

## Verification

A testbench was implemented to verify processor correctness.

Pass condition:

```tlv
|cpu/xreg[10]>>5$value == 45
```

Simulation Result:

```text
Simulation PASSED!!!
```

This confirms correct operation of:

* Fetch
* Decode
* Register Read
* ALU
* Register Write
* Branch Logic
* PC Redirection

---

## Labs Completed

### Instruction Decode

Implemented:

* Opcode Extraction
* Register Extraction
* Instruction Identification

---

### Register File Read

Implemented:

* rs1 Read Path
* rs2 Read Path

---

### ALU

Implemented:

* ADD
* ADDI

---

### Register File Write

Implemented:

* Destination Register Writeback
* x0 Protection

---

### Branch Logic

Implemented:

* Branch Comparators
* Branch Decision Logic

---

### Branch Target Generation

Implemented:

* PC + Immediate Computation
* Branch Redirection

---

### Testbench

Implemented:

* Functional Verification
* Automatic Pass Detection

---

## Repository Structure

```text
Day4/
│
├── README.md
├── notes.md
├── observations.md
│
├── code/
│   ├── riscv_intro.tlv
│   ├── riscv_pc_reset.tlv
│   ├── riscv_fetch_instr.tlv
│   ├── riscv_decode_instr_type.tlv
│   ├── riscv_decode_i_instr_type.tlv
│   ├── riscv_decode_instr_format_R_type.tlv
│   ├── riscv_decode_instr_valid_rs2_condition.tlv
│   ├── riscv_decode_instr_complete_cycle.tlv
│   ├── riscv_register_file_read1.tlv
│   ├── riscv_register_file_read2.tlv
│   ├── riscv_ALU.tlv
│   ├── riscv_register_file_write.tlv
│   ├── riscv_register_file_branch1.tlv
│   ├── riscv_register_file_branch2.tlv
│   └── riscv_testbench.tlv
│
└── screenshots/
```

---

## Key Learnings

* How instructions are fetched from memory.
* How instruction decoding generates processor control signals.
* How register files support simultaneous reads and writes.
* How ALUs perform arithmetic operations.
* How branch instructions modify control flow.
* How program counters are redirected during branch execution.
* How a complete processor is verified using simulation.

---

## Day 4 Summary

Day 4 marked the transition from generic digital design concepts to actual processor implementation.

A functional RV32I processor was built capable of:

* Fetching Instructions
* Decoding Instructions
* Reading Registers
* Executing Arithmetic Operations
* Writing Results Back
* Executing Branches
* Running Complete Programs

This forms the foundation for Day 5, where the processor will be transformed into a pipelined RISC-V CPU.
