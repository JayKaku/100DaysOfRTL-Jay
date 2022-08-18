// 2 bit Gray Counter

module day2 (
    input wire clk,
    input wire rst,
    output reg s0,
    output reg s1 );

    always @(posedge clk)
    begin 
        s0 <= s1 & ~rst;
        s1 <= ~s0 & ~rst; 
    end
endmodule