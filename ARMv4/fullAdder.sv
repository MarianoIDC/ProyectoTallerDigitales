module fullAdder #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado, output logic cout);

    logic [N-1:0] sum;
    logic ctemp;

    always_comb begin
        {ctemp, sum} = a + b;
    end

    assign resultado = sum;
    assign cout = ctemp;

endmodule 