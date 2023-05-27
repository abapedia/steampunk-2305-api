INTERFACE if_xco_cp_gen_tabl_dbt_o_pat_s PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_tabl_dbt_o_pat_o,
    get_object
      IMPORTING
        iv_name          TYPE sxco_dbt_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_tabl_dbt_o_pat_o,
    remove_object
      IMPORTING
        iv_name TYPE sxco_dbt_object_name.
ENDINTERFACE.