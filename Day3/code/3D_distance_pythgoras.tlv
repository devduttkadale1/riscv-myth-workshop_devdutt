\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v";
   m4_makerchip_module

/////////// 3 Dimensional Distance Calculator ///////////////
\TLV

   |calc

      // DUT
      /coord[2:0]

         @1
            $sq[9:0] = $value[3:0] ** 2;

      @2
         $dist_sq[11:0] =
            /coord[0]$sq +
            /coord[1]$sq +
            /coord[2]$sq;

      @3
         $dist[5:0] = sqrt($dist_sq);

      // Print
      @3
         \SV_plus
            always_ff @(posedge clk) begin
               \$display(
                  "sqrt((%2d^2)+(%2d^2)+(%2d^2)) = %2d",
                  /coord[0]$value,
                  /coord[1]$value,
                  /coord[2]$value,
                  $dist
               );
            end

\SV
endmodule
