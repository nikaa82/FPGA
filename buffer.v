module buffer(
    input a,
    output out
);
    supply1 pwr;
    supply0 gnd;
    
    pmos(out, pwr, ~a);
    nmos(gnd, out, ~a);
endmodule