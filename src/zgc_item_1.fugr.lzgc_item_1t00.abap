*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZGC_ITEM_1......................................*
DATA:  BEGIN OF STATUS_ZGC_ITEM_1                    .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZGC_ITEM_1                    .
CONTROLS: TCTRL_ZGC_ITEM_1
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZGC_ITEM_1                    .
TABLES: *ZGC_ITEM_1T                   .
TABLES: ZGC_ITEM_1                     .
TABLES: ZGC_ITEM_1T                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
