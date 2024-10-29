module design_test();
    reg clk;               // Tín hiệu clock
    reg rst_n;             // Tín hiệu reset active-low
    reg nickel;            // Đầu vào đồng 5 xu
    reg dime;              // Đầu vào đồng 10 xu
    reg quarter;           // Đầu vào đồng 25 xu
    wire soda;             // Đầu ra phát soda
    wire [2:0] change;     // Đầu ra tiền thừa (change)

    // Khởi tạo module vending_machine
    vending_machine dut (
        .clk(clk),
        .rst_n(rst_n),
        .nickel(nickel),
        .dime(dime),
        .quarter(quarter),
        .soda(soda),
        .change(change)
    );
    initial begin
        $fsdbDumpfile("design_test.fsdb");
        $fsdbDumpvars(0, design_test, "+all","+mda");
    end
      always #5 clk = ~clk;

    // Khối kiểm tra
    initial begin
        // Khởi tạo tín hiệu
        clk = 0;
        rst_n = 0;
        nickel = 0;
        dime = 0;
        quarter = 0;

        // Reset hệ thống
        #10;
        rst_n = 1;

        // Test case 1: Đưa vào 5 xu
        #10;
        nickel = 1;
        #10;
        nickel = 0;

        // Test case 2: Đưa vào 10 xu
        #10;
        dime = 1;
        #10;
        dime = 0;

        // Test case 3: Đưa vào 25 xu
        #10;
        quarter = 1;
        #10;
        quarter = 0;

        // Test case 4: Đưa vào 5 xu và 10 xu (tổng 15 xu)
        #10;
        nickel = 1;
        #10;
        nickel = 0;
        dime = 1;
        #10;
        dime = 0;

        // Test case 5: Đưa vào 25 xu và 10 xu (tổng 35 xu, đủ để mua soda)
        #10;
        quarter = 1;
        #10;
        quarter = 0;
        dime = 1;
        #10;
        dime = 0;

        // Đợi một thời gian để quan sát kết quả
        #50;

        // Kết thúc mô phỏng
        $finish;
    end

    // Theo dõi giá trị của tín hiệu
    initial begin
        $monitor("Time: %0t | Soda: %b | Change: %b | Nickel: %b | Dime: %b | Quarter: %b", 
                 $time, soda, change, nickel, dime, quarter);
    end

endmodule
