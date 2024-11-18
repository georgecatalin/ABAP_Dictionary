*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZGCORDERH_1.....................................*
DATA:  BEGIN OF STATUS_ZGCORDERH_1                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZGCORDERH_1                   .
CONTROLS: TCTRL_ZGCORDERH_1
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZGCORDERH_1                   .
TABLES: ZGCORDERH_1                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
