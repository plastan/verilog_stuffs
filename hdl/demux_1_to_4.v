//De-multiplexer (1 => 4)
module demux_1_to_4 (
    input i_data,   //data bit
    input i_sel_0,  //select bit 0
    input i_sel_1,  //select bit 1

    // we use 2 bit for selection because 2^2 is 4, and we have 4 output
    // signals

    // below we have output bits
    output o_data_0,
    output o_data_1,
    output o_data_2,
    output o_data_3
);



  // all assign operation happens in parallel.
  assign o_data_0 = !i_sel_0 & !i_sel_1 ? i_data : 1'b0;
  assign o_data_1 = i_sel_0 & !i_sel_1 ? i_data : 1'b0;
  assign o_data_2 = !i_sel_0 & i_sel_1 ? i_data : 1'b0;
  assign o_data_3 = i_sel_0 & i_sel_1 ? i_data : 1'b0;

endmodule
