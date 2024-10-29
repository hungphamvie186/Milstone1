module cla_6bit 

( 
    input wire [5:0] A, B,
    input wire Cin,
    output reg [5:0] S
   // output reg Co
);
    wire [5:0] P, G;
    wire [6:0] C;
    assign C[0] = Cin;

    generate
	genvar i;
	for (i = 0; i < 6; i = i + 1) begin : adder_loop

	assign G[i] = A[i] & B[i];    // Generate

        assign P[i] = A[i] ^ B[i];    // Propagate

        assign C[i+1] = G[i] | (P[i] & C[i]); // Carry

	assign S[i] = P[i] ^ C[i];    // Sum


        end
    endgenerate
	
	//assign Co=C[6];

endmodule


