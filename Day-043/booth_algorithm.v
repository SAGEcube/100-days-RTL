`timescale 1ns / 1ps

module booth_algorithm(
    input signed [2:0] Q, M,
    output reg signed [5:0] result  // 3-bit × 3-bit = 6-bit result
);
    reg signed [3:0] A;
    reg signed [2:0] Q_reg;
    reg q0;
    reg signed [3:0] M_extended;  // Sign-extended M
    integer i;
    
    always @(*) begin
        A = 4'd0;
        Q_reg = Q;
        q0 = 1'b0;
        M_extended = {{1{M[2]}}, M};  // Sign extend M to 4 bits
        
        for (i = 0; i < 3; i = i + 1) begin
            case ({Q_reg[0], q0})
                2'b01: A = A + M_extended;     // Add M
                2'b10: A = A - M_extended;     // Subtract M
                default: A = A;                 // No operation
            endcase
            
            // Arithmetic right shift
            q0 = Q_reg[0];
            Q_reg = {A[0], Q_reg[2:1]};
            A = {A[3], A[3:1]};  // Arithmetic shift (sign extend)
        end
        
        result = {A[2:0], Q_reg};  // Final 6-bit product
    end
endmodule