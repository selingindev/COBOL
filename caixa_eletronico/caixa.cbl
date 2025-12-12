       identification division.
           program-id. CAIXA.
           author. "Arthur Selingin".
       
       environment division.
       
       data division.
           working-storage section.
      * formatador
       01 WS-SPACES PIC X(060) 
           value "====================================================".
   
       01 WS-MAIN-MENSAGE PIC X(050) 
           VALUE "============WELCOME TO ATM!===============".

       01 WS-ACTION-MENSAGE PIC X(050) 
           VALUE "What do you want to do or check?".

       01 OP-BALANCE        PIC X(20) VALUE "BALANCE".
       01 OP-WITHDRAW       PIC X(20) VALUE "WITHDRAW".
       01 OP-DEPOSIT        PIC X(20) VALUE "DEPOSIT".
       01 OP-TRANSFER       PIC X(20) VALUE "TRANSFER".
       01 OP-STATEMENT      PIC X(20) VALUE "STATEMENT".
       01 OP-PAYMENTS       PIC X(20) VALUE "PAYMENTS".
       01 OP-EXIT           PIC X(20) VALUE "EXIT".
       
       procedure division.
         ATM.
              perform  ATM-DISPLAY.

              stop run.

         ATM-DISPLAY.
             display WS-MAIN-MENSAGE.
             display WS-SPACES.
             display WS-ACTION-MENSAGE.
             display WS-SPACES.
             display OP-BALANCE.
             display OP-WITHDRAW.
             display OP-DEPOSIT.
             display OP-TRANSFER.
             display OP-STATEMENT.
             display OP-PAYMENTS.
             display WS-SPACES.
             display OP-EXIT.

          
              stop run.
       
       end program CAIXA.
