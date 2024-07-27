/* mux _1 declaration
saved in  file hmux2_1.v */
module mux2_1(i1, i2, select, out);
    input i1, i2, select;
    output out;
    //wire select_inv;
    //wire a1_o, a2_o;
    //not n1(select_inv,select);
    //and a1(a1_o, a, select_inv);
    //and a1(a2_o, b, select);
    //or o1(out, a1_o, a2_o);
    assign out = i1 * !select + i2 * select;
endmodule

