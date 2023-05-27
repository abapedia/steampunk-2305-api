INTERFACE if_xco_cp_gen_dtel_d_api PUBLIC.
  METHODS:
    create_patch_operation
      RETURNING
        VALUE(ro_patch_operation) TYPE REF TO if_xco_cp_gen_dtel_d_o_patch,
    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_dtel_d_o_delete.
ENDINTERFACE.