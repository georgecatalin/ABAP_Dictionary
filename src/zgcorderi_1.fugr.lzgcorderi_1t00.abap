*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZGCORDERI_1.....................................*
DATA:  BEGIN OF STATUS_ZGCORDERI_1                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZGCORDERI_1                   .
CONTROLS: TCTRL_ZGCORDERI_1
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZGCORDERI_1                   .
TABLES: ZGCORDERI_1                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
