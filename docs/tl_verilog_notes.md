# TL-Verilog Notes

## Introduction

TL-Verilog (Transaction-Level Verilog) is a hardware description language that extends Verilog by introducing timing abstraction and transaction-level design concepts.

The MYTH workshop uses TL-Verilog through Makerchip to simplify processor development.

---

## Why TL-Verilog?

Traditional RTL requires:

* Explicit pipeline registers
* Manual stage management
* Complex timing updates

TL-Verilog provides:

* Timing abstraction
* Pipeline abstraction
* Validity abstraction
* Cleaner code

---

## Pipeline Stages

Pipeline stages are declared using:

```tlv
@0
@1
@2
@3
```

Example:

```tlv
@1
   $sum = $a + $b;
```

---

## Timing References

Previous pipeline values are referenced using:

```tlv
>>1$signal
>>2$signal
>>3$signal
```

Example:

```tlv
$count = >>1$count + 1;
```

---

## Combinational Logic

Example:

```tlv
$out = $a + $b;
```

Output changes immediately when inputs change.

---

## Sequential Logic

Sequential circuits use feedback.

Example:

```tlv
$count = >>1$count + 1;
```

Creates a counter.

---

## Validity

Validity controls whether logic is meaningful.

Example:

```tlv
?$valid
```

Benefits:

* Cleaner control flow
* Easier pipeline design
* Simplified branch handling

---

## Conditional Logic

Example:

```tlv
?$valid
   $out = $a + $b;
```

Executed only when valid is asserted.

---

## Multiplexing

Example:

```tlv
$out =
   $sel ? $a : $b;
```

Used heavily in CPU datapaths.

---

## Register File Operations

Common signals:

```tlv
$rs1
$rs2
$rd
```

Read operands:

```tlv
$src1_value
$src2_value
```

Write-back:

```tlv
$rf_wr_en
$rf_wr_index
$rf_wr_data
```

---

## Register Bypass

Used to resolve data hazards.

Example:

```tlv
$src1_value =
   ((>>1$rf_wr_en) &&
   (>>1$rf_wr_index == $rs1))
   ? >>1$result
   : $rf_rd_data1;
```

---

## Branch Handling

Signals:

```tlv
$taken_br
$valid_taken_br
$br_tgt_pc
```

Used to redirect program execution.

---

## Memory Interface

Data Memory signals:

```tlv
$dmem_addr
$dmem_rd_en
$dmem_wr_en
$dmem_wr_data
```

Instruction Memory:

```tlv
$imem_rd_addr
```

---

## Advantages Observed During Workshop

* Reduced RTL complexity
* Faster CPU development
* Easier pipeline modifications
* Better readability
* Simplified hazard handling

---

## Key Learning

The biggest advantage of TL-Verilog is timing abstraction. Instead of manually inserting and managing pipeline registers, designers focus on functionality while the language manages stage movement and alignment automatically.
