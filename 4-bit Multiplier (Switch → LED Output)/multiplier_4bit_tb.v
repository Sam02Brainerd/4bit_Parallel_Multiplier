`timescale 1ns/1ps

module multiplier_4bit_tb;

// Inputs
reg [3:0] A;
reg [3:0] B;

// Output
wire [7:0] P;

// Instantiate the DUT (Device Under Test)
multiplier_4bit uut (
    .A(A),
    .B(B),
    .P(P)
);

initial begin
    $display("Time\t A\t B\t Product");
    $monitor("%0t\t %d\t %d\t %d", $time, A, B, P);

    // Test cases
    A = 4'd0;  B = 4'd0;  #10;
    A = 4'd3;  B = 4'd5;  #10;
    A = 4'd7;  B = 4'd2;  #10;
    A = 4'd9;  B = 4'd3;  #10;
    A = 4'd15; B = 4'd15; #10;
    A = 4'd10; B = 4'd4;  #10;

    $finish;
end

endmodule
