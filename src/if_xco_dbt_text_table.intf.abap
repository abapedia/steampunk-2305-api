INTERFACE if_xco_dbt_text_table PUBLIC.
  DATA:
    database_table TYPE REF TO if_xco_database_table READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    get
      RETURNING
        VALUE(ro_text_table) TYPE REF TO if_xco_database_table,
    get_check_field
      RETURNING
        VALUE(ro_check_field) TYPE REF TO if_xco_dbt_field.
ENDINTERFACE.