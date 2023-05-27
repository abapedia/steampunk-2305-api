INTERFACE if_xco_gen_tabl_str_s_ch_u_inc PUBLIC.
  DATA:
    position TYPE i READ-ONLY.

  METHODS:
    set_structure
      IMPORTING
        iv_structure TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_tabl_str_s_ch_u_inc.
ENDINTERFACE.