INTERFACE if_xco_xlsx_wa_rs_operation_fc PUBLIC.
  METHODS:
    write_from
      IMPORTING
        it_internal_table   TYPE REF TO data
      RETURNING
        VALUE(ro_operation) TYPE REF TO if_xco_xlsx_wa_rs_op_write_frm.
ENDINTERFACE.