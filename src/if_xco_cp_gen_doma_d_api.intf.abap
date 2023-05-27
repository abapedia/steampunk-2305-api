INTERFACE if_xco_cp_gen_doma_d_api PUBLIC.
  METHODS:
    create_patch_operation
      RETURNING
        VALUE(ro_patch_operation) TYPE REF TO if_xco_cp_gen_doma_d_o_patch,
    create_delete_operation
      RETURNING
        VALUE(ro_delete_operation) TYPE REF TO if_xco_cp_gen_doma_d_o_delete.
ENDINTERFACE.