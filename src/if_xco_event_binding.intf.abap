INTERFACE if_xco_event_binding PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list                  TYPE STANDARD TABLE OF REF TO if_xco_event_binding WITH DEFAULT KEY,
    tv_name               TYPE c LENGTH 40,
    tt_names              TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY,
    tv_short_description  TYPE not_released,
    tt_short_descriptions TYPE STANDARD TABLE OF tv_short_description WITH DEFAULT KEY,
    tv_type_namespace     TYPE not_released,
    tt_type_namespaces    TYPE STANDARD TABLE OF tv_type_namespace WITH DEFAULT KEY,
    tv_operation          TYPE not_released,
    tt_operations         TYPE STANDARD TABLE OF tv_operation WITH DEFAULT KEY,
    tv_type               TYPE not_released,
    tt_types              TYPE STANDARD TABLE OF tv_type WITH DEFAULT KEY.

  DATA:
    name           TYPE tv_name READ-ONLY,
    event_versions TYPE REF TO if_xco_eb_event_versions_fctry READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_eb_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_eb_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_eb_content,
    event_version
      IMPORTING
        iv_major_version        TYPE if_xco_eb_event_version=>tv_major_version
      RETURNING
        VALUE(ro_event_version) TYPE REF TO if_xco_eb_event_version.
ENDINTERFACE.