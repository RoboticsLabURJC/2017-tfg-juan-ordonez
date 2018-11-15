

localparam pulses_nedded = 240096; //que viene de 20ms/ 8,33*10^-8(periodo de la placa)
localparam pulses_nedded_1ms = 12004;
localparam pulses_nedded_2ms = 24009;

reg [17:0] count = 0; 
reg T = 0;

always @(posedge clock)
begin
  count <= (count == pulses_nedded-1) ? 0: count+1;
end

always @(count)
begin
  if(ready)
    T <= (count <= pulses_nedded_1ms) ? 1:0;
  else
    T <= (count <= pulses_nedded_2ms) ? 1:0;
end


assign new_clock = T;
