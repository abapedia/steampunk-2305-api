INTERFACE if_xco_xlsx_wa_document PUBLIC.
  METHODS:
    get_workbook
      RETURNING
        VALUE(ro_workbook) TYPE REF TO if_xco_xlsx_wa_workbook,

    get_file_content
      RETURNING
        VALUE(rv_file_content) TYPE xstring.
ENDINTERFACE.