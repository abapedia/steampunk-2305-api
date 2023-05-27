INTERFACE if_xco_cp_gen_o_patch_mass PUBLIC.

  TYPES:
    BEGIN OF ts_tabl,
      BEGIN OF for,
        database_table TYPE REF TO if_xco_cp_gen_tabl_dbt_o_pat_s,
        structure      TYPE REF TO if_xco_cp_gen_tabl_str_o_pat_s,
      END OF for,
    END OF ts_tabl,
    BEGIN OF ts_api,
      doma TYPE REF TO if_xco_cp_gen_doma_o_patch_sct,
      dtel TYPE REF TO if_xco_cp_gen_dtel_o_patch_sct,
      evtb TYPE REF TO if_xco_cp_gen_evtb_o_patch_sct,
      tabl TYPE ts_tabl,
    END OF ts_api.

  DATA:
    for TYPE ts_api READ-ONLY.
ENDINTERFACE.