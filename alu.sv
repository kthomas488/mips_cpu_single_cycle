module alu(a,b,alu_result,alu_ctl,zero);
input [3:0]alu_ctl;
input [31:0]a,b;
output reg[31:0] alu_result;
output reg zero;

assign zero = (alu_result == 0);

always@(a,b,alu_ctl);
begin
 case(alu_ctl)
   0:alu_result<=a&b;
   1:alu_result<=a|b;
   2:alu_result<=a+b;
   6:alu_result<=a-b;
   7:alu_result<=a<b?1:0;
   12:alu_result<= ~(a|b);
  default:alu_result<=0;
  endcase
end

endmodule
