module task3(input [3:0] KEY, input [9:0] SW, output [9:0] LEDR, output [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
endmodule: task3

module cpu(input clk, input rst_n, input [15:0] ram_r_data, output wire [8:0] PC, 
            output waiting, output [15:0] out, output N, output V, output Z,
            output [15:0] ram_w_data, 
            output [8:0] ram_addr, output [1:0] ram_cmd, output [4:0] state);
endmodule: cpu

module controller(input clk, input rst_n, 
                  input [2:0] opcode, input [1:0] ALU_op, input [1:0] shift_op,
                  output waiting,
                  output [1:0] reg_sel, output [1:0] wb_sel, output w_en,
                  output en_A, output en_B, output en_C, output en_status,
                  output sel_A, output sel_B,
                  output [1:0] ram_cmd, output load_ir,
                  output load_pc, output load_addr, output sel_addr,
                  output clear_pc,
                  output [4:0] state);
endmodule: controller

module idecoder(input [15:0] ir, input [1:0] reg_sel,
                output [2:0] opcode, output [1:0] ALU_op, output [1:0] shift_op,
		output [15:0] sximm5, output [15:0] sximm8,
                output [2:0] r_addr, output [2:0] w_addr);
endmodule: idecoder

module datapath(input clk, input [15:0] mdata, input [7:0] pc, input [1:0] wb_sel,
                input [2:0] w_addr, input w_en, input [2:0] r_addr, input en_A,
                input en_B, input [1:0] shift_op, input sel_A, input sel_B,
                input [1:0] ALU_op, input en_C, input en_status,
		input [15:0] sximm8, input [15:0] sximm5,
                output [15:0] datapath_out, output Z_out, output N_out, output V_out);
endmodule: datapath

module ALU(input [15:0] val_A, input [15:0] val_B, input [1:0] ALU_op, output [15:0] ALU_out, output Z, output N, output V);
endmodule: ALU

module shifter(input [15:0] shift_in, input [1:0] shift_op, output reg [15:0] shift_out);
endmodule: shifter