module data_mem(clock,address,write_data,read_data,MemWrite,MemRead);
input [6:0]address;
input clock;
input MemWrite,MemRead;
input [31:0] WriteData;

output reg[31:0]read_data;

reg[31:0]Mem[0:127];

initial
 begin
   Mem[0]=5;
   Mem[1]=6;
   Mem[2]=7;
 end

always@(posedge clock)
 begin
  if(MemWrite == 1)
    Mem[address]<= WriteData;
  end

always@(posedge clock)
begin
 if(MemRead)
  read_data<=Mem[address];
end

endmodule
