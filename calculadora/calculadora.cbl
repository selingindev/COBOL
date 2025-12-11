       identification division.
           program-id. CALCULADORA.

       environment division.
       
       data division.
       WORKING-STORAGE SECTION.
       01 W-NUMERO01  PIC 9(003)V9(002).
       01 W-NUMERO02  PIC 9(003)V9(002).
       01 W-RESULTADO PIC 9(004)V9(002). 
       01 W-OPERRATION.
           05 W-SOMA PIC 9(001) VALUE 01.   
           05 W-SUBTRACAO PIC 9(001) VALUE 02.   
           05 W-MULTIPLICACAO PIC 9(001) VALUE 03.   
           05 W-DIVISAO PIC 9(001) VALUE 04.   

       procedure division.
       PRINCIPAL.
           display "DIGITE O PRIMEIRO NUMERO: ".
           accept W-NUMERO01

           display "DIGITE O SEGUNDO NUMERO: ".
           accept W-NUMERO02

           display "===============MENU================" &
            "1 - SOMA" &
            "2 - SUBTRACAO" &
            "3 - MULTIPLICACAO" &
            "4 - DIVISAO" &
            "===================================".
            accept W-OPERRATION

           evaluate W-OPERRATION
               when W-SOMA
                   perform SOMA
               when W-SUBTRACAO
                   perform SUBTRACAO
               when W-MULTIPLICACAO
                   perform MULTIPLICACAO
               when W-DIVISAO
                   perform DIVISAO
               when other
                   display "OPERACAO INVALIDA!".    
                   perform PRINCIPAL
     

           exit.
      
       SOMA.
           add W-NUMERO01 TO W-NUMERO02 GIVING W-RESULTADO. 
           display "O RESULTADO DA SOMA E: " W-RESULTADO.

           exit.

       SUBTRACAO.
           exit  .    
       stop run.
       end program CALCULADORA.
