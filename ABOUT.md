# About This Repository — Devdutt Kadale

## Who Am I?

I am **Devdutt Kadale**, an RTL Design Engineer from Pune, Maharashtra, India.

I completed a 1-year internship at **Broad Semiconductor**, where I worked on RTL design of an **I3C Controller** featuring ENTDAA (Enter Dynamic Address Assignment), IBI (In-Band Interrupt), and dynamic addressing. I also worked on GPIO multiplexing and UART/I2C/SPI protocol integration.

I am currently working at **LeadSOC** as an RTL Design Engineer, deepening my expertise in digital design, CDC (Clock Domain Crossing) verification, lint analysis, and synthesis flows using industry tools like Synopsys VCS, Design Compiler, SpyGlass, and PrimeTime.

My core technical skills include:

- RTL Design in Verilog and SystemVerilog
- FSM design, protocol design (I2C, UART, SPI, I3C, APB, AMBA)
- RISC-V processor architecture
- Synchronous and Asynchronous FIFO design
- Clock Domain Crossing (CDC) concepts
- Static Timing Analysis (STA) fundamentals
- FPGA implementation using Xilinx Vivado

***

## What Is This Repository?

This repository documents my complete work from the **RISC-V MYTH (Microprocessor for You in Thirty Hours) Workshop** — a hands-on 5-day online workshop focused on building a RISC-V RV32I processor from scratch using **TL-Verilog** and the **Makerchip** online IDE.

The workshop was conducted by **Steve Hoover** (creator of TL-Verilog) and is widely recognized in the VLSI and computer architecture community as an excellent introduction to processor microarchitecture design.

***

## What Did the Workshop Cover?

| Day | Topic | Key Deliverable |
|-----|-------|-----------------|
| Day 1 | RISC-V ISA & GNU Compiler Toolchain | C → Assembly → Machine code flow using Spike simulation |
| Day 2 | Application Binary Interface (ABI) & Verification | Assembly function integration with C, RISC-V register conventions |
| Day 3 | Digital Logic with TL-Verilog & Makerchip | Combinational/sequential circuits, pipeline calculator, validity logic |
| Day 4 | Basic RISC-V CPU Microarchitecture (Single-Cycle) | PC, Fetch, Decode, Register File, ALU, Branch logic |
| Day 5 | Complete Pipelined RV32I CPU | 5-stage pipeline with hazard handling, load/store, bypass logic, JAL/JALR |

***

## What Did I Build?

The final output of this workshop is a **5-stage Pipelined RV32I RISC-V Processor** implemented in TL-Verilog, capable of executing:

- Arithmetic instructions (ADD, ADDI, SUB)
- Logical instructions (AND, OR, XOR, ANDI, ORI, XORI)
- Shift operations (SLL, SRL, SRA, SLLI, SRLI, SRAI)
- Comparison operations (SLT, SLTU, SLTI, SLTIU)
- Branch instructions (BEQ, BNE, BLT, BGE, BLTU, BGEU)
- Load/Store instructions (LW, SW)
- Jump instructions (JAL, JALR)
- Register File Bypassing (Data Forwarding)
- Pipeline Hazard Handling

**Simulation Result:** ✅ PASSED — Final test program computes sum of 1 to 9 = 45, verified in register x10.

***

## What Did I Learn?

### Computer Architecture
- How instructions flow through a real processor pipeline
- How data hazards arise and how register bypassing (forwarding) resolves them
- How branch hazards are handled through pipeline redirection and shadow invalidation
- How load hazards introduce timing constraints on writeback

### TL-Verilog and Makerchip
- TL-Verilog's timing abstraction (`@1`, `@2`, `>>1$signal`) eliminates the need for explicit pipeline registers
- Validity abstraction (`?$valid`) simplifies control flow significantly compared to traditional RTL
- Makerchip's integrated waveform viewer and instruction trace accelerates debug cycles

### Debugging Methodology
- Diagnosed and fixed combinational PC feedback loops (`Settle region did not converge` error)
- Resolved register bypass condition mismatches causing incorrect ALU output
- Fixed load writeback timing by introducing pipeline delay on memory read data
- Corrected branch target PC calculation errors that caused infinite loops

### RISC-V ISA
- Deep understanding of RV32I instruction encoding (R, I, S, B, U, J types)
- ABI register conventions (caller-saved vs callee-saved, argument registers a0-a7)
- Little-endian memory organization and RISC-V memory alignment

***

## Why This Repository Matters for My Career

As an RTL Design Engineer, understanding processor microarchitecture is critical — not just for CPU design roles but also for any IP integration, SoC design, or verification task. Knowing how instructions execute across pipeline stages directly strengthens my ability to:

- Write better RTL with timing awareness
- Understand design constraints during synthesis and STA
- Reason about CDC and hazards in complex datapaths
- Contribute meaningfully to RISC-V based SoC projects

This workshop was a significant step in bridging my protocol-level RTL experience with full processor-level design understanding.

***

## Repository Contact

- **LinkedIn:** [linkedin.com/in/devdutt-kadale](https://www.linkedin.com/in/devdutt-kadale)
- **Location:** Pune, Maharashtra, India
- **Current Role:** RTL Design Engineer — LeadSOC

***

*This repository was created as part of the RISC-V MYTH Workshop and is maintained as a public portfolio artifact.*