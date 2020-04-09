FUNCTION  DZOFPT : LREAL
VAR_INPUT
	EP		: DWORD;
	ET		: DWORD;
	ED		: DWORD;
	EZ		: DWORD;
	EBmix	: DWORD;
END_VAR
VAR
	P		: POINTER TO LREAL;
	T		: POINTER TO LREAL;
	D		: POINTER TO LREAL;
	Z		: POINTER TO LREAL;
	Bmix		: POINTER TO LREAL;
	X1		: LREAL;
	X2		: LREAL;
	X3		: LREAL;
	F		: LREAL;
	F1		: LREAL;
	F2		: LREAL;
	F3		: LREAL;
	TOL		: LREAL;
	I		: INT;
END_VAR

P		:= EP;
T		:= ET;
D		:= ED;	
Z		:= EZ;
Bmix	:= EBmix;

TOL	:= 0.5E-9;
X1	:= 0.0000010;
X2	:= 40.0;
D^	:= 0;

PZOFDT(ED:=ADR(X1), ET:=T, EP:=ADR(F1), EZ:=Z, EBmix:=Bmix);
PZOFDT(ED:=ADR(X2), ET:=T, EP:=ADR(F2), EZ:=Z, EBmix:=Bmix);

F1 := F1 - P^;
F2 := F2 - P^;

IF ((F1*F2)>=0) THEN
	RETURN;
END_IF

FOR I := 0 TO 49 DO
	X3	:= X1 - F1*(X2 - X1)/(F2 - F1);
 	PZOFDT(ED:=ADR(X3), ET:=T, EP:=ADR(F3), EZ:=Z, EBmix:=Bmix);
 	F3	:= F3 - P^;
	D^	:= X1*F2*F3/((F1 - F2)*(F1 - F3))
		+  X2*F1*F3/((F2 - F1)*(F2 - F3))
		+  X3*F1*F2/((F3 - F1)*(F3 - F2));
		
 	IF ((D^ - X1)*(D^ - X2)>= 0) THEN
		D^ := (X1 + X2)/2.0;
	END_IF
	
 	PZOFDT(ED:=ADR(D), ET:=T, EP:=ADR(F), EZ:=Z, EBmix:=Bmix);
	F := F - P^;
 	
	IF (ABS(F)<=TOL) THEN
		RETURN;
	END_IF
	
	IF (ABS(F3)< ABS(F)) AND ((F*F3)>0) THEN
 		IF ((F3*F1)>0) THEN
 			X1 := X3;
 			F1 := F3;
 		ELSE
 			X2 := X3;
 			F2 := F3;
 		END_IF
 	ELSE
 		IF ((F*F3)>0) THEN
 			X1 := D^;
 			F1 := F;
 			X2 := X3;
 			F2 := F3;
 		ELSIF ((F3*F1)>0) THEN
			 X1 := D^;
 			 F1 := F;
 		ELSE
 			 X2 := D^;
 			 F2 := F;
 		END_IF
 	END_IF
 END_FOR