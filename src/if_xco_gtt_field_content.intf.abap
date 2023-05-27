INTERFACE if_xco_gtt_field_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      key_indicator      TYPE abap_bool,
      not_null           TYPE abap_bool,
      type               TYPE REF TO if_xco_gtt_field_type,
      language_indicator TYPE abap_bool,
      currency_quantity  TYPE if_xco_tab_field_content=>ts_currency_quantity,
    END OF ts_content.

  DATA:
    field      TYPE REF TO if_xco_gtt_field READ-ONLY,
    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_key_indicator
      IMPORTING
        io_origin               TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_key_indicator) TYPE abap_bool,
    get_not_null
      IMPORTING
        io_origin          TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_not_null) TYPE abap_bool,
    get_type
      IMPORTING
        io_origin      TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_gtt_field_type,
    get_language_indicator
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_language_indicator) TYPE abap_bool,
    get_currency_quantity
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rs_currency_quantity) TYPE if_xco_tab_field_content=>ts_currency_quantity,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.