INTERFACE if_xco_xlsx_wa_cursor_position PUBLIC.
  DATA:
    column TYPE REF TO cl_xco_xlsx_coordinate READ-ONLY,
    row    TYPE REF TO cl_xco_xlsx_coordinate READ-ONLY.
ENDINTERFACE.