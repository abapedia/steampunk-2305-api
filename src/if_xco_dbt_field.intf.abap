INTERFACE if_xco_dbt_field PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    BEGIN OF ts_value_check_additionl_field,
      table_name TYPE sxco_ad_object_name,
      field_name TYPE sxco_ad_field_name,
      value      TYPE REF TO data,
    END OF ts_value_check_additionl_field,
    tt_value_check_additionl_field TYPE STANDARD TABLE OF ts_value_check_additionl_field WITH DEFAULT KEY.

  DATA:
    name           TYPE sxco_ad_field_name READ-ONLY,
    database_table TYPE REF TO if_xco_database_table READ-ONLY,
    foreign_key    TYPE REF TO if_xco_dbt_foreign_key READ-ONLY,
    search_help    TYPE REF TO if_xco_dbt_search_help READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_tab_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_dbt_field_content,
    proposal
      IMPORTING
        io_read_state      TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_proposal) TYPE REF TO if_xco_dbt_field_proposal_fct,
    get_value_check
      IMPORTING
        ia_value              TYPE data
        it_additional_fields  TYPE tt_value_check_additionl_field OPTIONAL
      RETURNING
        VALUE(ro_value_check) TYPE REF TO if_xco_dp_check.
ENDINTERFACE.