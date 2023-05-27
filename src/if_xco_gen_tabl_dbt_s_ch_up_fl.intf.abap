INTERFACE if_xco_gen_tabl_dbt_s_ch_up_fl PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      update TYPE REF TO if_xco_gen_tabl_dbt_s_ch_u_f_u,
    END OF ts_for.

  DATA:
    for               TYPE ts_for READ-ONLY,
    name              TYPE sxco_ad_field_name READ-ONLY,
    currency_quantity TYPE REF TO if_xco_gen_tabl_s_ch_u_cur_qun READ-ONLY.

  METHODS:
    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_tabl_field_type_dbt
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_fl.
ENDINTERFACE.