# Day 5 Observations and Debugging Notes

## Important Concepts Learned

### Pipeline Execution

Unlike a single-cycle processor, multiple instructions execute simultaneously in different pipeline stages.

Example:

```text
Instruction 1 -> Execute
Instruction 2 -> Decode
Instruction 3 -> Fetch
```

This improves processor throughput.

---

### Valid Bit Propagation

Pipeline stages require validity tracking.

Signals:

```tlv
$valid
$valid_taken_br
$valid_load
$valid_jump
```

ensure that only legitimate instructions modify processor state.

---

### Register File Bypass

Data hazards occur when an instruction requires a result that has not yet been written back.

Example:

```text
ADD x5,x1,x2
ADD x6,x5,x3
```

Without forwarding:

```text
Incorrect value read
```

Bypassing resolves this issue.

---

### Branch Hazards

Branches modify control flow.

When a branch is taken:

```text
PC = Branch Target
```

Instructions already present in the pipeline must be invalidated.

---

### Load Hazards

Load instructions introduce additional latency.

Example:

```text
LW x5,0(x1)
ADD x6,x5,x2
```

The loaded value is not immediately available.

Pipeline validity logic prevents incorrect execution.

---

### Memory Address Generation

Both loads and stores use:

```tlv
$src1_value + $imm
```

to compute the effective address.

This simplifies memory access hardware.

---

### Store Operations

Stores do not write back into the Register File.

Instead:

```text
Register Value
      ↓
Data Memory
```

This differs from arithmetic and load instructions.

---

### Jump Instructions

Jump instructions perform:

1. Target Address Calculation
2. PC Redirection
3. Return Address Generation

The return address is:

```text
PC + 4
```

and is written into the destination register.

---

## Debugging Issues Encountered

### 1. Early Use Errors

Makerchip reported:

```text
Signal used earlier than assigned
```

Cause:

```tlv
>>1$taken_br
```

referenced before generation.

Fix:

Move valid logic into the appropriate pipeline stage.

---

### 2. Combinational PC Loop

Symptoms:

```text
Settle region did not converge
```

Cause:

```tlv
$pc -> $inc_pc -> $pc
```

created a combinational loop.

Fix:

```tlv
$inc_pc = >>1$pc + 32'd4;
```

---

### 3. Register Bypass Bugs

Incorrect forwarding caused:

```text
Unexpected ALU outputs
```

Fix:

Verify forwarding conditions and destination register matching.

---

### 4. Branch Redirect Errors

Incorrect branch target selection resulted in:

```text
Infinite loops
```

or

```text
Branches ignored
```

Fix:

Verify:

```tlv
$valid_taken_br
$br_tgt_pc
```

and PC selection logic.

---

### 5. Load Writeback Timing Issues

Load data becomes available after memory access.

Attempting immediate writeback resulted in:

```text
Incorrect register contents
```

Fix:

Delay load writeback using pipeline timing.

---

### 6. Store Instruction Decode Issues

Missing store decode logic caused:

```text
Memory writes never occurred
```

Fix:

Implement:

```tlv
$is_store
```

and S-type immediate generation.

---

### 7. Jump Decode Errors

Incorrect JAL/JALR decode prevented:

```text
PC redirection
```

Fix:

Verify:

```tlv
$is_jal
$is_jalr
$is_jump
```

---

### 8. Immediate Generation Errors

Incorrect immediate extraction caused:

```text
Wrong addresses
Wrong branch targets
```

Fix:

Verify:

```text
I-Type
S-Type
B-Type
J-Type
```

immediate formats individually.

---

### Most Important Day 5 Takeaway

Day 5 demonstrated how a processor evolves from a simple single-cycle implementation into a pipelined architecture capable of executing multiple instructions simultaneously.

The most valuable learning was understanding:

* Pipeline Timing
* Hazard Resolution
* Register Forwarding
* Branch Redirection
* Memory Access
* Jump Control

These concepts form the foundation of modern processor design and are used in commercial CPU microarchitectures.
