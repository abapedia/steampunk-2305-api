INTERFACE if_xco_gen_tabl_s_ch_u_sch_hlp PUBLIC.
  DATA:
    field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    set_search_help_name
      IMPORTING
        iv_table_name TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_s_ch_u_sch_hlp,
    set_field_assignments
      IMPORTING
        it_field_assignments TYPE if_xco_tab_search_help_content=>tt_field_assignment
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_tabl_s_ch_u_sch_hlp.
ENDINTERFACE.