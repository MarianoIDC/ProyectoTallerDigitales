module flagGenerator #(parameter M = 4)(input logic [M-1:0] muxResultado, input logic [3:0] ALUControl, input logic Cout, Sign, MultV, output logic Z, N, V, C);

    always_comb begin
		Z <= 1'b0;
		N <= 1'b0;
		C <= 1'b0;
		V <= 1'b0;
		
        if(ALUControl == 4'b0001)
            N <= ~(Sign);
        else if(ALUControl == 4'b0000)
            begin
                C <= Cout;
				V <= Cout;
			end
		else if(ALUControl == 4'b0010)
            V <= MultV;
		else if(muxResultado == 4'b0000)
            Z <= 1'b1;
    end

endmodule 

// module flagGenerator #(parameter n = 3)(input logic [n-1:0] a, b, sum, input logic [3:0] ALUControl, input logic cout, output logic Z, N, V, C);

//     logic resultZ, resultN, resultV, resultC;
//     logic ALUControlNAND;

//     always_comb begin
//         ALUControlNAND = ~& sum[n-1:1];
//         resultZ = &(~sum);
//         resultN = sum[n-1];
//         resultC = ALUControlNAND & cout;
//         resultV = (ALUControl[0] ^ a[n-1] ^ b[n-1]) & (a[n-1] ^ sum[n-1]) & ALUControlNAND;
//     end

//     assign Z = resultZ;
//     assign N = resultN;
//     assign V = resultV;
//     assign C = resultC;

// endmodule