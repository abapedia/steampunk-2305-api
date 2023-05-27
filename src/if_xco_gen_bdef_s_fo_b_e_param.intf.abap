INTERFACE if_xco_gen_bdef_s_fo_b_e_param
  PUBLIC.

  TYPES:
    tv_type TYPE c LENGTH 30.

  METHODS set_deep
    IMPORTING
      !iv_deep TYPE abap_bool DEFAULT abap_true
    RETURNING
      VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_e_param.
  METHODS set_type
    IMPORTING
      !iv_type TYPE tv_type
    RETURNING
      VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_e_param.
ENDINTERFACE.