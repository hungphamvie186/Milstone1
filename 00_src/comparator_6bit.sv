module comparator_6bit (

    input [5:0] a,
    output reg result
);
	logic [5:0] b;
    reg [1:0] ab;
    always @(*) begin
        integer i;
        result = 1'b0;
	    b =6'd19;
        for (i = 5; i >= 0; i = i - 1) begin
            ab = {a[i], b[i]};
            if (ab == 2'b10) begin
                result = 1'b1;
                break;
            end else if (ab == 2'b01) begin
                result = 1'b0;
                break;
            end
        end
    end

endmodule


