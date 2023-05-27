INTERFACE if_xco_service_consumption_mdl PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list                 TYPE STANDARD TABLE OF REF TO if_xco_service_consumption_mdl WITH DEFAULT KEY,
    tv_name              TYPE c LENGTH 30,
    tt_names             TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY,
    tv_short_description TYPE sxco_ar_short_description,
    tt_short_description TYPE STANDARD TABLE OF tv_short_description WITH DEFAULT KEY,
    tv_consumption_type  TYPE REF TO cl_xco_srvc_consumption_type.

  DATA:
    name                TYPE tv_name READ-ONLY,
    service_entity_sets TYPE REF TO if_xco_srvc_svc_entity_sets_f READ-ONLY,
    remote_functions    TYPE REF TO if_xco_srvc_remote_functions_f READ-ONLY,
    service_operations  TYPE REF TO if_xco_srvc_service_operatns_f READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvc_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_srvc_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_srvc_content,
    service_entity_set
      IMPORTING
        iv_name                      TYPE if_xco_srvc_svc_entity_set=>tv_name
      RETURNING
        VALUE(ro_service_entity_set) TYPE REF TO if_xco_srvc_svc_entity_set,
    remote_function
      IMPORTING
        iv_name                   TYPE if_xco_srvc_remote_function=>tv_name
      RETURNING
        VALUE(ro_remote_function) TYPE REF TO if_xco_srvc_remote_function,
    service_operation
      IMPORTING
        iv_name                     TYPE if_xco_srvc_service_operation=>tv_name
      RETURNING
        VALUE(ro_service_operation) TYPE REF TO if_xco_srvc_service_operation.
ENDINTERFACE.