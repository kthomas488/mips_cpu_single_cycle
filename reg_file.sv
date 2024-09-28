module register_file(r1,r2,wr_reg,w_data,read_data1,read_data2);
input [4:0]r1,r2,wr_reg;
output [31:0]read_data1,read_data2;
input [31:0]w_data;

reg [31:0]mem[0:31];

initial
 begin
  for(i=0;i<32;i=i+1)
  mem[i]=32'b0;

always@(wr_reg)
 begin
  if(wr_reg==1)
   mem[wr_reg]=w_data;
 end

assign read_data1=mem[r1];
assign read_data2=mem[r2];

endmodule
