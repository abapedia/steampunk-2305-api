INTERFACE if_xco_cp_gen_doma_s_ch_insert PUBLIC.
  METHODS:
    add_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_fo_fxd_value,
    get_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_fo_fxd_value,
    remove_fixed_value
      IMPORTING
        iv_lower_limit TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit.
ENDINTERFACE.