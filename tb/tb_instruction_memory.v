`timescale 1ns/1ps

module instruction_memory_tb;

reg [3:0] addr;
wire [7:0] instruction;

// Instantiate DUT
instruction_memory uut (
    .addr(addr),
    .instruction(instruction)
);

initial begin
    $dumpfile("imem.vcd");
    $dumpvars(0, instruction_memory_tb);

    addr = 0;
    #10 addr = 1;
    #10 addr = 2;
    #10 addr = 3;
    #10 addr = 10;
    #10 addr = 15;

    #20 $finish;
end

initial begin
    $monitor("Time=%0t | addr=%d | instruction=%b", 
              $time, addr, instruction);
end

endmodule
