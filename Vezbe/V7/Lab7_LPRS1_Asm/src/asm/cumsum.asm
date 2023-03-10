
/*
	Ekvivalentan C kod:
	
	short niz[3] = {1, 2, 3};
*/
.data
1 // niz[0], adresa 0
2 // niz[1], adresa 1
3 // niz[2], adresa 2

/*
	Ekvivalentan C kod (viši nivo):
	
	short tmp, acc = 0, i = 0, N = 3;
	do{
		tmp = niz[i];
		acc += tmp;
		niz[i] = acc;
		i++;
	}while(i != N);
*/
.text
/*
	Spisak registara:
	R0 - privremeni registar
	R1 - dužina niza
	R2 - indeks/adresa niza.
	R3 - akumulator.
*/
begin:
	// N = 3; Realizacija u 3 instrukcije.
	inc R0, R0      // tmp++; Postavlja R0 na 1
	shl R1, R0      // N = tmp << 1; Postavlja R1 na 2
	add R1, R1, R0  // N = N + tmp; Postavlja R1 na 3
loop:
	ld R0, R2       // tmp = niz[i]; R0 sadrži vrednost iz niza sa indeksa R2.
	add R3, R3, R0  // acc += tmp; Na R3 se nadodaje vrednost iz niza.
	st R3, R2       // niz[i] = acc; Upisuje se R3 u niz na indeks R2
	inc R2, R2      // i++; Uvećava se indeks R2
	// }while(i != N); Realizacija u 2 instrukcije.
	sub R0, R2, R1  // i != N; Rezultat se odbacuje u R0
	jmpnz loop      // do{ }while(); Ako su različiti, idi na početak petlje.
end:
	jmp end // Beskonačna petlja. Rezultat je u R3.
