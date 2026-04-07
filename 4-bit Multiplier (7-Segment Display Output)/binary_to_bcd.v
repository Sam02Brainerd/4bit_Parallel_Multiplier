module binary_to_bcd (
    input [7:0] binary,
    output reg [3:0] hundreds,
    output reg [3:0] tens,
    output reg [3:0] ones
);
integer i;
reg [19:0] shift;
always @(*) begin
    shift = 20'd0;
    shift[7:0] = binary;
    for (i = 0; i < 8; i = i + 1) begin
        if (shift[11:8] >= 5) shift[11:8] = shift[11:8] + 3;
        if (shift[15:12] >= 5) shift[15:12] = shift[15:12] + 3;
        if (shift[19:16] >= 5) shift[19:16] = shift[19:16] + 3;
        shift = shift << 1;
    end
    hundreds = shift[19:16];
    tens     = shift[15:12];
    ones     = shift[11:8];
end
endmodule
