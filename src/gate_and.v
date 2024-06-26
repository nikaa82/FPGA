module gate_and2(
    input a ,b,
    output out
);
    wire n1;
    supply1 pwr;
    supply0 gnd;

    pmos (n1, pwr, ~a);
    pmos (out, n1, ~b);
    nmos (gnd, out, ~a);
    nmos (gnd, out, ~b);
endmodule

