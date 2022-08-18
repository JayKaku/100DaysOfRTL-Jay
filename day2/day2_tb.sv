module day2_tb ();

  logic  s0;
  logic  s1;
  logic rst;
  logic clk;


  day2 DAY2 (.*);

  // clk
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

  initial begin
    rst <= 1'b1;
    @(posedge clk);
    rst <= 1'b0;
    @(posedge clk);
    for (int i = 0; i < 10; i++) begin
      rst = $random%2;
      #5;
    end
    $finish();
  end

  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
endmodule