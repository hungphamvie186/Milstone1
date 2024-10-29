module change_decode(
    input wire [5:0] in,       // Đầu vào 6-bit
    output reg [2:0] change    // Đầu ra 3-bit
);

    
        // Gán giá trị cho từng bit của tín hiệu change
  // Sử dụng khối always để gán giá trị cho reg
    always @(*) begin
        // Gán giá trị cho từng bit của tín hiệu change
        change[2] = in[4] & ~in[3] & in[2] & ~in[1] & ~in[0];
        change[1] = ~in[4] & in[3] & in[1] & (in[2] | ~in[0]);
        change[0] = ~in[4] & in[2] & in[0] & (in[3] | ~in[1]);
    end
  

endmodule

