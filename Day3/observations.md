# Day 3 Observations and Debugging Notes

## Important Concepts Learned

### Pipeline Stages

TL-Verilog uses pipeline stages:

```tlv
@1
@2
@3
```

to represent timing boundaries.

Unlike traditional Verilog, explicit registers are not required.

---

### Signal Alignment

Alignment operators are used when a signal generated in one stage is used in another stage.

Example:

```tlv
>>1$a_sq
```

Meaning:

Bring the value of `$a_sq` from one previous stage.

General rule:

```text
Alignment = Current Stage - Source Stage
```

---

### Sequential Logic

Feedback creates state.

Example:

```tlv
$val1 = >>1$out
```

The previous output becomes the next input.

---

### Validity Logic

Conditional execution:

```tlv
?$valid
```

allows logic to execute only when valid data is present.

---

### Memory

A memory element can be created using feedback.

Example:

```tlv
$mem = condition ? new_value : >>1$mem
```

---

## Debugging Issues Encountered

### 1. Unassigned Signal Errors

Example:

```tlv
$out = !$in1;
```

without assigning `$in1`.

Error:

```text
Signal is used but never assigned.
```

Fix:

Assign the signal before use.

---

### 2. Indentation Errors

TL-Verilog is indentation sensitive.

Incorrect:

```tlv
|calc
@1
```

Correct:

```tlv
|calc
   @1
```

Hierarchy is determined by indentation.

---

### 3. Pipeline Misalignment

Incorrect:

```tlv
>>2$a_sq
```

when signal is only one stage away.

Result:

* Wrong data alignment
* Incorrect results

---

### 4. sqrt() Compatibility Issue

Some tutorial examples use:

```tlv
sqrt($cc_sq)
```

Current Makerchip/Verilator environment may not support this function directly.

Purpose of example:

* Demonstrate pipeline timing
* Demonstrate hierarchy replication

Not square-root hardware implementation.

---

### 5. Parser Errors

Long multi-line assignments sometimes caused parser failures.

Fix:

Keep assignments properly aligned and formatted.

---

## Most Important Day 3 Takeaway

Day 3 was not about syntax.

The primary learning was understanding:

* Timing
* Pipelines
* Feedback
* Validity
* State

These concepts form the foundation for Day 4 (CPU Microarchitecture) and Day 5 (Pipelined RISC-V CPU).
