INTERFACE if_xco_eb_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE if_xco_event_binding=>tv_short_description,
      type_namespace    TYPE if_xco_event_binding=>tv_type_namespace,
      sap_object_type   TYPE REF TO if_xco_sap_object_type,
      operation         TYPE if_xco_event_binding=>tv_operation,
      type              TYPE if_xco_event_binding=>tv_type,
    END OF ts_content.

  DATA:
    event_binding TYPE REF TO if_xco_event_binding READ-ONLY,
    version       TYPE REF TO cl_xco_eb_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE if_xco_event_binding=>tv_short_description,
    get_type_namespace
      IMPORTING
        io_origin                TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_type_namespace) TYPE if_xco_event_binding=>tv_type_namespace,
    get_sap_object_type
      IMPORTING
        io_origin                 TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(ro_sap_object_type) TYPE REF TO if_xco_sap_object_type,
    get_operation
      IMPORTING
        io_origin           TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_operation) TYPE if_xco_event_binding=>tv_operation,
    get_type
      IMPORTING
        io_origin      TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rv_type) TYPE if_xco_event_binding=>tv_type,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.