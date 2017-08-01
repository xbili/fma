module half_adder(sum, cout, a, b);

input a, b;
output sum, cout;

and(cout, a, b);
xor(sum, a, b);

endmodule
