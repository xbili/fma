// Full-adder gate level design, 3 bits to 2 bits.
module full_adder(sum, cout, a, b, cin);

// INPUTS

input a, b;
input cin;

// OUTPUTS

output sum;
output cout;

// Internal wire declarations.

wire s1;
wire c1, c2;

// Gate instantiations.

// First half adder sum and carry
xor(s1, a, b);
and(c1, a, b);

// Second half adder
xor(sum, s1, cin);
and(c2, s1, cin);

// Carry out from both adders
or(cout, c1, c2);

endmodule
