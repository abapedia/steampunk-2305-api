INTERFACE if_xco_cp_gen_drty_s_form PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_drty_s_form,
    add_simple_type_definition
      RETURNING
        VALUE(ro_simple_type_definition) TYPE REF TO if_xco_gen_drty_s_fo_spl_tp_df,
    get_simple_type_definition
      RETURNING
        VALUE(ro_simple_type_definition) TYPE REF TO if_xco_gen_drty_s_fo_spl_tp_df,
    remove_simple_type_definition.
ENDINTERFACE.