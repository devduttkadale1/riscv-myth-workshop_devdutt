# Day 3 - Digital Logic with TL-Verilog and Makerchip

## Topics Covered

* Logic Gates
* Multiplexers
* Combinational Logic
* Sequential Logic
* Pipelines
* Validity
* Memory
* Hierarchical Design

---

## TL-Verilog Basics

### Pipeline Stage

```tlv
@1
```

Represents stage 1 of a pipeline.

Example:

```tlv
@1
   $sum = $a + $b;
```

---

### Previous Cycle Reference

```tlv
>>1$signal
```

Means value of signal from previous clock cycle.

Example:

```tlv
$cnt = >>1$cnt + 1;
```

Creates a counter.

---

### Conditional Validity

```tlv
?$valid
```

Execute enclosed logic only when valid is true.

Example:

```tlv
?$valid
   @1
      $sum = $a + $b;
```

---

## Combinational Calculator

Operations implemented:

* Addition
* Subtraction
* Multiplication
* Division

Operation selected through:

```tlv
$op[1:0]
```

Encoding:

```text
00 → Add
01 → Subtract
10 → Multiply
11 → Divide
```

---

## Sequential Calculator

Difference from combinational calculator:

```tlv
$val1 = >>1$out;
```

Previous result becomes next input.

Creates state.

---

## Counter

Implemented using feedback.

```tlv
$cnt = $reset ? 0 : (>>1$cnt + 1);
```

Key learning:

Feedback path creates sequential behavior.

---

## Two-Cycle Calculator

Output delayed by two cycles.

```tlv
$val1 = >>2$out;
```

Purpose:

* Easier timing
* Higher clock frequency

Tradeoff:

* Increased latency

---

## Validity

Valid signal prevents invalid calculations.

```tlv
$valid = >>1$cnt;
```

Used to control when calculations are performed.

---

## Single Value Memory

Extended calculator to support:

* Memory Store
* Memory Recall

Required:

* 3-bit opcode
* Memory mux
* Recall path

---

## Pythagoras Pipeline

Pipeline stages:

Stage 1:

```tlv
$a_sq = $a * $a;
$b_sq = $b * $b;
```

Stage 2:

```tlv
$c_sq = >>1$a_sq + >>1$b_sq;
```

Stage 3:

```tlv
$c = sqrt($c_sq);
```

Demonstrates pipeline alignment.

---

## Common Errors Encountered

### Unassigned Signal

Example:

```tlv
$out = !$in1;
```

without assigning $in1.

---

### Indentation Errors

TL-Verilog is indentation sensitive.

Incorrect indentation causes parser failures.

---

### Pipeline Alignment Errors

Using:

```tlv
>>2$a_sq
```

instead of

```tlv
>>1$a_sq
```

can misalign data.

---

### sqrt Function Issue

Some Makerchip environments support sqrt().

Others may report synthesis or simulation errors.

Need to verify environment support.

---

## Key Takeaways

1. TL-Verilog focuses on behavior and pipeline stages.
2. Pipeline alignment is the most important concept.
3. Validity simplifies control logic.
4. Feedback creates sequential circuits.
5. Day 3 concepts directly map to CPU pipelines in Day 4 and Day 5.
