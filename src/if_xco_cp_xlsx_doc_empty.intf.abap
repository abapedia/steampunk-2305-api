INTERFACE if_xco_cp_xlsx_doc_empty PUBLIC.
  METHODS:
    write_access
      RETURNING
        VALUE(ro_write_access) TYPE REF TO if_xco_xlsx_wa_document.
ENDINTERFACE.