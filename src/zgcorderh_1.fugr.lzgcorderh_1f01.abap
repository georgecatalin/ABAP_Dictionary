*----------------------------------------------------------------------*
***INCLUDE LZGCORDERH_1F01.
*----------------------------------------------------------------------*
FORM GET_DATE.
 IF ZGCORDERH_1-ORDERNUMBER IS NOT INITIAL.
   ZGCORDERH_1-DELIVERYDATE = sy-datum.
 ENDIF.

ENDFORM.
