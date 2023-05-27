INTERFACE if_xco_cp_gen_tabl_dbt_s_fo_td PUBLIC.
  METHODS:
    set_storage_type
      IMPORTING
        io_storage_type TYPE REF TO cl_xco_dbt_storage_type
      RETURNING
        VALUE(ro_me)    TYPE REF TO if_xco_cp_gen_tabl_dbt_s_fo_td,
    set_load_unit
      IMPORTING
        io_load_unit TYPE REF TO cl_xco_dbt_load_unit
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_tabl_dbt_s_fo_td.
ENDINTERFACE.