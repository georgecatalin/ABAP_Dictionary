*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZGCMV_PROJH_1...................................*
TABLES: ZGCMV_PROJH_1, *ZGCMV_PROJH_1. "view work areas
CONTROLS: TCTRL_ZGCMV_PROJH_1
TYPE TABLEVIEW USING SCREEN '0002'.
DATA: BEGIN OF STATUS_ZGCMV_PROJH_1. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZGCMV_PROJH_1.
* Table for entries selected to show on screen
DATA: BEGIN OF ZGCMV_PROJH_1_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZGCMV_PROJH_1.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZGCMV_PROJH_1_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZGCMV_PROJH_1_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZGCMV_PROJH_1.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZGCMV_PROJH_1_TOTAL.

*.........table declarations:.................................*
TABLES: ZGCPROJH_1                     .
TABLES: ZGCPROJH_2                     .
