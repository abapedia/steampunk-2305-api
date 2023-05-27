INTERFACE if_xco_gen_doma_s_ch_up_fxd_vl PUBLIC.
  DATA:
    lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit READ-ONLY.

  METHODS:
    set_upper_limit
      IMPORTING
        iv_upper_limit TYPE if_xco_domain_fixed_value=>tv_upper_limit
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_doma_s_ch_up_fxd_vl,
    set_description
      IMPORTING
        iv_description TYPE if_xco_domain_fixed_value=>tv_description
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_doma_s_ch_up_fxd_vl.
ENDINTERFACE.