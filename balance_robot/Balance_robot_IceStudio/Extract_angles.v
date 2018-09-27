reg [7:0] data1 = 8'd0;
reg [7:0] data2 = 8'd0;
reg [7:0] decimal_part_reg = 8'd0;
reg [7:0] integer_part_reg = 8'd0;

localparam DATA1 = 1'b0;
localparam DATA2 = 1'b1;
localparam AUX = 1'b0;
localparam ASSIGN_VALUES = 1'b1;

reg state1= DATA1;
reg state2= AUX;
reg direction_reg= 1'b0;

always @(posedge byte_ready)
begin
    case(state1)
    DATA1:
    begin
      data1<=data;
      state1<=DATA2;
    end
    DATA2:
    begin
      data2<=data;
      state1<=DATA1;
    end
    endcase
end


always @(negedge byte_ready)
begin
    case(state2)
    AUX:
    begin
      state2<= ASSIGN_VALUES;
    end
    ASSIGN_VALUES:
    begin
      direction_reg<=direction_arduino;
      decimal_part_reg<=data2;
      integer_part_reg<= data1;
      state2<=AUX;
    end
    endcase
end
assign direction_motors= direction_reg;
assign decimal_part = decimal_part_reg;
assign integer_part = integer_part_reg;