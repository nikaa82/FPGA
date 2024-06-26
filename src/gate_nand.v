module gate_nand2 (
    input a, b,
    output out
);
    wire n1;
    supply1 pwr;
    supply0 gnd;

    pmos (out, pwr, ~a);
    pmos (out, pwr, ~b);
    nmos (n1, out, ~a);
    nmos (gnd, n1, ~b);
endmodule