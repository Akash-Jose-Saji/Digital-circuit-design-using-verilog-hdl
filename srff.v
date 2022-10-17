module srff(s,r,clk,rst, q,qb);
input s,r,clk,rst;
output q,qb;
reg q,qb;
reg [1:0]sr;
always@(posedge clk,posedge rst)
begin
sr={s,r};
if(rst==0)
begin
case (sr)
2'd1:q=1'b0;
2'd2:q=1'b1;
2'd3:q=1'b1;
default: begin end
endcase
end
else
begin
q=1'b0;
end

qb=~q;
end

end module
