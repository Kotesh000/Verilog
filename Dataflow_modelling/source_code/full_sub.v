module full_sub(input a,b,bin, output d,bout);
wire w1,w2,w3;
half_subtractor g1(a,b,w1,w2);
half_subtractor g2(bin,w1,w3,d);
assign bout = w2|w3;
endmodule
