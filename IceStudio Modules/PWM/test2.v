///////////////////////////////////////////////////////////////
//Un simple contador de 8bits para marcar el valor del Dutty
//Input: SW
//Output: dutty[7:0]
///////////////////////////////////////////////////////////////
reg [7:0] dutty = 0;

always @(posedge sw1)
    begin
        dutty <= (dutty == 8'd255) ? 0 : dutty + 1;
    end

always @(posedge sw2)
    begin
        dutty <= 0;
    end
////////////////////////////////////////////////////////////////////////////////////////////
//Otro simple contador que pondrá en alta nuestra señal tantas veces como valor del dutty
//Imput: dutty[7:0], clk con la frecuencia de pwm que nos interese
//
////////////////////////////////////////////////////////////////////////////////////////////
reg [7:0] count=0;
reg pwm;
always @(posedge clk)
    begin
      count <= count+1;
      if(count<dutty)
        pwm <= 1'b1;
      else
        pwm <= 1'b0;
    end

///////////////////////////////////////////////////////////////////////////////////
//Tenemos que controlar el ESC, creando un contador de 5 segundos
//Input: clk
//Output: led
//Bloque que te pone un bit a 1 durante X segundos, luego a 0 durante X segundos y asi. Necesitamos un reset
//////////////////////////////////////////////////////////////////////////////
localparam pulses_1seg = 12000000;
reg [24:0] contador1 = 0;
reg [3:0] contador2 = 0;
reg led;
always @(posedge clk)
    begin
      contador1 <= (contador1 == pulses_1seg-1) ? 0 : (contador1 + 1); //cuando se pone a cero ha pasado 1 segundo, nos interesa
    end

always @(contador1)
    begin
      if (contador1 == pulses_1seg-1) //cuando pasa un segundo, es decir. contador1 es 0, sumamos un secundero
        contador2 <= (contador2 == 10) ? 0 : contador2 +1 ;
    end

always @(contador2)
    begin
      led <=(contador2>5)? 0:1; //si el secundero es mayor que 5 se enciende sino no
    end
/////////OTRA OPCION//////////////
/*  reg led = 1'b0;
   
  initial
    begin
 
      repeat (10)
        #5 led =! led;

    end*/
//////////////////////////////////