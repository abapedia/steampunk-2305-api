INTERFACE if_xco_cp_gen_doma_s_ch_delete PUBLIC.
  METHODS:
    add_fixed_value
      IMPORTING
        iv_lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit,
    remove_fixed_value
      IMPORTING
        iv_lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit.
ENDINTERFACE.