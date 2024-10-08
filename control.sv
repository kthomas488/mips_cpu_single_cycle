module control(opcode,RegDst,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite);

input logic[5:0]opcode;
output logic RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;
output logic[1:0]ALUOp;

always@(*)
begin
 case(opcode)
 0:RegDst<=1'b1;
   Branch<=1'b0;
   MemRead<=1'b0;
   MemToReg<=1'b0;
   MemWrite<=1'b0;
   ALUSrc<=1'b0;
   RegWrite<=1'b1;
   ALUOp<=2'd2;
35:RegDst<=1'b0;
   Branch<=1'b0;
   MemRead<=1'b1;
   MemToReg<=1'b1;
   MemWrite<=1'b0;
   ALUSrc<=1'b1;
   RegWrite<=1'b1;
   ALUOp<=2'd0;
43:RegDst<=1'b0;
   Branch<=1'b0;
   MemRead<=1'b1;
   MemToReg<=1'b0;
   MemWrite<=1'b1;
   ALUSrc<=1'b1;
   RegWrite<=1'b0;
   ALUOp<=2'd3;
4: begin
   RegDst<=1'b0;
   Branch<=1'b1;
   MemRead<=1'b0;
   MemToReg<=1'b0;
   MemWrite<=1'b0;
   ALUSrc<=1'b0;
   RegWrite<=1'b0;
   ALUOp<=2'd1;
   end
endcase

end
endmodule
