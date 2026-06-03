# Day 5 Notes

## Complete Pipelined RISC-V CPU Microarchitecture

Day 5 focused on transforming the Single-Cycle RV32I Processor into a Pipelined RV32I Processor.

The processor was enhanced incrementally by implementing:

* Pipeline Valid Logic
* Pipeline Timing
* Register File Bypass
* Branch Redirection
* Complete Instruction Decode
* Complete ALU
* Load Instructions
* Store Instructions
* Data Memory Interface
* Jump Instructions (JAL / JALR)

---

## Pipeline Valid Logic

Pipeline validity was introduced to track whether an instruction in a pipeline stage is meaningful.

Example:

```tlv
$valid =
   $reset ? 1'b0 :
   $start ? 1'b1 :
   !(>>1$valid_taken_br ||
     >>2$valid_taken_br);
```

Valid bits prevent invalid instructions from affecting processor state.

---

## Pipeline Timing

TL-Verilog timing abstraction allows signals to be moved across pipeline stages.

Example:

```tlv
>>1$signal
>>2$signal
>>3$signal
```

This eliminates the need for explicit pipeline register declarations.

---

## Register File Bypass

Register bypassing was implemented to resolve data hazards.

Example:

```tlv
$src1_value =
   ((>>1$rf_wr_en) &&
    (>>1$rf_wr_index == $rs1))
   ? >>1$result
   : $rf_rd_data1;
```

This allows recently computed values to be forwarded directly to dependent instructions.

---

## Branch Redirection

Branch instructions were extended to support pipeline operation.

Generated signals:

```tlv
$taken_br
$valid_taken_br
$br_tgt_pc
```

Branch targets redirect the Program Counter when branch conditions evaluate true.

---

## Complete Instruction Decode

Instruction decode was expanded to support:

### Arithmetic Instructions

```text
ADD
SUB
ADDI
```

### Logical Instructions

```text
AND
OR
XOR
ANDI
ORI
XORI
```

### Shift Instructions

```text
SLL
SRL
SRA
SLLI
SRLI
SRAI
```

### Comparison Instructions

```text
SLT
SLTU
SLTI
SLTIU
```

### Branch Instructions

```text
BEQ
BNE
BLT
BGE
BLTU
BGEU
```

### Memory Instructions

```text
LW
SW
```

### Jump Instructions

```text
JAL
JALR
```

---

## Complete ALU

The ALU was extended to support the complete RV32I arithmetic and logical instruction set.

Example:

```tlv
$is_add ? ($src1_value + $src2_value)
```

```tlv
$is_and ? ($src1_value & $src2_value)
```

```tlv
$is_or ? ($src1_value | $src2_value)
```

```tlv
$is_xor ? ($src1_value ^ $src2_value)
```

---

## Load Instructions

Load instructions retrieve data from Data Memory.

Address generation:

```tlv
$ld_st_addr = $src1_value + $imm;
```

Memory read enable:

```tlv
$dmem_rd_en = $valid && $is_load;
```

Load data is written back into the Register File.

---

## Store Instructions

Store instructions write register values into Data Memory.

Memory write enable:

```tlv
$dmem_wr_en = $valid && $is_store;
```

Write data:

```tlv
$dmem_wr_data = $src2_value;
```

---

## Data Memory Interface

The processor communicates with Data Memory using:

```tlv
$dmem_addr
$dmem_rd_en
$dmem_wr_en
$dmem_wr_data
```

These signals enable memory access operations.

---

## Load Redirection

Pipeline validity was extended to handle memory operations.

Example:

```tlv
$valid_load
```

Load instructions require additional cycles before data becomes available.

Pipeline control prevents invalid execution during this period.

---

## Jump Instructions

Implemented:

### JAL

```text
Jump And Link
```

Stores:

```text
PC + 4
```

into the destination register.

### JALR

```text
Jump And Link Register
```

Computes target:

```tlv
$src1_value + $imm
```

and redirects execution.

---

## Final Verification

The processor successfully executes:

* Arithmetic Instructions
* Logical Instructions
* Branch Instructions
* Load Instructions
* Store Instructions
* Jump Instructions

Simulation Status:

```text
PASSED
```

Day 5 completed the development of a functional Pipelined RV32I Processor using TL-Verilog and Makerchip.
