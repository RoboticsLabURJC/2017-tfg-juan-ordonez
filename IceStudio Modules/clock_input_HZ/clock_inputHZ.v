//CLOCK_INPUTHZ//
/***********************************************************************************************************************************
Input: system_clk
Output: generated_clk
Parameter: frecuency_HZ, frecuency_system
Behaviour: This block is in charge to generate a clock with a determinated frecuency. M = fin/fout. It will be used a N count.
Created By: Juan Ordóñez Cerezo 12/03/2018

**************************************************************************************************************************************/
reg generated_clk = 0;

parameter frecuency_system= 12_000_000;
parameter frecuency_generated = 400_000;
parameter total_count = frecuency_system/frecuency_generated;
parameter N=$clog2(total_count);

 reg [N-1:0] count=0;

always @(posedge system_clk)
    begin
      count <= (count==total_count-1) ? 0 : count +1;
    end

always @(count)
    begin
      generated_clk <= (generated_clk == 0) ? 1 : 0; 
    end