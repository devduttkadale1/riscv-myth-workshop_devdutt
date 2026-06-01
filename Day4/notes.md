# Day 4 Notes

## Basic RISC-V CPU Microarchitecture

Day 4 focused on building the core components of a simple RV32I processor.

Unlike Day 3, which concentrated on generic digital design concepts, Day 4 integrated those concepts into an actual CPU datapath.

The processor was developed incrementally by implementing:

* Instruction Fetch
* Instruction Decode
* Register File Read
* ALU
* Register File Write
* Branch Logic
* Program Counter Control

---

## Instruction Fetch

Instructions are fetched from Instruction Memory using the Program Counter (PC).

Example:

```tlv
$imem_rd_addr = $pc[M4_IMEM_INDEX_CNT+1:2];
```

The Program Counter increments by 4 bytes because RV32I instructions are 32 bits wide.

```tlv
$pc = >>1$pc + 32'd4;
```

---

## Instruction Decode

Instruction fields extracted:

```tlv
$opcode[6:0]
$rd[4:0]
$rs1[4:0]
$rs2[4:0]
$funct3[2:0]
$funct7[6:0]
```

These fields determine the instruction type and operation.

---

## Immediate Generation

Implemented Immediate extraction for I-type instructions.

Example:

```tlv
$imm[31:0] =
   {{21{$instr[31]}}, $instr[30:20]};
```

Sign extension is required to preserve signed values.

---

## Register File Read

Source registers:

```tlv
$rs1
$rs2
```

are used as addresses into the Register File.

Outputs:

```tlv
$src1_value
$src2_value
```

contain operand values used by the ALU.

---

## ALU

Implemented:

### ADD

```tlv
$src1_value + $src2_value
```

### ADDI

```tlv
$src1_value + $imm
```

Both operations use the same arithmetic datapath.

---

## Register File Write

Results are written back into the destination register.

Signals:

```tlv
$rf_wr_en
$rf_wr_index
$rf_wr_data
```

Special handling:

```tlv
$rd != 5'b0
```

prevents writes to x0.

---

## Branch Logic

Implemented branch instructions:

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

Generated:

```tlv
$taken_br
```

which indicates whether a branch should be taken.

---

## Branch Target PC

Branch destination:

```tlv
$br_tgt_pc = $pc + $imm;
```

When branch conditions are satisfied, PC redirects to this address.

---

## Testbench

The processor executes a loop that computes:

```text
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9
```

Expected result:

```text
45
```

Stored in register:

```text
x10
```

Simulation passes when:

```tlv
|cpu/xreg[10]>>5$value == 45
```
