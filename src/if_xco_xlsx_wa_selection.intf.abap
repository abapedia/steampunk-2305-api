INTERFACE if_xco_xlsx_wa_selection PUBLIC.

  METHODS:
    row_stream
      RETURNING
        VALUE(ro_row_stream) TYPE REF TO if_xco_xlsx_wa_row_stream.
ENDINTERFACE.