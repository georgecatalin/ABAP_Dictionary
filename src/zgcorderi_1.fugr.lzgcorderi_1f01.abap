*----------------------------------------------------------------------*
***INCLUDE LZGCORDERI_1F01.
*----------------------------------------------------------------------*
FORM GET_DATE.
  IF ZGCORDERI_1-ORDERNUMBER IS NOT INITIAL.
    ZGCORDERI_1-VALIDITYDATE = sy-datum.
  ENDIF.

ENDFORM.
