// Verilog code for Test bench
// Define module
module Ripple_Carry_Adder_tb ;
reg [ 1 : 0 ]a; // Define all I/O ports
reg [ 1 : 0 ]b;
reg cin;
wire [ 1 : 0 ]Sum ;
wire C_Out ;
// Map all th I/O ports with DUT
Ripple_Carry_Adder uut (.a(a) , .b(b) , .cin(cin) , .Sum(Sum) , . C_Out ( C_Out ));
initial begin // Initialize the pins with different combination of inputs .

a=2' b01 ; b=2' b11; cin =1' b1; # 100;
a =2' b11; b=2' b11; cin =1' b1; # 100;
a =2' b10; b=2' b01; cin =1' b0; # 100;
a =2' b00; b=2' b11; cin =1' b0; # 100;
end // End of initial block

endmodule
