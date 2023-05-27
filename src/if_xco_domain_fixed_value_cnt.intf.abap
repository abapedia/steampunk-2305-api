INTERFACE if_xco_domain_fixed_value_cnt PUBLIC.
  TYPES:
    tv_upper_limit  TYPE c LENGTH 10,
    tt_upper_limits TYPE STANDARD TABLE OF tv_upper_limit WITH DEFAULT KEY,
    tv_description  TYPE c LENGTH 60,
    tt_descriptions TYPE STANDARD TABLE OF tv_description WITH DEFAULT KEY,
    BEGIN OF ts_content,
      upper_limit TYPE tv_upper_limit,
      description TYPE tv_description,
    END OF ts_content.

  DATA:
    lower_limit TYPE if_xco_domain_fixed_value=>tv_lower_limit READ-ONLY,
    domain      TYPE REF TO if_xco_domain READ-ONLY,
    read_state  TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_upper_limit
      IMPORTING
        io_origin             TYPE REF TO cl_xco_domain_origin OPTIONAL
      RETURNING
        VALUE(rv_upper_limit) TYPE tv_upper_limit,
    get_description
      IMPORTING
        io_origin             TYPE REF TO cl_xco_domain_origin OPTIONAL
      RETURNING
        VALUE(rv_description) TYPE tv_description,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_domain_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.