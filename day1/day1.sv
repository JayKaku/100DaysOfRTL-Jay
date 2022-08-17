// A simple mux

module day1 (
  input   wire [7:0]    a_i,
  input   wire [7:0]    b_i,
  input   wire          sel_i,
  output  reg [7:0]    y_o
);

  //assign y_o = sel_i ? a_i : b_i;
  always @(a_i,b_i,sel_i) begin
    case(sel_i)
    2'b00: y_o = b_i;
    2'b01: y_o = a_i;
    default: y_o = 0;
    endcase
  end

endmodule