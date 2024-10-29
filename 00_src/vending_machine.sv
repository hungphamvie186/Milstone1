module vending_machine(
    input wire clk,          // Clock input
    input wire rst_n,        // Asynchronous active-low reset
    input wire nickel,       // ¢5 coin input
    input wire dime,         // ¢10 coin input
    input wire quarter,      // ¢25 coin input
    output reg soda,         // Output signal to dispense soda
    output reg [2:0] change  // Output for the change
);
  logic start;
  logic [1:0] sel;
  logic [5:0] y;

  logic y_ld;
  logic y_rst;
  logic [5:0] y_out;

  logic [5:0] total_in;
  logic [5:0] total_out;

  logic  total_ld;
  logic  total_rst;

  logic  change_ld;
  logic  change_rst;

  logic  comp_result;

  logic [5:0] sub_out;
  
  logic [5:0] change_in;

  encoder  encoder_block     (.start(start),
	  		      .nickel(nickel),
			      .dime(dime),
			      .quarter(quarter),
			      .sel(sel)
			      );

  mux  mux_block             (.sel(sel),
			      .y(y)
			      );

  register y_reg             (.rst(y_rst),
			      .clk(clk),
			      .en(1'b1),
			      .D(y),
			      .Q(y_out)
			      );

  cla_6bit  adder	     (.A(total_out),
			      .B(y_out),
			      .Cin(1'b0),
			      .S(total_in)
			      );

  register  total_reg	     (.rst(total_rst),
			      .clk(clk),
			      .en(total_ld),
			      .D(total_in),
			      .Q(total_out)
			      );

  comparator_6bit  comp	     (.a(total_out),
			      .result(comp_result)
			      );
  cla_6bit  sub		     (.A(total_out),
			      .B(6'b101100), //-20
			      .Cin(1'b10),
			      .S(sub_out)
			      );

  register  change_reg	     (.rst(change_rst),
			      .clk(clk),
			      .en(comp_result),
			      .D(sub_out),
			      .Q(change_in)
			      );

 change_decode  change_decoder (.in(change_in),
			        .change(change)
			      );
 
 FSM FSM_block 		     (.clk(clk),
	 		      .rst_n(rst_n),
	 		      .start(start),
	 		      .comp_result(comp_result),
			      .total_ld(total_ld),
			      .total_rst(total_rst),
			      .change_ld(change_ld),
			      .change_rst(change_rst),
			      .soda(soda)
			      );



endmodule

