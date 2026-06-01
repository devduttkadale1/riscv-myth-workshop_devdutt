# Day 4 Code Files

This directory contains the TL-Verilog source files developed during Day 4 of the RISC-V MYTH Workshop.

The files are organized according to the progression of CPU development, starting from Program Counter implementation and ending with a fully functional Single-Cycle RV32I Processor.

---

## Development Flow

```text
Program Counter
      ↓
Instruction Fetch
      ↓
Instruction Decode
      ↓
Immediate Generation
      ↓
Register File Read
      ↓
ALU
      ↓
Register File Write
      ↓
Branch Logic
      ↓
CPU Verification
```

---

## File Descriptions

### riscv_intro.tlv

Introduction file used to understand the overall structure of the RISC-V CPU and Makerchip environment.

Topics:

* CPU hierarchy
* Instruction memory
* Register file
* Visualization framework

---

### riscv_pc_reset.tlv

Implemented Program Counter initialization and reset logic.

Features:

* PC reset to zero
* Sequential PC increment

Key Concepts:

* Program Counter
* Feedback path
* Sequential logic

---

### riscv_fetch_instr.tlv

Implemented instruction fetch mechanism.

Features:

* Instruction memory enable
* Instruction memory address generation
* Instruction fetch

Key Concepts:

* Instruction Memory
* PC addressing
* Instruction retrieval

---

### riscv_decode_instr_type.tlv

Implemented instruction type detection.

Instruction Types:

* R-Type
* I-Type
* S-Type
* B-Type
* U-Type
* J-Type

Key Concepts:

* Opcode decoding
* Instruction classification

---

### riscv_decode_i_instr_type.tlv

Implemented immediate generation for I-Type instructions.

Features:

* Immediate extraction
* Sign extension

Key Concepts:

* Immediate decoding
* Signed arithmetic

---

### riscv_decode_instr_format_R_type.tlv

Implemented extraction of instruction fields.

Decoded Fields:

* opcode
* rd
* rs1
* rs2
* funct3
* funct7

Key Concepts:

* Instruction format
* Bit-field extraction

---

### riscv_decode_instr_valid_rs2_condition.tlv

Implemented rs2 validity logic.

Features:

* Detect instructions requiring rs2
* Prevent invalid register reads

Key Concepts:

* Instruction-dependent operand selection
* Control logic

---

### riscv_decode_instr_complete_cycle.tlv

Implemented complete instruction decode.

Supported Instructions:

* ADD
* ADDI
* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Key Concepts:

* Decode logic
* Control signal generation

---

### riscv_register_file_read1.tlv

Implemented Register File Read - Part 1.

Features:

* Read Enable Generation
* Read Address Generation

Signals:

* rf_rd_en1
* rf_rd_en2
* rf_rd_index1
* rf_rd_index2

---

### riscv_register_file_read2.tlv

Implemented Register File Read - Part 2.

Features:

* Source Operand Extraction

Signals:

* src1_value
* src2_value

Key Concepts:

* Register access
* Operand preparation

---

### riscv_ALU.tlv

Implemented Arithmetic Logic Unit (ALU).

Supported Instructions:

#### ADD

```text
result = src1 + src2
```

#### ADDI

```text
result = src1 + immediate
```

Key Concepts:

* Arithmetic execution
* Operand selection

---

### riscv_register_file_write.tlv

Implemented register writeback stage.

Features:

* Write Enable
* Write Address
* Write Data

Special Handling:

```text
x0 register cannot be modified
```

Key Concepts:

* Writeback stage
* Architectural constraints

---

### riscv_register_file_branch1.tlv

Implemented branch comparison logic.

Supported Instructions:

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Generated Signal:

```text
taken_br
```

Key Concepts:

* Branch decision logic
* Control flow

---

### riscv_register_file_branch2.tlv

Implemented branch target generation and PC redirection.

Features:

* Branch target address generation
* Program Counter update
* Loop execution support

Generated Signal:

```text
br_tgt_pc
```

Key Concepts:

* Control-flow execution
* Branch handling

---

### riscv_single_cycle_cpu_final.tlv

Final integrated Single-Cycle RV32I Processor.

Features:

* Program Counter
* Instruction Fetch
* Instruction Decode
* Immediate Generation
* Register File Read
* ALU
* Register File Write
* Branch Logic
* PC Redirection
* Verification Support

Status:

```text
PASSED
```

This file represents the completed Day 4 processor implementation.

---

## Final Verification

The processor successfully executes the workshop summation program:

```text
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45
```

Final Result:

```text
x10 = 45
```

Simulation Status:

```text
PASSED
```

---

## Key Learnings

* Program Counter design
* Instruction fetch architecture
* Instruction decoding
* Register file operation
* ALU implementation
* Register writeback
* Branch execution
* CPU verification

These concepts form the foundation for Day 5, where the processor will be transformed into a pipelined RV32I CPU.
