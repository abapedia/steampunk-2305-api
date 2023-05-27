INTERFACE if_xco_cp_gen_drty_o_factory PUBLIC.
  METHODS:
    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_drty_o_delete.
ENDINTERFACE.