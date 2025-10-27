
module alu_32b(
  input clk,rst,
  input [31:0] a,
  input [31:0] b,
  input [3:0] alu_sel,
  output reg [63:0] out);
  
  always@(posedge clk or posedge rst)begin
    if(rst)begin
      out <= 64'bx;
    end
      else begin
        case(alu_sel)
          4'b0000:out <= a+b;   //add
          4'b0001:out <= a-b;   //sub
          4'b0010:out<= a*b;    //mul
          4'b0011:out <= a/b;   //div
          4'b0100:out <= a>>1;  //r shift
          4'b0101:out <= a<<b;  //l shift
          4'b0110:out <= a&b;  //and
          4'b0111:out <= a|b;  //or
          4'b1000:out <= ~(a&b);  //nand
          4'b1001:out <= ~(a|b);  //nor
          4'b1010:out <= a^b;  //xor
          4'b1011:out <= ~(a^b);  //xnor
          4'b1100:out <= (a>b)?a:b;   //greater
          4'b1101:out <= (a==b)?1'b1:1'b0;  //equality
          4'b1110:out <= (a<b)?a:b;  //lesser
          4'b1111:out <= 64'bx;  //default
        endcase
    end
  end

endmodule
