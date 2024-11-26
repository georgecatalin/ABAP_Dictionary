*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZGC_ITEM_1T.....................................*
DATA:  BEGIN OF STATUS_ZGC_ITEM_1T                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZGC_ITEM_1T                   .
CONTROLS: TCTRL_ZGC_ITEM_1T
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZGC_ITEM_1T                   .
TABLES: ZGC_ITEM_1T                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
