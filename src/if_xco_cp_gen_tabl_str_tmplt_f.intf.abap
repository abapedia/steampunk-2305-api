INTERFACE if_xco_cp_gen_tabl_str_tmplt_f PUBLIC.
  METHODS:
    for_structure
      IMPORTING
        iv_name            TYPE sxco_ad_object_name
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state
        io_origin          TYPE REF TO if_xco_gen_tabl_origin OPTIONAL
      RETURNING
        VALUE(ro_template) TYPE REF TO if_xco_cp_gen_tabl_str_tmplt.
ENDINTERFACE.