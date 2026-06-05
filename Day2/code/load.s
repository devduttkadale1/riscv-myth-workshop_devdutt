.section .text
.global load
.type load, @function

load:
        add     a4, a0, zero      # Initialize sum register a4 with 0
        add     a2, a0, a1        # Store count in a2
        add     a3, a0, zero      # Initialize counter a3 with 0

loop:
        add     a4, a3, a4        # Incremental addition
        addi    a3, a3, 1         # Increment counter

        blt     a3, a2, loop      # Continue until a3 >= a2

        add     a0, a4, zero      # Return result in a0
        ret