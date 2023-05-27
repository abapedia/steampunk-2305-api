INTERFACE if_xco_cp_gen_tabl_str_s_ch_up PUBLIC.
  METHODS:
    add_component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_gen_tabl_str_s_ch_u_cmp,
    get_component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_gen_tabl_str_s_ch_u_cmp,
    remove_component
      IMPORTING
        iv_name TYPE sxco_ad_field_name,
    add_include
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_include) TYPE REF TO if_xco_gen_tabl_str_s_ch_u_inc,
    get_include
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_include) TYPE REF TO if_xco_gen_tabl_str_s_ch_u_inc,
    remove_include
      IMPORTING
        iv_position TYPE i.
ENDINTERFACE.