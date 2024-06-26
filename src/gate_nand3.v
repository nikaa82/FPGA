module gate_nand3(
    input a, b, c,
    output out
);
    wire w1, w2;
    supply1 pwr;
    supply0 gnd;

    pmos (out, pwr, a);
    pmos (out, pwr, b);
    pmos (out, pwr, c);
    nmos (w1, out, a);
    nmos (w2, w1, b);
    nmos (gnd, w2, c);
    

endmodule