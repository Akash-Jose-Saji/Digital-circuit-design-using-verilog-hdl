module three_and_half_divider(input clkin,output y);
reg [6:0]x=7'b1100000;
reg k;
always @(posedge clkin)
x<={x[0],x[6:1]};
always @(negedge clkin)k<=x[4];
assign y=k^x[0];
endmodule
