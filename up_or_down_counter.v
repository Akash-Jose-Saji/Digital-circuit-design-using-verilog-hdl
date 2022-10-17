module up_or_down_counter(input clk,up,CE,output reg[2:0] q=0);
always @(posedge clk)
begin
if(CE)
begin
if(up)
q<=q+1;
else
q<=q-1;
end
end
endmodule
