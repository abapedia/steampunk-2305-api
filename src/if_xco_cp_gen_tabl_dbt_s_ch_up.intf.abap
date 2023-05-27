INTERFACE if_xco_cp_gen_tabl_dbt_s_ch_up PUBLIC.
  TYPES:
    BEGIN OF ts_technical_settings,
      db_specific_properties TYPE REF TO if_xco_cp_gen_tabl_dbt_s_cu_td,
    END OF ts_technical_settings.

  DATA:
    technical_settings TYPE ts_technical_settings READ-ONLY.

  METHODS:
    add_field
      IMPORTING
        iv_name         TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_fl,
    get_field
      IMPORTING
        iv_name         TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_fl,
    remove_field
      IMPORTING
        iv_name TYPE sxco_ad_field_name,
    add_include
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_include) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_ic,
    get_include
      IMPORTING
        iv_position       TYPE i
      RETURNING
        VALUE(ro_include) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_ic,
    remove_include
      IMPORTING
        iv_position TYPE i.
ENDINTERFACE.