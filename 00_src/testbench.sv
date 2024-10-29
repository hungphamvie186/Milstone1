module testbench();

    // Declare inputs as regs and outputs as wires
    reg [31:0] a, b;
    reg Cin;
    wire [31:0] S;
    // Instantiate the CLA 32-bit module

    cla_32bit dut (
        .a(a),
        .b(b),
        .Cin(Cin),
        .S(S)
    );

    // Setup for waveform dumping
    initial begin
        $shm_open("waves.shm");
        $shm_probe("AS");
    end
    // Initial block for stimulus generation

    initial begin
        // Display initial values
        $monitor("At time %t: a = %d, b = %d, Cin = %b, S = %d", $time, a, b, Cin, S);
        // Test cases
        a = 32'd59999999; b = 32'd60999999; Cin = 1'b0;
        #100;
        a = 32'd8; b = 32'd10; Cin = 1'b0;
        #100;
        a = 32'd51; b = 32'd9; Cin = 1'b1;
        #100;
        a = 32'd3451; b = 32'd419; Cin = 1'b1;
        #100;
        $finish;
    end
endmodule


