INTERFACE if_xco_cp_gen_doma_s_ch_update PUBLIC.
  TYPES:
    tv_short_description  TYPE c LENGTH 60,
    tv_value_table        TYPE c LENGTH 30,
    tv_output_length      TYPE n LENGTH 6,
    tv_conversion_routine TYPE c LENGTH 5.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_format
      IMPORTING
        io_format    TYPE REF TO if_xco_gen_doma_format
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_value_table
      IMPORTING
        iv_value_table TYPE tv_value_table
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_output_length
      IMPORTING
        iv_output_length TYPE tv_output_length
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_conversion_routine
      IMPORTING
        iv_conversion_routine TYPE tv_conversion_routine
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_case_sensitive
      IMPORTING
        iv_case_sensitive TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_sign
      IMPORTING
        iv_sign      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_am_pm_format
      IMPORTING
        iv_am_pm_format TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    set_output_style
      IMPORTING
        io_output_style TYPE REF TO cl_xco_domain_output_style
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    add_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_ch_up_fxd_vl,
    get_fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_gen_doma_s_ch_up_fxd_vl,
    remove_fixed_value
      IMPORTING
        iv_lower_limit TYPE if_xco_gen_doma_s_fo_fxd_value=>tv_lower_limit.
ENDINTERFACE.