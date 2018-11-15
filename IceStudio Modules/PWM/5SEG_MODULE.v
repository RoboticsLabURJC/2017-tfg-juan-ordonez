localparam pulses_1seg = 12504800;
reg [24:0] contador = 25'd1;
reg aux = 1;

localparam START_5seg = 2'd0;
localparam MOTOR_MOVE = 2'd1;

reg [1:0] state = START_5seg;

always @(posedge clock)
begin
  case(state)

    START_5seg:
    begin
      aux<= 1'b1;
      contador <= (contador == pulses_1seg) ? 0 : (contador + 1);
      state <=MOTOR_MOVE;
      if(contador == pulses_1seg)
      begin
        contador <= 25'd0;
        state <=MOTOR_MOVE;
      end
      else begin
        contador <= contador + 25'd1;
        state <= START_5seg;
      end
    end


    MOTOR_MOVE:
    begin
      aux<=1'b0;
      state<=MOTOR_MOVE;
    end

   endcase 
end

assign ready = aux; 