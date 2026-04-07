module top_basys3 (
    input clk,
    input [3:0] A,
    input [3:0] B,
    output reg [6:0] seg,
    output reg [3:0] an
);
wire [7:0] P;
wire [3:0] h, t, o;

multiplier_4bit m1 (.A(A), .B(B), .P(P));
binary_to_bcd bcd1 (.binary(P), .hundreds(h), .tens(t), .ones(o));

reg [19:0] counter = 0;
always @(posedge clk) counter <= counter + 1;

wire [1:0] digit_select = counter[19:18];
reg [3:0] current_digit;

always @(*) begin
    case(digit_select)
        2'b00: begin an = 4'b1110; current_digit = o; end
        2'b01: begin an = 4'b1101; current_digit = t; end
        2'b10: begin an = 4'b1011; current_digit = h; end
        default: begin an = 4'b0111; current_digit = 4'd0; end
    endcase
end

always @(*) begin
    case(current_digit)
        4'd0: seg = 7'b1000000;
        4'd1: seg = 7'b1111001;
        4'd2: seg = 7'b0100100;
        4'd3: seg = 7'b0110000;
        4'd4: seg = 7'b0011001;
        4'd5: seg = 7'b0010010;
        4'd6: seg = 7'b0000010;
        4'd7: seg = 7'b1111000;
        4'd8: seg = 7'b0000000;
        4'd9: seg = 7'b0010000;
        default: seg = 7'b1111111;
    endcase
end

endmodule
