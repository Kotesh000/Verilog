module full_adder(input a,b,cin, output s,c);
wire w0,w1,w2;
half_adder g1(.a(a), .b(b), .sum(w0), .carry(w1));
half_adder g2(.a(w0), .b(cin), .sum(s), .carry(w2));
assign c = w1 | w2;
endmodule
