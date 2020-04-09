Código em ST (Texto Estruturado/Structured Text) programado de acordo com a IEC61131-3 para execução em CLPs (PLCs) contendo o cálculo do fator de compressibilidade AGA8-92DC descrito pela ISO 12213-2:2006 (Natural gas - Calculation of compression factor - Part 2:Calculation using molar-composition analysis).

Código usualmente utilizado na medição de vazão de gás natural em conversores de volume, conforme recomendado pela NBR 16107:2017 (Fator de conversão do volume de gás).

IMPORTANTE

Esse código corresponde ao mesmo código programado em FORTRAN pela ISO 12213-2. Aqui foram preservados os nomes das variáveis e estruturas de dados. Para maiores informações consulte a norma e o código-fonte disponível nela.

OBTENDO O FATOR Z

Esse código foi programado utilizando o CODESYS e é PARTE de um projeto desenvolvido na UFMG em 2018/2019 para medição de vazão de gás natural utilizando plataformas abertas de automação (veja a publicação em anexo).

Para obter o Fator Z, altere os seguintes parâmetro em AGA8_92DC_TESTE: Gas_Teste, T_Teste e P_Teste.
O resultado estará gravado na variável Z_Gas.

Se utilizar o CODESYS para execução do programa, alternativamente, você pode criar uma aplicação gráfica utilizando o WebVisu.

A unidade da variável T_Teste é ºC, enquanto a unidade de P_Teste é bar.

A estrutura Gas_Teste possui a seguinte correspondência:

Gas_Teste[00]  - CH4 (Metano)  - 
Gas_Teste[01]  - N2 (Nitrogênio)  - 
Gas_Teste[02]  - CO2 (Dióxido de Carbono)  - 
Gas_Teste[03]  - C2H6 (Etano)  - 
Gas_Teste[04]  - C3H8 (Propano)  - 
Gas_Teste[05]  - H20 (Água)  - 
Gas_Teste[06]  - H2S (Sulfeto de Hidrogênio)  - 
Gas_Teste[07]  - H2 (Hidrogênio)  - 
Gas_Teste[08]  - CO (Monóxido de Carbono)  - 
Gas_Teste[09]  - 02 (Oxigênio)  - 
Gas_Teste[10]  - I-C4H10 (I-Butano)  - 
Gas_Teste[11]  - N-C4H10 (N-Butano)  - 
Gas_Teste[12]  - I-C5H12 (I-Pentano)  - 
Gas_Teste[13]  - I-C5H12 (N-Pentano)  - 
Gas_Teste[14]  - N-C6H14 (N-Hexano)  - 
Gas_Teste[15]  - N-C7H16 (N-Heptano)  - 
Gas_Teste[16]  - N-C8H18 (N-Octano)  - 
Gas_Teste[17]  - N-C9H20 (N-Nonano)  - 
Gas_Teste[18]  - N-C10H22 (N-Decano)  - 
Gas_Teste[19]  - He (Hélio)  - 
Gas_Teste[20]  - Ar (Argônio)  - 

As composições recomendadas para teste do algoritmo segundo a ISO 12213-2:2006(E), Anexo C (Example Calculations) são:

Gas 1:
(0.9650, 0.0030, 0.0060, 0.0180, 0.0045, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0010, 0.0010, 0.0005, 0.0003, 0.0007, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000)

Gas 2:
(0.9070, 0.0310, 0.0050, 0.0450, 0.0084, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0010, 0.0015, 0.0003, 0.0004, 0.0004, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000)

Gas 3:
(0.8590, 0.0100, 0.0150, 0.0850, 0.0230, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0035, 0.0035, 0.0005, 0.0005, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000)

Gas 4:
(0.7350, 0.1000, 0.0160, 0.0330, 0.0074, 0.0000, 0.0000, 0.0950, 0.0100, 0.0000, 0.0012, 0.0012, 0.0004, 0.0004, 0.0002, 0.0001, 0.0001, 0.0000, 0.0000, 0.0000, 0.0000)

Gas 5:
(0.8120, 0.0570, 0.0760, 0.0430, 0.0090, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0015, 0.0015, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000)

Gas 6:
(0.8260, 0.1170, 0.0110, 0.0350, 0.0075, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0012, 0.0012, 0.0004, 0.0004, 0.0002, 0.0001, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000)

As condições de pressão e temperatura estão descritas no mesmo anexo da norma, disponível neste diretório.
No diretório estão também os resultados encontrados por mim para esses exemplos.

Para dúvidas e contribuições utilize a Issue do diretório.
Respondo assim que possível. Obrigado pela visita!
