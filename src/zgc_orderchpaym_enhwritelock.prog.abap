*&---------------------------------------------------------------------*
*& Report ZGC_ORDERCHPAYM
*&---------------------------------------------------------------------*
*& Objective: lock the objects being changed in the program so no other user can change them
*&---------------------------------------------------------------------*
REPORT zgc_orderchpaym_enhwritelock.

DATA: lv_user TYPE C LENGTH 20.

PARAMETERS: p_ono  TYPE zgcdeono_1,
            p_paym TYPE zgcdepaym_1.


* in certain requirements scenario there is a possibility to request the lock multiple times within the same transaction.
* in here the difference between locking with write lock and enhanced write lock lies


CALL FUNCTION 'ENQUEUE_EZ_ZGCORDERH_1'
  EXPORTING
    mode_zgcorderh_1 = 'X' " using normal lock that does not support cumulation
    clientnumber     = sy-mandt
    ordernumber      = p_ono
    x_ordernumber    = ' '
    _scope           = '2'
    _wait            = ' '
    _collect         = ' '
  EXCEPTIONS
    foreign_lock     = 1
    system_failure   = 2
    OTHERS           = 3.



CALL FUNCTION 'ENQUEUE_EZ_ZGCORDERH_1'
  EXPORTING
    mode_zgcorderh_1 = 'X'  " using normal lock that does not support cumulation
    clientnumber     = sy-mandt
    ordernumber      = p_ono
    x_ordernumber    = ' '
    _scope           = '2'
    _wait            = ' '
    _collect         = ' '
  EXCEPTIONS
    foreign_lock     = 1
    system_failure   = 2
    OTHERS           = 3.
IF sy-subrc <> 0.
  lv_user = sy-msgv1. " sy-msgv1 is the system variable for the user taking the lock
  MESSAGE e000(zgcmessages_1) WITH lv_user p_ono.
ELSE.
  UPDATE zgcorderh_1 SET paymentmode = p_paym WHERE ordernumber = p_ono.
  IF sy-subrc = 0.
    WRITE TEXT-000.
  ELSE.
    WRITE TEXT-001.
  ENDIF.
  CALL FUNCTION 'DEQUEUE_EZ_ZGCORDERH_1'
   EXPORTING
     MODE_ZGCORDERH_1       = 'X'  " using normal lock that  does not support cumulation
     CLIENTNUMBER           = SY-MANDT
     ORDERNUMBER            = p_ono
     X_ORDERNUMBER          = ' '
     _SCOPE                 = '3'
     _SYNCHRON              = ' '
     _COLLECT               = ' '
            .

ENDIF.
