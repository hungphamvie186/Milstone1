module mux (
    input  wire [1:0] sel,  // 2-bit selection input
    output reg  [5:0]  y    // Output
);

    // Combinational logic for MUX
    always @(*) begin
        case (sel)
            2'b00: y = 6'd0; 
            2'b01: y = 6'd5; 
            2'b10: y = 6'd10; 
            2'b11: y = 6'd25; 
            default: y = 6'd0;  // Default case (should not happen)
        endcase
    end

endmodule

