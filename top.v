module top (
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

wire[3:0] out;
wire[1:0] mux_sel = {btnU, btnL};
wire[1:0] demux_sel = {btnR, btnD};

mux mux_inst(
    .sel(mux_sel),
    .enable(btnC),
    .ceo_data(sw[3:0]),
    .my_data(sw[7:4]),
    .fred_data(sw[11:8]),
    .jill_data(sw[15:12]),
    .Y(out)
);

demux demux_inst(
    .sel(demux_sel),
    .enable(btnC),
    .Y(out),
    .local_lib(led[3:0]),
    .fire_department(led[7:4]),
    .school(led[11:8]),
    .rib_shack(led[15:12])
);

endmodule
