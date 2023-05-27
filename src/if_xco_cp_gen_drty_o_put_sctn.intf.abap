INTERFACE if_xco_cp_gen_drty_o_put_sctn PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_drty_o_put_objct,
    get_object
      IMPORTING
        iv_name          TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_drty_o_put_objct,
    remove_object
      IMPORTING
        iv_name TYPE sxco_cds_object_name.
ENDINTERFACE.