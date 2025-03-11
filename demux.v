module demux(
    input [3:0] Y,
    input [1:0] sel,
    input enable,
    output [3:0] local_lib, [3:0] fire_department, [3:0] school, [3:0] rib_shack
);

    assign local_lib = (enable && sel == 'b00) ? Y : 'b0;
    assign fire_department = (enable && sel == 'b01) ? Y : 'b0;
    assign school = (enable && sel == 'b10) ? Y : 'b0;
    assign rib_shack = (enable && sel == 'b11) ? Y : 'b0;

endmodule