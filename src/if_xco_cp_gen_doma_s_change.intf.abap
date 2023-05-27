INTERFACE if_xco_cp_gen_doma_s_change PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      delete TYPE REF TO if_xco_cp_gen_doma_s_ch_delete,
      insert TYPE REF TO if_xco_cp_gen_doma_s_ch_insert,
      update TYPE REF TO if_xco_cp_gen_doma_s_ch_update,
    END OF ts_for.

  DATA:
    for TYPE ts_for READ-ONLY.
ENDINTERFACE.