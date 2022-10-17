module half_adder(input a,b, output
sum,cout,output [1:0]z);assign z=a+b;
assign sum=z[0]; assign
cout=z[1];
endmodule
module full_adder(input a,b,cin,output sum,cout,output [1:0]z);assign z=a+b+cin;
assign sum=z[0]; assign
cout=z[1];
endmodule
module two_bit_adder(input [1:0]a,b, output[1:0]sum,output
cout,output[2:0]z);wire x1;
half_adder u0(a[0],b[0],sum[0],x1);
full_adder u1(a[1],b[1],x1,sum[1],cout);assign
z={cout,sum[1],sum[0]}; endmodule
module three_bit_adder(input [2:0]a,b, output[2:0]sum,output
cout,output[3:0]z);wire x1,x2;
half_adder u0(a[0],b[0],sum[0],x1);
full_adder u1(a[1],b[1],x1,sum[1],x2);
full_adder u2 (a[2],b[2],x2,sum[2],cout);
assign z={cout,sum[2],sum[1],sum[0]};
endmodule
module four_bit_adder(input [3:0]a,b, output[3:0]sum,output
cout,output [4:0]z);
wire x1,x2,x3;
half_adder u0(a[0],b[0],sum[0],x1);
full_adder u1(a[1],b[1],x1,sum[1],x2);
full_adder u2 (a[2],b[2],x2,sum[2],x3);
full_adder u3 (a[3],b[3],x3,sum[3],cout);
assign z={cout,sum[3],sum[2],sum[1],sum[0]};endmodule
module five_bit_adder(input [4:0]a,b,
output[4:0]sum,output cout,output [5:0]z);wire x1,x2,x3,x4;
half_adder u0(a[0],b[0],sum[0],x1);
full_adder u1(a[1],b[1],x1,sum[1],x2);
full_adder u2 (a[2],b[2],x2,sum[2],x3);
full_adder u3 (a[3],b[3],x3,sum[3],x4);
full_adder u4(a[4],b[4],x4,sum[4],cout);
assign z={cout,sum[4],sum[3],sum[2],sum[1],sum[0]};endmodule
module six_bit_adder(input [5:0]a,b,
output[5:0]sum,output cout,output [6:0]z);wire
x1,x2,x3,x4,x5;
half_adder u0(a[0],b[0],sum[0],x1);
full_adder u1(a[1],b[1],x1,sum[1],x2);
full_adder u2 (a[2],b[2],x2,sum[2],x3);
full_adder u3 (a[3],b[3],x3,sum[3],x4);
full_adder u4 (a[4],b[4],x4,sum[4],x5);
full_adder u5 (a[5],b[5],x5,sum[5],cout);
assign z={cout,sum[5],sum[4],sum[3],sum[2],sum[1],sum[0]};endmodule
module ones_counter(input [63:0]in,output [6:0] y,output onehot,onecold);
wire [63:0] in2;wire[47:0]in3;wire[31:0]in4;wire[19:0]in5;wire [11:0]in6;
half_adder k0[31:0] (.a(in[63:32]),.b(in[31:0]),.z(in2));
two_bit_adder k1[15:0](.a(in2[63:32]),.b(in2[31:0]),.z(in3));
three_bit_adder k2[7:0](.a(in3[47:24]),.b(in3[23:0]),.z(in4));
four_bit_adder k3[3:0] (.a(in4[31:16]),.b(in4[15:0]),.z(in5));
five_bit_adder k4 [1:0](.a(in5[19:10]),.b(in5[9:0]),.z(in6));
six_bit_adder k5(.a(in6[11:6]),.b(in6[5:0]),.z(y));
assign onehot=y==1?1:0; assign
onecold=y==63?1:0;endmodule
