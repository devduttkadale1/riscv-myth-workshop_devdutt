# Integer Number Representation in RISC-V

## Overview

Digital hardware understands only binary values (0 and 1). Every integer stored inside a processor register, memory location, or ALU is represented using a binary pattern.

In RV64 processors, registers are 64 bits wide and can store both signed and unsigned numbers.

---

## Basic Units

| Size | Description |
|---------|-------------|
| 1 Bit | Binary digit |
| 8 Bits | Byte |
| 32 Bits | Word |
| 64 Bits | Doubleword |

RISC-V RV64 architecture primarily operates on 64-bit doublewords.

---

## Unsigned Number Representation

Unsigned numbers use all bits to represent magnitude.

For an N-bit number:

```
Minimum = 0
Maximum = 2^N - 1
```

For RV64:

```
Minimum = 0
Maximum = 18,446,744,073,709,551,615
```

### Formula

```
Range = 0 to (2^64 - 1)
```

### Example

```
Decimal: 15

Binary:

0000000000001111
```

---

## Total Possible Patterns

For N bits:

```
Total Patterns = 2^N
```

Examples:

| Bits | Patterns |
|--------|----------|
| 2 | 4 |
| 3 | 8 |
| 4 | 16 |
| 64 | 2^64 |

### Screenshot

![Unsigned Patterns](screenshots/number_sys_unsigned_nos_identification_pattern.png)

---

## Signed Number Representation

Signed numbers use the Most Significant Bit (MSB) as the sign bit.

| MSB | Meaning |
|------|----------|
| 0 | Positive |
| 1 | Negative |

### Example

```
00000010 = +2

11111110 = -2
```

### Screenshot

![MSB Representation](screenshots/number_sys_signed_MSB_representation.png)

---

## Two's Complement Representation

RISC-V uses Two's Complement representation for signed numbers.

### Why Two's Complement?

Advantages:

* Simplifies hardware design
* Makes subtraction easier
* Allows a single adder circuit to perform both addition and subtraction

---

## Converting Positive Number to Negative

### Example: -2

Step 1:

```
+2

00000010
```

Step 2: Invert Bits

```
11111101
```

Step 3: Add 1

```
11111110
```

Result:

```
-2
```

### Screenshot

![Two's Complement](screenshots/number_sys_signed_representation.png)

---

## Signed Range in RV64

Positive Numbers:

```
0 to (2^63 - 1)
```

Negative Numbers:

```
-1 to (-2^63)
```

Range:

```
-9,223,372,036,854,775,808

to

+9,223,372,036,854,775,807
```

### Screenshot

![Signed Range](screenshots/number_sys_signed_representation_trick.png)

---

## Word and Doubleword Organization

RV64 registers contain:

```
64 bits
```

A Doubleword consists of:

```
2 Words
```

Each Word consists of:

```
32 bits
```

Each Byte consists of:

```
8 bits
```

### Screenshot

![Word Layout](screenshots/number_sys_unsigned_nos_identification.png)

---

## MSB and LSB

### MSB

Most Significant Bit

```
Bit 63
```

Determines sign in signed numbers.

### LSB

Least Significant Bit

```
Bit 0
```

Represents the smallest value.

---

## Key Takeaways

* RV64 registers are 64 bits wide.
* Unsigned numbers use all bits for magnitude.
* Signed numbers use the MSB as the sign bit.
* RISC-V uses Two's Complement representation.
* Total patterns represented by RV64 are 2^64.
* Understanding binary representation is essential for processor design and verification.