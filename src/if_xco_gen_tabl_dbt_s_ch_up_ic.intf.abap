INTERFACE if_xco_gen_tabl_dbt_s_ch_up_ic PUBLIC.
  DATA:
    position TYPE i READ-ONLY.

  METHODS:
    set_structure
      IMPORTING
        iv_structure TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_dbt_s_ch_up_ic.
ENDINTERFACE.