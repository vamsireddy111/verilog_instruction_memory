module instruction_memory (
    input [3:0] addr,        // Address from PC
    output reg [7:0] instruction
);

// Memory declaration (16 x 8-bit)
reg [7:0] memory [0:15];

initial begin
    // Preload instructions
    memory[0]  = 8'b00010010;
    memory[1]  = 8'b00100011;
    memory[2]  = 8'b00110100;
    memory[3]  = 8'b01000101;
    memory[4]  = 8'b01010110;
    memory[5]  = 8'b01100111;
    memory[6]  = 8'b01111000;
    memory[7]  = 8'b10001001;
    memory[8]  = 8'b10011010;
    memory[9]  = 8'b10101011;
    memory[10] = 8'b10111100;
    memory[11] = 8'b11001101;
    memory[12] = 8'b11011110;
    memory[13] = 8'b11101111;
    memory[14] = 8'b11110000;
    memory[15] = 8'b00001111;
end

always @(*) begin
    instruction = memory[addr];
end

endmodule
