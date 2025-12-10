       identification division.
           program-id. CALCULADORA.

       environment division.
       
       data division.
       WORKING-STORAGE SECTION.
       01 W-NUMERO01  PIC 9(009)V9(002).
       01 W-NUMERO02  PIC 9(009)V9(002).
       01 W-RESULTADO PIC 9(018)V9(002).    
       procedure division.
       PRINCIPAL.

           display "DIGITE O PRIMEIRO NUMERO: ".
           accept W-NUMERO01

           display "DIGITE O SEGUNDO NUMERO: ".
           accept W-NUMERO02

           add W-NUMERO01 TO W-NUMERO02 GIVING W-RESULTADO. 

           display "O RESULTADO DA SOMA E: " W-RESULTADO.

       stop run.
       end program CALCULADORA.
       