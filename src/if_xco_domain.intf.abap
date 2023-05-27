INTERFACE if_xco_domain PUBLIC.
  INTERFACES:
    if_xco_ad_object,

    if_xco_dtel_data_type.

  ALIASES:
    name FOR if_xco_ad_object~name,

    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  DATA:
    fixed_values TYPE REF TO if_xco_domain_fixed_values_fct READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_domain_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_domain_content,
    fixed_value
      IMPORTING
        iv_lower_limit        TYPE if_xco_domain_fixed_value=>tv_lower_limit
      RETURNING
        VALUE(ro_fixed_value) TYPE REF TO if_xco_domain_fixed_value.
ENDINTERFACE.