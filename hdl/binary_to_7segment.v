// This module translate binary number 0 to 7 to seven segment display 


module binary_to_7segment (
    input i_clk,
    input [3:0] i_binary_num,  // input number in binary (require 4 bits to represent 7)
    output o_segment_a,  // activations of segments
    output o_segment_b,
    output o_segment_c,
    output o_segment_d,
    output o_segment_e,
    output o_segment_f,
    output o_segment_g
);
  reg [6:0] r_hex_encoding;  // register the encode the segment values in one place
  always @(posedge i_clk) begin
    case (i_binary_num)
      4'b0000: r_hex_encoding <= 7'b1111110;  // 0x7E
      4'b0001: r_hex_encoding <= 7'b0110000;  // 0x30
      4'b0010: r_hex_encoding <= 7'b1101101;  // 0x6D
      4'b0011: r_hex_encoding <= 7'b1111001;  // 0x79
      4'b0100: r_hex_encoding <= 7'b0110011;  // 0x33
      4'b0101: r_hex_encoding <= 7'b1011011;  // 0x5B
      4'b0110: r_hex_encoding <= 7'b1011111;  // 0x5F
      4'b0111: r_hex_encoding <= 7'b1110000;  // 0x70
      4'b1000: r_hex_encoding <= 7'b1111111;  // 0x7F
      4'b1001: r_hex_encoding <= 7'b1111011;  // 0x7B
      4'b1010: r_hex_encoding <= 7'b1110111;  // 0x77
      4'b1011: r_hex_encoding <= 7'b0011111;  // 0x1F
      4'b1100: r_hex_encoding <= 7'b1001110;  // 0x4E
      4'b1101: r_hex_encoding <= 7'b0111101;  // 0x3D
      4'b1110: r_hex_encoding <= 7'b1001111;  // 0x4F
      4'b1111: r_hex_encoding <= 7'b1000111;  // 0x47
      default: r_hex_encoding <= 7'b0000000;  // 0x00
    endcase
  end

  assign o_segment_a = r_hex_encoding[6];
  assign o_segment_b = r_hex_encoding[5];
  assign o_segment_c = r_hex_encoding[4];
  assign o_segment_d = r_hex_encoding[3];
  assign o_segment_e = r_hex_encoding[2];
  assign o_segment_f = r_hex_encoding[1];
  assign o_segment_g = r_hex_encoding[0];

endmodule


