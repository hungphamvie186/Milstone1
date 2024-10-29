module FSM(
    input wire clk,          // Clock input
    input wire start,         
    input wire comp_result,         
    input wire rst_n,        // Asynchronous active-low reset

    output reg soda,     // Output signal to dispense soda

    output reg y_ld,
    output reg y_rst,

    output reg total_ld,
    output reg total_rst,

    output reg change_ld,
    output reg change_rst
);

    // State Declaration
    typedef enum reg [1:0] {
        Idle = 2'b00,
        Load = 2'b01,
        Vend = 2'b10
    } state_t;

    state_t state, next_state;

   


    // State Transition
    always_ff @(posedge clk) begin
        if (!rst_n)
            state <= Idle;
        else
            state <= next_state;
    end

    // Next State Logic & Output Logic
    always @(state or start or comp_result or next_state)  begin
        case(state)

            Idle: begin
               if (start)
                    next_state = Load;
	       else 
                    next_state = Idle;
            end
            
            Load: begin
                if (comp_result)
                    next_state = Vend;
		else 
                    next_state = Load;
            end
            
            Vend: begin
                next_state = Idle;
            end

            default: begin
                next_state = Idle;
            end
        endcase
    end
  always @(state or start or comp_result or next_state) 
  begin
    total_ld = 1'b0;
    total_rst = 1'b1;
    y_ld =1'b0;
    y_rst =1'b1;
    change_ld = 1'b0;
    change_rst = 1'b1;
    soda = 1'b0;
    case (state)
      	Idle: begin
		total_ld = 1'b0;
		total_rst = 1'b1;
		y_ld = 1'b1;
		y_rst = 1'b0;
    		change_ld = 1'b0;
    		change_rst = 1'b1;
    		soda = 1'b0;
             end
	Load: begin
		total_ld = 1'b1;
		total_rst = 1'b0;
		y_ld = 1'b1;
		y_rst = 1'b0;
    		change_ld = 1'b0;
    		change_rst = 1'b0;
    		soda = 1'b0;
             end
	Vend: begin
		total_ld = 1'b0;
		total_rst = 1'b1;
		y_ld = 1'b1;
		y_rst = 1'b0;
    		change_ld = 1'b1;
    		change_rst = 1'b0;
    		soda = 1'b1;
             end
     endcase
     end

endmodule

