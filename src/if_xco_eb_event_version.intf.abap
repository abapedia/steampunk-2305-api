INTERFACE if_xco_eb_event_version PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list                  TYPE STANDARD TABLE OF REF TO if_xco_eb_event_version WITH DEFAULT KEY,
    tv_major_version      TYPE not_released,
    tt_major_versions     TYPE STANDARD TABLE OF tv_major_version WITH DEFAULT KEY,
    tv_minor_version      TYPE not_released,
    tt_minor_versions     TYPE STANDARD TABLE OF tv_minor_version WITH DEFAULT KEY,
    tv_patch_version      TYPE not_released,
    tt_patch_versions     TYPE STANDARD TABLE OF tv_patch_version WITH DEFAULT KEY,
    tv_entity_name        TYPE not_released,
    tt_entity_names       TYPE STANDARD TABLE OF tv_entity_name WITH DEFAULT KEY,
    tv_entity_event_name  TYPE not_released,
    tt_entity_event_names TYPE STANDARD TABLE OF tv_entity_event_name WITH DEFAULT KEY.

  DATA:
    event_binding TYPE REF TO if_xco_event_binding READ-ONLY,
    major_version TYPE tv_major_version READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_eb_event_version_cnt.
ENDINTERFACE.