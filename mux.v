module mux(
    input [3:0] ceo_data, [3:0] my_data, [3:0] fred_data, [3:0] jill_data,
    input [1:0] sel, 
    input enable,
    output [3:0] Y
);

    assign Y = enable == 'b1 ?
               sel == 'b00 ? ceo_data :
               sel == 'b01 ? my_data :
               sel == 'b10 ? fred_data : jill_data : 0;

endmodule