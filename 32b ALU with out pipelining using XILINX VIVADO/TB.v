
module tb;
  reg clk,rst;
  reg [31:0]a;
  reg [31:0]b;
  reg [3:0] alu_sel;
  wire [63:0] out;
  integer i;
  alu_32b dut(clk,rst,a,b,alu_sel,out);
  
  always #5 clk=~clk;
  
  initial begin
    clk = 1;
    rst=1;
    a=64'bx;
    b=64'bx;
    alu_sel=64'bx;
    
    #10;
    rst=0;
    
    #10
    a=32'h1234ABCD;
    b=32'h00FF00FF;
    
    for (i = 0;i<16;i=i+1) begin
      alu_sel=i;
      #10;
    end
    #10; $finish;
  end
endmodule
