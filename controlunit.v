module controlunit(op,fn,clk,reg_write,reg_dst,reg_insrc,ALU_src,add_sub,logic_fn,fn_class,data_read,data_write,brtype,PCsrc);
input [5:0]op,fn;
input clk;
output reg [1:0]reg_dst,reg_insrc,logic_fn,fn_class,brtype,PCsrc;
output reg reg_write,ALU_src,add_sub,data_read,data_write;
always @(posedge clk)
begin
case({op,fn})
12'b001111xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'b00;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100000:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'b0;
	logic_fn <= 2'bx;
	fn_class <= 2'b10;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100010:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'b1;
	logic_fn <= 2'bx;
	fn_class <= 2'b10;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000101010:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'b1;
	logic_fn <= 2'bx;
	fn_class <= 2'b01;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b001000xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'b0;
	logic_fn <= 2'bx;
	fn_class <= 2'b10;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b001010xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'b1;
	logic_fn <= 2'bx;
	fn_class <= 2'b01;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100100:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'bx;
	logic_fn <= 2'b00;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100101:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'bx;
	logic_fn <= 2'b01;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100110:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'bx;
	logic_fn <= 2'b10;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000000100111:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b01;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b0;
	add_sub <= 1'bx;
	logic_fn <= 2'b11;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b001100xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'bx;
	logic_fn <= 2'b00;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b001101xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'b1;
	logic_fn <= 2'b01;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b001110xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b01;
	ALU_src <= 1'b1;
	add_sub <= 1'b1;
	logic_fn <= 2'b10;
	fn_class <= 2'b11;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b100011xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b00;
	reg_insrc <= 2'b00;
	ALU_src <= 1'b1;
	add_sub <= 1'b0;
	logic_fn <= 2'bx;
	fn_class <= 2'b10;
	data_read <= 1'b1;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b101011xxxxxx:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'b1;
	add_sub <= 1'b0;
	logic_fn <= 2'bx;
	fn_class <= 2'b10;
	data_read <= 1'b0;
	data_write <= 1'b1;
	brtype <= 2'b00;
	PCsrc <=2'b00;
end
12'b000010xxxxxx:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'bx;
	PCsrc <=2'b01;
end
12'b000000001000:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'bx;
	PCsrc <=2'b10;
end
12'b000001xxxxxx:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b11;
	PCsrc <=2'b00;
end
12'b000100xxxxxx:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b01;
	PCsrc <=2'b00;
end
12'b000101xxxxxx:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b10;
	PCsrc <=2'b00;
end
12'b000011xxxxxx:
begin
	reg_write <= 1'b1;
	reg_dst <= 2'b10;
	reg_insrc <= 2'b10;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'b00;
	PCsrc <=2'b01;
end
12'b000000001100:
begin
	reg_write <= 1'b0;
	reg_dst <= 2'bx;
	reg_insrc <= 2'bx;
	ALU_src <= 1'bx;
	add_sub <= 1'bx;
	logic_fn <= 2'bx;
	fn_class <= 2'bx;
	data_read <= 1'b0;
	data_write <= 1'b0;
	brtype <= 2'bx;
	PCsrc <=2'b11;
end
endcase
end
endmodule
