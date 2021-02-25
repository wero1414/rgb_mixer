`default_nettype none
`timescale 1ns/1ns
module pwm (
    input wire clk,
    input wire reset,
    output wire out,
    input wire [7:0] level
    );

    reg [7:0] pwmCounter;
    always @(posedge clk) 
    begin
        if(reset) begin
            pwmCounter <= 1'b0;
        end else begin
            pwmCounter <= pwmCounter+1'b1; 
        end
    end

    assign out = pwmCounter < level;

endmodule
