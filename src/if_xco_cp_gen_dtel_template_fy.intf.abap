INTERFACE if_xco_cp_gen_dtel_template_fy PUBLIC.
  METHODS:
    for_data_element
      IMPORTING
        iv_name            TYPE sxco_ad_object_name
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state
        io_origin          TYPE REF TO if_xco_gen_dtel_origin OPTIONAL
      RETURNING
        VALUE(ro_template) TYPE REF TO if_xco_cp_gen_dtel_template.
ENDINTERFACE.