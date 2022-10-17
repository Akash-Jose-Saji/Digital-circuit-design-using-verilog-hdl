// Verilog code for 2 bit ripple_carry_adder
// Define module
module Ripple_Carry_Adder (

input [ 1 : 0 ]a,b,
input cin , // Define all input ports
output [ 1 : 0 ]Sum ,
output C_Out ); // Define all ouput ports
wire c1; // Define intermediate carry as c1

Full_adder FA0(a[ 0 ] ,b[ 0 ] ,cin ,Sum[ 0 ] ,c1 ); // instantiate full_adder (FA0)
Full_adder FA1(a[ 1 ] ,b[ 1 ] ,c1 ,Sum[ 1 ] ,C_Out ); // instantiate full_adder (FA1)

endmodule
