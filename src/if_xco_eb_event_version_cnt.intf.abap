INTERFACE if_xco_eb_event_version_cnt PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      minor_version     TYPE if_xco_eb_event_version=>tv_minor_version,
      patch_version     TYPE if_xco_eb_event_version=>tv_patch_version,
      entity_name       TYPE if_xco_eb_event_version=>tv_entity_name,
      entity_event_name TYPE if_xco_eb_event_version=>tv_entity_event_name,
    END OF ts_content.

  DATA:
    event_version TYPE REF TO if_xco_eb_event_version READ-ONLY,
    version       TYPE REF TO cl_xco_eb_version READ-ONLY.

  METHODS:
    get_minor_version
      IMPORTING
        io_origin               TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_minor_version) TYPE if_xco_eb_event_version=>tv_minor_version,
    get_patch_version
      IMPORTING
        io_origin               TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_patch_version) TYPE if_xco_eb_event_version=>tv_patch_version,
    get_entity_name
      IMPORTING
        io_origin             TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_entity_name) TYPE if_xco_eb_event_version=>tv_entity_name,
    get_entity_event_name
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_entity_event_name) TYPE if_xco_eb_event_version=>tv_entity_event_name,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.