module jkff(j,k,clk,rst, q,qb);
input j,k,clk,rst;
output q,qb;
reg q,qb;
reg [1:0]jk;
always@(posedge clk,posedge rst)
begin
jk={j,k};
if(rst==0)
begin
case (jk)
2'd1:q=1'b0;
2'd2:q=1'b1;
2'd3:q=~q;
default: begin end
endcase
end
else

q=1'b0;

qb=~q;

end
end module
