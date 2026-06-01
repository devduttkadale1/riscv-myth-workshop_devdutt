# Day 4 Observations and Debugging Notes

## Important Concepts Learned

### CPU Datapath Construction

A processor is built by connecting multiple functional blocks:

```text
PC
 ↓
Instruction Memory
 ↓
Decoder
 ↓
Register File
 ↓
ALU
 ↓
Register Writeback
```

Each stage depends on correct operation of the previous stage.

---

### Instruction Decoding

Instruction decoding acts as the control center of the processor.

The decoder generates signals such as:

```tlv
$is_add
$is_addi
$is_beq
$is_blt
```

which control later datapath behavior.

---

### Register File Architecture

The RISC-V Register File uses:

```text
2 Read Ports
1 Write Port
```

allowing simultaneous operand reads and result writeback.

---

### ALU Operand Selection

ADD and ADDI use the same adder.

Difference:

```text
ADD  -> Register + Register
ADDI -> Register + Immediate
```

Only the second operand changes.

---

### x0 Register Behavior

RISC-V register x0 is hardwired to zero.

Any attempt to write:

```text
x0
```

must be ignored.

---

### Branch Execution

Branch instructions require:

1. Comparison
2. Target address calculation
3. PC redirection

All three must be correct for loops to execute properly.

---

### Program Counter Control

Normally:

```text
PC = PC + 4
```

For taken branches:

```text
PC = Branch Target Address
```

This is the first example of control-flow modification in the processor.

---

## Debugging Issues Encountered

### 1. Decode Mismatch

Incorrect funct3 or opcode extraction caused instructions to be decoded incorrectly.

Result:

```text
Instruction never recognized.
```

Fix:

Verify extracted instruction fields.

---

### 2. Missing rs2 Valid Logic

Some instruction formats do not use rs2.

Incorrect handling caused invalid reads.

Fix:

```tlv
$rs2_valid
```

must be generated correctly.

---

### 3. Register File Read Errors

Incorrect register indices resulted in wrong ALU inputs.

Symptoms:

```text
Unexpected ALU results.
```

Fix:

Verify:

```tlv
$rf_rd_index1
$rf_rd_index2
```

---

### 4. Branch Comparison Errors

Using incorrect comparison operators caused branches to behave incorrectly.

Result:

```text
Loop never exits
```

or

```text
Loop never executes
```

---

### 5. PC Redirection Errors

Branch target generated correctly but PC was not redirected.

Result:

```text
Branch instructions ignored.
```

Fix:

Update PC selection logic.

---

### 6. TL-Verilog Indentation Warnings

Makerchip reported:

```text
Indentation is 8 spaces, which is not a multiple of 3.
```

Simulation still passed.

Fix:

Maintain indentation using:

```text
0
3
6
9
12
```

space levels.

---

## Most Important Day 4 Takeaway

Day 4 was not simply about writing a few instructions.

The primary learning was understanding how a processor executes instructions through:

* Fetch
* Decode
* Register Read
* Execute
* Writeback
* Branch Control

These concepts form the foundation for Day 5, where the same processor is transformed into a pipelined RISC-V CPU.
