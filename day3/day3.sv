module day3 (input d, input rstn, input clk, output reg q);
    
    always @(posedge clk) begin
        if (!rstn) // rstn is active low
        q <= 0; // when rstn = 0
        else
        q <= d; // when rstn = 1
    end

endmodule