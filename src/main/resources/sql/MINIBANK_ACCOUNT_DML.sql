INSERT INTO TB_ACNT(ACNT_NO, CSTM_ID, CSTM_NM, ACNT_NM, NEW_DTM)
VALUES('111101', '1111', '홍길동', '샘플계좌', '2020-01-29 18:10:44'); 
INSERT INTO TB_TRNS_HST(ACNT_NO, SEQ, DIV_CD, STS_CD, TRNS_AMT, ACNT_BLNC, TRNS_BRNCH, TRNS_DTM)
VALUES('111101', 1, 'D', '1', 100000, 100000, '마곡본점', '2020-01-29 18:10:44');
INSERT INTO TB_TRNS_HST(ACNT_NO, SEQ, DIV_CD, STS_CD, TRNS_AMT, ACNT_BLNC, TRNS_BRNCH, TRNS_DTM)
VALUES('111101', 2, 'W', '1', 90000, 10000, '마곡본점', '2020-01-29 18:17:45');
INSERT INTO TB_ACNT(ACNT_NO, CSTM_ID, CSTM_NM, ACNT_NM, NEW_DTM)
VALUES('222201', '2222', '홍길순', '샘플계좌', '2020-01-29 18:15:45'); 
INSERT INTO TB_TRNS_HST(ACNT_NO, SEQ, DIV_CD, STS_CD, TRNS_AMT, ACNT_BLNC, TRNS_BRNCH, TRNS_DTM)
VALUES('222201', (SELECT NEXTVAL('SEQ_ACCOUNT_TRANSACTION_HISTORY')), 'D', '1', 1000000, 1000000, '마곡본점', '2020-01-29 18:15:45');
INSERT INTO TB_TRNS_HST(ACNT_NO, SEQ, DIV_CD, STS_CD, TRNS_AMT, ACNT_BLNC, TRNS_BRNCH, TRNS_DTM)
VALUES('222201', (SELECT NEXTVAL('SEQ_ACCOUNT_TRANSACTION_HISTORY')), 'D', '1', 90000, 1090000, '마곡본점', '2020-01-29 18:17:45');