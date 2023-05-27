INTERFACE if_xco_cp_gen_tabl_dbt_o_pat_o PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_cp_gen_tabl_dbt_o_pat_o WITH DEFAULT KEY.

  DATA:
    name TYPE sxco_ad_object_name READ-ONLY.

  METHODS:
    create_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_tabl_dbt_s_chng,
    get_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_tabl_dbt_s_chng,
    delete_change_specification.
ENDINTERFACE.