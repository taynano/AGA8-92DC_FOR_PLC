PROGRAM AGA8_92DC_TESTE
VAR
	Gas_Teste: ARRAY [0..20] OF LREAL :=
	[	0.9650, 0.0030, 0.0060, 0.0180, 0.0045, 0.0000, 0.0000,
		0.0000, 0.0000, 0.0000, 0.0010, 0.0010, 0.0005, 0.0003,
		0.0007, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000];	

	T_Teste	: LREAL := 56.85;
	P_Teste	: LREAL := 60.00;	
	
	T_Gas	: LREAL := 0;
	P_Gas	: LREAL := 0;
	Z_Gas	: LREAL := 0;

	Bmix	: LREAL	:=	0;
	D		: LREAL	:=	0;
	P		: LREAL	:=	0;
	T		: LREAL	:= 	0;
	Z		: LREAL	:=	0;
END_VAR

Bmix	:= 0;
D		:= 0;
Z		:= 0;

P		:= P_Teste / 010.00;
P_Gas	:= P_Teste / 010.00;
T		:= T_Teste + 273.15;
T_Gas	:= T_Teste + 273.15;
		
DCAGA	(XJ:= Gas_Teste);
DZOFPT	(ADR(P), ADR(T), ADR(D), ADR(Z), ADR(Bmix));

Z_Gas:=	PZOFDT(ADR(D), ADR(T), ADR(P), ADR(Z), ADR(Bmix));