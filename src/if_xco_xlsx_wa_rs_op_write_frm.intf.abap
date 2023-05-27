INTERFACE if_xco_xlsx_wa_rs_op_write_frm PUBLIC.
  INTERFACES:
    if_xco_xlsx_wa_operation.

  ALIASES:
    get_action FOR if_xco_xlsx_wa_operation~get_action,
    execute FOR if_xco_xlsx_wa_operation~execute.

  METHODS:
    set_value_transformation
      IMPORTING
        io_value_transformation TYPE REF TO if_xco_xlsx_wa_vt_row_value
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_xlsx_wa_rs_op_write_frm.
ENDINTERFACE.