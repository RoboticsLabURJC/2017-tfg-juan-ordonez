

localparam conversion = 250/32768;  
reg [15:0] vel_angular = 16'd0;

always(posedge ready)
begin
  vel_angular <= value*conversion;
end

assign angle = vel_angular;