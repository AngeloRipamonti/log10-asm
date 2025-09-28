1000:   lw   $2, 2000($0)      # $2 = N (numero di input)
1004:   addi $3, $0, 0         # $3 = k = 0 (risultato logaritmo)
1008:   addi $4, $0, 1         # $4 = potenza = 1 (10^0)
1012:   addi $5, $0, 10        # $5 = costante 10
1016:   slt  $6, $2, $4        # $6 = (N < potenza) ? 1 : 0
1020:   beq  $6, $0, 1032      # se N >= potenza → calcola prossima potenza
1024:   addi $3, $3, -1        # k = k - 1 
1028:   j    1072              # vai alla fine
1032:   addi $3, $3, 1         # k = k + 1
1036:   addi $7, $0, 0         # $7 = accumulatore = 0
1040:   addi $8, $0, 0         # $8 = contatore = 0
1044:   slt  $9, $8, $5        # $9 = (contatore < 10) ? 1 : 0
1048:   beq  $9, $0, 1064      # se contatore >= 10 → fine moltiplicazione
1052:   add  $7, $7, $4        # accumulatore += potenza
1056:   addi $8, $8, 1         # contatore++
1060:   j    1044              # ripeti moltiplicazione
1064:   addi $4, $7, 0         # potenza = accumulatore (nuova potenza)
1068:   j    1016              # torna al ciclo principale
1072:   sw   $3, 3000($0)      # salva k in memoria[3000]