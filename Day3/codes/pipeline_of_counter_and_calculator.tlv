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

////////////////// Pipeline of Counter and Calculator ////////////////////////
\TLV

   |calc
   @1

      // Counter
      $reset = *reset;
      $cnt[31:0] = $reset ? 0 : (>>1$cnt + 1);

      // Sequential calculator
      $val1[31:0] = >>1$out;
      $val2[31:0] = $rand2[3:0];
      $op[1:0]    = $rand3[1:0];

      // Arithmetic operations
      $sum[31:0]  = $val1 + $val2;
      $diff[31:0] = $val1 - $val2;
      $prod[31:0] = $val1 * $val2;

      // Divide protection
      $quot[31:0] =
         $val2 == 0 ? 0 :
                      ($val1 / $val2);

      // Output mux
      $out[31:0] =
         $reset ? 32'b0 :
         ($op == 2'b00 ? $sum  :
          $op == 2'b01 ? $diff :
          $op == 2'b10 ? $prod :
                         $quot);

\SV
   endmodule
