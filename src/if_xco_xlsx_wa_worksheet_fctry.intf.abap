INTERFACE if_xco_xlsx_wa_worksheet_fctry PUBLIC.
  METHODS:
    at_position
      IMPORTING
        iv_position         TYPE i
      RETURNING
        VALUE(ro_worksheet) TYPE REF TO if_xco_xlsx_wa_worksheet.
ENDINTERFACE.