INTERFACE if_xco_domain_fixed_value PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_lower_limit TYPE c LENGTH 10,
    tv_upper_limit TYPE c LENGTH 10,
    tv_description TYPE c LENGTH 60.

  DATA:
    lower_limit TYPE tv_lower_limit READ-ONLY,
    domain      TYPE REF TO if_xco_domain READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_domain_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_domain_fixed_value_cnt.
ENDINTERFACE.