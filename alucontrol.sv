module alu_control(ALUop,func,aluctl);
input [1:0]ALUop,[6:0]func;
output reg[2:0]aluctl;

always@(ALUop,func)
begin
if(ALUop == 0)
aluctl=2;

else if(ALUop == 1)
aluctl=6;

else 
     begin
        case(func)
    32:aluctl=2;
    34:aluctl=6;
    36:aluctl=0;
    37:aluctl=1;
    42:aluctl=7;  
        endcase
     
end

endmodule
