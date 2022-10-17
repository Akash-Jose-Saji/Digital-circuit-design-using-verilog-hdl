module one_and_half_divider(input clkin,output y);reg [2:0]x=4;
reg k;
always @(posedge clkin)
x<={x[0],x[2:1]};
always @(negedge clkin)k<=x[2];
assign y=k^x[0];
endmodule
