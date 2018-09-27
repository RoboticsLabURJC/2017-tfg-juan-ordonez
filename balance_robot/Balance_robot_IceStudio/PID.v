reg [15:0] velocity_reg = 16'd0;
localparam aux = 16'd100;
reg direction_reg= 1'b0;

always@(posedge data_ready)
begin
 velocity_reg<=Kp*((data1*aux)+data2);
 direction_reg<=direction_arduino;
end

assign velocity = velocity_reg + 13000;
assign direction_motors = direction_reg;

//*******************************************************************************************************************//
localparam STATE1 = 1'b0;
localparam STATE2 = 1'b1;

reg state = STATE1;

reg[7:0] data1 = 8'd0;
reg[7:0] data2 = 8'd0;
reg[15:0] I_reg = 8'd0;


always @(posedge data_ready)
begin
  case(state)
  STATE1:
  begin
    data1<= integer_part*100; 
    data2<= decimal_part;
    state<= STATE2;
  end
  STATE2:
  begin
    I_reg=Kd*(((integer_part+100)+decimal_part)-(data1+data2));
    data1=integer_part*100;
    data2=decimal_part;
    state<=STATE2;
  end
  endcase
end

assign velocity = I_reg;