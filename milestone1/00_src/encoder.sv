module encoder 

( 
    input wire  nickel, dime, quarter,
    output reg [1:0] sel,
    output reg  start
);
    assign sel[1] = ~nickel & ( quarter ^ dime );
    assign sel[0] = ~dime & ( quarter ^ nickel );
	assign start = dime | quarter | nickel;
endmodule


