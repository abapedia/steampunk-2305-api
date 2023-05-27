INTERFACE if_xco_cp_gen_dtel_s_change PUBLIC.
  TYPES:
    BEGIN OF ts_for,
      update TYPE REF TO if_xco_cp_gen_dtel_s_ch_update,
    END OF ts_for.

  DATA:
    for  TYPE ts_for READ-ONLY.
ENDINTERFACE.