// Linear feedback shift register
// primarly used as a pseudo random number generator and a counter that use
// less luts
//
module lfsr_22 (
    input         i_clk,
    output [21:0] o_lfsr_data,  // declare a 22 bit array of wire
    output        o_lfsr_done   // flag for completion
);
  reg  [21:0] r_lfsr;  //declaring a 22 bir wide register
  wire        w_xnor;  //store the xnor output

  always @(posedge i_clk) begin
    r_lfsr <= {
      r_lfsr[20:0], w_xnor
    };  //for every clock cycle, we update the register  by changing a bit from one end

  end
  assign w_xnor = r_lfsr[21] ^~ r_lfsr[20]; // update w_xnore by , operands are  last 2 bits from the register
  assign o_lfsr_data = o_lfsr_data;
  assign o_lfsr_done = (r_lfsr == 22'd0);
  // lfsr is actually pseudo counter, it repeats the pattern .
  // when i cycles the all domain once. We say its done.
endmodule





// 22 bit register can count till 2^22 4194304 clock cycles. 

