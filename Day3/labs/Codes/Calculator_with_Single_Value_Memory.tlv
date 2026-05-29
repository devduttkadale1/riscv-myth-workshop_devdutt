\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
////////////////// Calculator with Single-Value Memory ////////////////////////

\TLV

   |calc

      @1
         // Reset
         $reset = *reset;

         // Counter
         $cnt = $reset ? 0 : (>>1$cnt + 1);

         // Valid every alternate cycle
         $valid = >>1$cnt;

         // Valid OR reset condition
         $valid_or_reset = $valid || $reset;

         // Sequential calculator feedback
         $val1[31:0] = >>2$out;

         // Random inputs
         $val2[31:0] = $rand2[3:0];

         // 3-bit operation select
         $op[2:0] = $rand3[2:0];

      ?$valid_or_reset

         @1
            // Arithmetic operations
            $sum[31:0]  = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;

            // Divide-by-zero protection
            $quot[31:0] =
               $val2 == 0 ? 0 :
                            ($val1 / $val2);

         @2
            // Memory register
            $mem[31:0] =
               $reset ? 0 :
               ($op == 3'b101 ? >>2$out :
                                 >>1$mem);

            // Output mux
            $out[31:0] =
               $reset ? 0 :
               ($op == 3'b000 ? $sum  :
                $op == 3'b001 ? $diff :
                $op == 3'b010 ? $prod :
                $op == 3'b011 ? $quot :
                $op == 3'b100 ? $mem  :
                                 >>2$out);

\SV
   endmodule
