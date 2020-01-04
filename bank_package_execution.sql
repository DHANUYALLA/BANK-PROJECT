-- EXECUTE THE ADD CUSTOMER PROCEDURE
EXECUTE GERMEN_BANK.PR_ADD_CUSTOMER('JAMES','S','MILLER','M','01-JUN-2018','IND');
SELECT * FROM BANK_CUST;
-- EXECUTE THE PR_ADD_CUST_CONTACT PROCEDURE
EXECUTE GERMEN_BANK.PR_ADD_CUST_CONTACT(1011,9885000935,'HOME','56 RD NO 14 B HILLS','BNR COLONY','HYD','TS',500034);
SELECT * FROM BANK_CUST_CONTACT;
-- EXECUTE THE PR_ADD_SB_ACCOUNT PROCEDURE
EXECUTE GERMEN_BANK.PR_ADD_SB_ACCOUNT(1011,NULL,1000,'ACTIVE',SYSDATE,NULL);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXECUTE THE PR_SB_DEPOSIT PROCEDURE
EXECUTE GERMEN_BANK.PR_SB_DEPOSIT (1000012011,'Deposit',1000);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXECUTE THE PR_SB_DEPOSIT WITHDRAW PROCEDURE
EXECUTE GERMEN_BANK.PR_SB_WITHDRAW(1000012011,'Withdrawal',1000);
SELECT * FROM BANK_SB_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;

-- EXEC THE PR_DEL_CUST PROCEDURE (IT IS OVERLOADED PROCEDURE)
EXECUTE GERMEN_BANK.PR_DEL_CUST('john');
SELECT * FROM BANK_INT_RATE;
SELECT * FROM BANK_TRANSACTION;
