module ALU #(parameter M = 32)(input logic [M-1:0] a, b, input logic [3:0] ALUControl, output logic [M-1:0] resultado, output logic Z, N, V, C);

    logic [M-1:0] resultADD, resultSUB, resultMULT, resultDIV, resultSLL, resultSRL, resultAND, resultOR, resultXOR, resultNOT;
    logic cout, sign, multv;

    fullAdder #(M) sumador (a, b, 1'b0, resultadoADD, cout);

    multiplication #(M) multiplicador (a, b, resultadoMULT, multv);

    division #(M) dividor (a, b, resultadoDIV);

    sll #(M) shiftleft (a, b, resultadoSLL);

    srl #(M) shiftright (a, b, resultadoSRL);

    andGate #(M) andComp (a, b, resultadoAND);

    orGate #(M) orComp (a, b, resultadoOR);

    xorGate #(M) xorComp (a, b, resultadoXOR);

    notGate #(M) notComp (a, resultadoNOT);

    muxResultALU #(M) muxResultados (resultadoADD, resultadoSUB, resultadoMULT, resultadoDIV, resultadoSLL, resultadoSRL, resultadoAND, resultadoOR, resultadoXOR, resultadoNOT, ALUControl, resultado);

    flagGenerator #(M) banderas (resultado, ALUControl, cout, sign, multv, Z, N, V, C);

endmodule 