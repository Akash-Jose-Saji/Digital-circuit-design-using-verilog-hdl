module two_and_half_divider(input clkin,output y);reg [4:0]x=5'b01000;
reg k;
always @(posedge clkin)
x<={x[0],x[4:1]};
always @(negedge clkin)k<=x[3];
assign y=k^x[0];
endmodule
