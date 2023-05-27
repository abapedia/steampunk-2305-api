INTERFACE if_xco_cp_gen_ddls_d_o_put_obj
  PUBLIC.
  DATA name TYPE sxco_cds_object_name READ-ONLY.
  METHODS set_package
    IMPORTING
      !iv_package TYPE sxco_package
    RETURNING
      VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddls_d_o_put_obj.
  METHODS create_form_specification
    RETURNING
      VALUE(ro_form_specification) TYPE REF TO not_released.
  METHODS set_template
    IMPORTING
      !io_template TYPE REF TO if_xco_gen_ddls_template.
  METHODS get_form_specification
    RETURNING
      VALUE(ro_form_specification) TYPE REF TO not_released.
  METHODS unset_template.
  METHODS delete_form_specification.
ENDINTERFACE.