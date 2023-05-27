INTERFACE if_xco_service_binding PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list                 TYPE STANDARD TABLE OF REF TO if_xco_service_binding WITH DEFAULT KEY,
    tv_name              TYPE c LENGTH 30,
    tt_name              TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY,
    tv_short_description TYPE sxco_ar_short_description.

  ALIASES:
    get_package FOR if_xco_ar_object~get_package,
    get_namespace FOR if_xco_ar_object~get_namespace.

  DATA:
    name     TYPE sxco_srvb_object_name READ-ONLY,
    services TYPE REF TO if_xco_srvb_services_factory READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvb_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    check_syntax
      RETURNING
        VALUE(ro_check_result) TYPE REF TO if_xco_dp_check_result,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_srvb_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_service_binding_content,
    service
      IMPORTING
        iv_service_name   TYPE sxco_srvb_service_name OPTIONAL
      RETURNING
        VALUE(ro_service) TYPE REF TO if_xco_srvb_service.
ENDINTERFACE.