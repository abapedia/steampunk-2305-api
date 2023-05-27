INTERFACE if_xco_gen_tabl_s_ch_u_frg_key PUBLIC.
  DATA:
    field_name TYPE sxco_ad_field_name READ-ONLY.

  METHODS:
    set_check_table
      IMPORTING
        iv_table_name TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    set_field_assignments
      IMPORTING
        it_field_assignments TYPE if_xco_tab_foreign_key_content=>tt_field_assignment
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    set_screen_check
      IMPORTING
        iv_check_indicator TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    set_key_type
      IMPORTING
        io_key_type  TYPE REF TO cl_xco_tab_fkey_field_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    set_cardinality
      IMPORTING
        io_left_cardinality  TYPE REF TO if_xco_gen_tabl_fkey_card_left
        io_right_cardinality TYPE REF TO if_xco_gen_tabl_fkey_card_rght
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key,
    set_error_message
      IMPORTING
        iv_message_number   TYPE if_xco_tab_foreign_key_content=>ts_error_message-message_number
        iv_application_area TYPE if_xco_tab_foreign_key_content=>ts_error_message-application_area
      RETURNING
        VALUE(ro_me)        TYPE REF TO if_xco_gen_tabl_s_ch_u_frg_key.
ENDINTERFACE.