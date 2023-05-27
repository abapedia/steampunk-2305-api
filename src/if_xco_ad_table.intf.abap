INTERFACE if_xco_ad_table PUBLIC.
  INTERFACES:
    if_xco_ad_object,

    if_xco_printable.

  ALIASES:
    name FOR if_xco_ad_object~name,

    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    is_structure
      IMPORTING
        io_origin              TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_is_structure) TYPE abap_bool,
    get_structure
      RETURNING
        VALUE(ro_structure) TYPE REF TO if_xco_ad_structure,
    is_append_structure
      IMPORTING
        io_origin                     TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_is_append_structure) TYPE abap_bool,
    get_append_structure
      RETURNING
        VALUE(ro_append_structure) TYPE REF TO if_xco_append_structure,
    is_database_table
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_is_database_table) TYPE abap_bool,
    get_database_table
      RETURNING
        VALUE(ro_database_table) TYPE REF TO if_xco_database_table,
    is_global_temporary_table
      IMPORTING
        io_origin                           TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_is_global_temporary_table) TYPE abap_bool,
    get_global_temporary_table
      RETURNING
        VALUE(ro_global_temporary_table) TYPE REF TO if_xco_global_temporary_table,
    field
      IMPORTING
        iv_name         TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_field) TYPE REF TO if_xco_tab_field.
ENDINTERFACE.