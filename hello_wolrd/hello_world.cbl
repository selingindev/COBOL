000001 IDENTIFICATION DIVISION.
      *suas informações aqui.
000002     PROGRAM-ID. HELLO-WOLRD.
000003     AUTHOR. Arthur Selingin.
000004
000005 ENVIRONMENT DIVISION.
      * Definições de ambiente aqui.
000007 DATA DIVISION.    
      * variaveis aqui.
       WORKING-STORAGE SECTION.
       77 W-MENSAGEM PIC X(31) VALUE "HELLO, WOLRD! SOU UM DEV COBOL".
000009 PROCEDURE DIVISION.

      * Lógica do programa aqui.
       PRINCIPAL.
           DISPLAY W-MENSAGEM.
      
       STOP RUN.
       END PROGRAM HELLO-WOLRD.
