# Day 3 Observations

1. TL-Verilog is stage-oriented instead of always block oriented.

2. @1, @2, @3 represent pipeline stages.

3. >>1 means value from previous cycle.

4. ?$valid executes logic only when valid is high.

5. Pipeline alignment is critical.

6. Wrong indentation causes SandPiper parser errors.

7. Combinational calculator computes every cycle.

8. Sequential calculator uses previous output as input.

9. Two-cycle calculator trades latency for timing closure.

10. Validity prevents invalid pipeline data from propagating.
