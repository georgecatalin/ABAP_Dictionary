*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZGC_ITEM_1T
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZGC_ITEM_1T        .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
