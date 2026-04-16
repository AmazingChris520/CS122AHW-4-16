module shift_register
(
    input  logic clk,
    input  logic rst,
    input  logic data,
    input  logic wr_en,
    output logic [31:0] out
);

parameter DIRECTION = 0;

always @(posedge clk) begin
    if (rst) begin
        out <= 33'b0;
    end
    else if (wr_en) begin
        if (DIRECTION)
            out <= {data, out[31:1]};
        else
            out <= {out[30:0], data};
    end
end

endmodule