INTERFACE if_xco_gen_tabl_str_s_ch_u_c_u PUBLIC.
  METHODS:
    add_foreign_key
      RETURNING
        VALUE(ro_foreign_key) TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    get_foreign_key
      RETURNING
        VALUE(ro_foreign_key) TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    remove_foreign_key,
    add_search_help
      RETURNING
        VALUE(ro_search_help) TYPE REF TO if_xco_gen_tabl_s_ch_u_sch_hlp,
    get_search_help
      RETURNING
        VALUE(ro_search_help) TYPE REF TO if_xco_gen_tabl_s_ch_u_sch_hlp,
    remove_search_help.
ENDINTERFACE.