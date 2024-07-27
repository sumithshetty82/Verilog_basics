/* Test bench for mux2_1.v 
is saved in file mux2_2_tb.v */
`include "mux2_1.v"

module mux2_1_tb;
    reg i1, i2, select;
    wire out;

    mux2_1 mux2_1_1(i1, i2, select, out);

    initial
        begin
            $dumpfile("mux2_1_tb.vcd");
            $dumpvars(0,mux2_1_tb);
            i1 = 0 ; i2 = 0; select = 0;
            #1
            i1 = 0 ; i2 = 0; select = 1;
            #1
            i1 = 0 ; i2 = 1; select = 0;
            #1
            i1 = 0 ; i2 = 1; select = 1;
            #1
            i1 = 1 ; i2 = 0; select = 0;
            #1
            i1 = 1 ; i2 = 0; select = 1;
            #1
            i1 = 1 ; i2 = 1; select = 0;
            #1
            i1 = 1 ; i2 = 1; select = 1;
        end

endmodule

