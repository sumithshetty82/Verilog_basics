/* Half sub declaration
saved in  file half_sub.v */
module half_sub(a,b,difference,borrow);
    input a, b;
    output difference, borrow;
    wire not_o;
    xor x1(difference, a, b);
    not n1(not_o, a);
    and a1(borrow, not_o, b);
endmodule
