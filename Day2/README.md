# Day 2 - ABI and Basic Verification Flow

## Overview

Day 2 focused on understanding the Application Binary Interface (ABI), register conventions, memory organization, instruction formats, and basic verification using the RISC-V GNU toolchain.

The objective was to understand how instructions interact with registers and memory, how function calls are implemented using ABI conventions, and how C programs can be rewritten and verified using RISC-V assembly language.

The lab involved implementing a function in assembly language, compiling it with a C program, executing it using Spike simulation, and analyzing the generated machine instructions.

---

## Workshop Progress

| Day | Topic | Status |
|------|--------|---------|
| Day 1 | Introduction to RISC-V ISA and GNU Compiler Toolchain | ✅ Completed |
| Day 2 | ABI and Basic Verification Flow | ✅ Completed |
| Day 3 | Digital Logic with TL-Verilog and Makerchip | ✅ Completed |
| Day 4 | Basic RISC-V CPU Microarchitecture | ✅ Completed |
| Day 5 | Complete Pipelined RISC-V CPU | ✅ Completed |

---

## Topics Covered

### RV-D2SK1

* Application Binary Interface (ABI)
* Register Naming Convention
* Register Usage
* Caller Saved Registers
* Callee Saved Registers
* Function Arguments
* Return Values

### RV-D2SK2

* Memory Allocation
* Register Structure
* Little Endian Memory Organization
* Instruction Formats
* Load Instructions
* Add Instructions
* Store Instructions

### RV-D2SK3

* Assembly Language Programming
* Function Call Flow
* C and Assembly Integration
* GCC Compilation
* Spike Simulation
* Objdump Analysis
* Basic Verification Flow

---

## Repository Structure

```text
Day2/
│
├── README.md
├── notes.md
├── observations.md
├── abi_notes.md
├── verification_notes.md
├── code/
└── screenshots/
```

---

## Important Concepts

### Application Binary Interface (ABI)

ABI defines how software components communicate with each other at the binary level.

```text
Application
      ↓
Libraries
      ↓
Operating System
      ↓
ABI
      ↓
ISA
      ↓
Hardware
```

---

### Function Call Convention

```text
Caller Function
      ↓
Pass Arguments (a0-a7)
      ↓
Called Function
      ↓
Execute Instructions
      ↓
Return Result (a0)
      ↓
Caller Function
```

---

## Screenshots

### ABI Introduction

![ABI Introduction](screenshots/abi_intro.png)

Topics:

* ABI Fundamentals
* Software-Hardware Interface
* System Call Interface

---

### ABI Interface

![ABI Interface](screenshots/abi_interface.png)

Topics:

* User ISA
* System ISA
* Operating System
* Hardware Abstraction

---

### ABI Overview

![ABI Overview](screenshots/abi.png)

Topics:

* ABI Layer
* ISA Layer
* RTL Layer
* Hardware Implementation

---

### Register Conventions

![ABI Registers](screenshots/abi_registers.png)

Topics:

* Register Naming
* Register Usage
* Caller Saved Registers
* Callee Saved Registers

---

### Register Structure

![Register Structure](screenshots/abi_structure.png)

Topics:

* XLEN
* RV32
* RV64
* Register Organization

---

### Register Structure and Memory

![Register Memory Structure](screenshots/abi_register_structure_memory.png)

Topics:

* Memory Organization
* Registers
* Load Operations
* Store Operations

---

### Little Endian Memory Organization

![Little Endian](screenshots/abi_register_structure_little_endian.png)

Topics:

* Byte Ordering
* Memory Layout
* Little Endian Format

---

### Memory Allocation Instructions

![Memory Allocation](screenshots/memory_allocation_instructions.png)

Topics:

* Memory Access
* Addressing
* Instruction Fields

---

### Load Instruction Format

![Load Instruction](screenshots/abi_load_instruct.png)

Topics:

* Load Doubleword
* Immediate Field
* Source Register
* Destination Register

---

### Add Instruction Format - Part A

![Add Instruction A](screenshots/abi_add_instruct_a.png)

Topics:

* R-Type Instructions
* Source Registers
* Destination Register

---

### Add Instruction Format - Part B

![Add Instruction B](screenshots/abi_add_instruct_b.png)

Topics:

* Register Operations
* Instruction Encoding

---

### Store Instruction Format

![Store Instruction](screenshots/abi_store_instruct_b.png)

Topics:

* Store Doubleword
* Memory Write Operations
* Offset Addressing

---

### Instruction Format Summary

![Instruction Summary](screenshots/abi_all_instruct.png)

Topics:

* Load Instructions
* Store Instructions
* Arithmetic Instructions

---

## Lab Screenshots

### Problem Statement

![Lab Problem](screenshots/lab1_problem.png)

Objective:

* Rewrite a C program using RISC-V Assembly Language

---

### Algorithm Flow

![Algorithm](screenshots/lab1a_problem_algorithm.png)

Topics:

* Function Flow
* Register Usage
* Iterative Addition

---

### C Program

![C Program](screenshots/lab1c_1to9_custom.c_code.png)

Topics:

* Function Declaration
* Function Call
* Result Display

---

### Assembly Program

![Assembly Program](screenshots/lab1d_load.s_code.png)

Topics:

* Register Initialization
* Loop Implementation
* Branch Instructions

---

### Function Call Simulation

![Function Call](screenshots/lab1e_simulate_function_call.png)

Topics:

* Argument Passing
* Return Value Handling
* ABI Convention

---

### Spike Simulation Output

![Simulation Result](screenshots/lab1f_simulate_function_call_results.png)

Topics:

* Program Execution
* Sum Calculation
* Verification

---

### Final Verification

![Final Result](screenshots/lab1g_simulation_results.png)

Topics:

* GCC Compilation
* Objdump Analysis
* Spike Simulation

---

## Key Learning Outcomes

By the end of Day 2, I understood:

* Purpose of the Application Binary Interface (ABI)
* Register naming and usage conventions
* Caller-saved and callee-saved registers
* Function argument passing using a0-a7
* Return value handling using a0
* Memory organization in RISC-V
* Little-endian memory representation
* Instruction formats and encoding
* Integration of C and Assembly programs
* Spike-based functional verification
* Disassembly and instruction analysis using objdump

---

## Files

### Notes

```text
Day2/notes.md
```

Detailed lecture notes covering ABI, register conventions, instruction formats, and memory organization.

---

### Observations

```text
Day2/observations.md
```

Important observations and practical learnings from Day 2.

---

### ABI Notes

```text
Day2/abi_notes.md
```

Detailed documentation of ABI concepts and register usage.

---

### Verification Notes

```text
Day2/verification_notes.md
```

Notes on compilation, simulation, disassembly, and verification flow.

---

## Conclusion

Day 2 provided a deeper understanding of how software interacts with hardware through the Application Binary Interface (ABI). It introduced register conventions, instruction formats, memory organization, and function call mechanisms. Through hands-on labs involving C and Assembly integration, GCC compilation, Spike simulation, and objdump analysis, the concepts of ABI and basic verification flow were reinforced and validated.