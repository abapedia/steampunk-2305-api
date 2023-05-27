INTERFACE if_xco_cp_gen_ddls_tpl_source
  PUBLIC.

  INTERFACES if_xco_gen_ddls_template.

  METHODS set_short_description
    IMPORTING
      !iv_short_description TYPE sxco_ar_short_description
    RETURNING
      VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddls_tpl_source.
  METHODS set_source
    IMPORTING
      !iv_source TYPE string
    RETURNING
      VALUE(ro_me) TYPE REF TO if_xco_cp_gen_ddls_tpl_source.
ENDINTERFACE.