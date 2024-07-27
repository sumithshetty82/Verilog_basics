/* Test bench for half_sub.v 
is saved in file half_sub_tb.v */
`include "half_sub.v"
module half_sub_tb;
    reg a, b;
    wire difference, borrow;

    half_sub sub1(a, b , difference, borrow);

    initial
        begin
            $dumpfile("half_sub.vcd");
            $dumpvars(0,half_sub_tb);
            a = 0 ; b = 0 ;
            #1
            a = 0 ; b = 1 ;
            #1
            a = 1 ; b = 0 ;
            #1
            a = 1 ; b = 1 ;
        end
endmodule

