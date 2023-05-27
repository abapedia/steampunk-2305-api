INTERFACE if_xco_append_structure PUBLIC.
  INTERFACES:
    if_xco_ad_object.

  ALIASES:
    name FOR if_xco_ad_object~name,

    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  DATA:
    components TYPE REF TO if_xco_aps_components_factory READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_read_state    TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin        TYPE REF TO cl_xco_tab_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_aps_content,
    component
      IMPORTING
        iv_name             TYPE sxco_ad_field_name
      RETURNING
        VALUE(ro_component) TYPE REF TO if_xco_aps_component.
ENDINTERFACE.