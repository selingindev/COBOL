       identification division.
           program-id. CALCULADORA.

       environment division.
       
       data division.
       WORKING-STORAGE SECTION.
       01 W-NUMERO01  PIC 9(003)V9(002).
       01 W-NUMERO02  PIC 9(003)V9(002).
       01 W-RESULTADO PIC S9(004)V9(002). 

      *Formatacao de numeros
       01 W-RESULTADO-FORM PIC -ZZZ.99 .

      * Const para as operacões básicas, 
       01 W-OPERRATION PIC 9(1).
       01 CONST-SOMA          PIC 9(1) VALUE 1.
       01 CONST-SUBTRACAO     PIC 9(1) VALUE 2.
       01 CONST-MULTIPLICACAO PIC 9(1) VALUE 3.
       01 CONST-DIVISAO       PIC 9(1) VALUE 4.

      *boolean para controle de fluxo
       01 W-BOOLEAN PIC X(1).
           88 CONTINUAR VALUE "T".
           88 PARAR VALUE "F".


       procedure division.
       PRINCIPAL.
           display "DIGITE O PRIMEIRO NUMERO: ".
           accept W-NUMERO01.

           display "DIGITE O SEGUNDO NUMERO: ".
           accept W-NUMERO02.

           display "===============MENU================".
           display "1 - SOMA".  
           display "2 - SUBTRACAO".
           display "3 - MULTIPLICACAO".
           display "4 - DIVISAO".
           display  "===================================".
           accept W-OPERRATION.

           evaluate W-OPERRATION
               when CONST-SOMA
                   perform SOMA
               when CONST-SUBTRACAO
                   perform SUBTRACAO
               when CONST-MULTIPLICACAO
                   perform MULTIPLICACAO 
               when CONST-DIVISAO
                   perform DIVISAO
               when other
                   display "OPERACAO INVALIDA!"
           end-evaluate.
           
           perform NEWCOUNT
           exit.
          
       NEWCOUNT.
           display "DESEJA REALIZAR OUTRA OPERACAO? (T/F)".
           accept W-BOOLEAN.

           IF CONTINUAR
               perform PRINCIPAL
           ELSE
               display "OBRIGADO POR USAR O PROGRAMA".
           
           exit.
       SOMA.
           add W-NUMERO01 TO W-NUMERO02 GIVING W-RESULTADO. 
           move W-RESULTADO TO W-RESULTADO-FORM.
           display "O resultado da soma e: " W-RESULTADO-FORM.
           exit.

       SUBTRACAO.
           subtract W-NUMERO02 from W-NUMERO01 GIVING W-RESULTADO.
           move W-RESULTADO TO W-RESULTADO-FORM.
           display "O resultado da subtracao e: " W-RESULTADO-FORM.
           exit.

       MULTIPLICACAO. 
           multiply W-NUMERO01 BY W-NUMERO02 GIVING W-RESULTADO.
           move W-RESULTADO TO W-RESULTADO-FORM.
           display "O resultado da multiplicacao e: " W-RESULTADO-FORM.
           exit.

       DIVISAO.
           divide W-NUMERO01 BY W-NUMERO02 GIVING W-RESULTADO.
           move W-RESULTADO TO W-RESULTADO-FORM.
           display "O resultado da divisao e: " W-RESULTADO-FORM.
           exit. 
       
       stop run.
       end program CALCULADORA.
