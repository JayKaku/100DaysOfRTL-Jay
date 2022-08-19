module day3_tb();
    reg clk; 
    reg d; 
    reg rstn;
    reg q;
    
    //dff  dff0 (.d(d), .clk(clk), .rstn(rstn), .q(q));
    day3 DAY3 (.*);

    reg [2:0] delay;
    // generate clk
    always #5 clk = ~clk;

    // testcase
    integer i;
    initial begin
        $dumpfile("day3.vcd");
        $dumpvars(0, day3_tb);
        clk <= 0;
        d <= 0;
        rstn <= 0;

        #15 d <= 1;
        // testing with `#10 rstn =1;` produces q = 1
        #10 rstn <= 1;   

        
        for(i=0; i<5; i=i+1) begin
            delay = $random;
            #(delay) d <= i;
        end

        #200 $finish;
    end
endmodule