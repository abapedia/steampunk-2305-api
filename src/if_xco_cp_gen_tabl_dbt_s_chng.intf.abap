INTERFACE if_xco_cp_gen_tabl_dbt_s_chng PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      update TYPE REF TO if_xco_cp_gen_tabl_dbt_s_ch_up,
    END OF ts_for.

  DATA:
    for TYPE ts_for READ-ONLY.
ENDINTERFACE.