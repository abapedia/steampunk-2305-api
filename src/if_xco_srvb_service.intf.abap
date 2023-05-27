INTERFACE if_xco_srvb_service PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list     TYPE STANDARD TABLE OF REF TO if_xco_srvb_service WITH DEFAULT KEY,
    tv_name  TYPE c LENGTH 40,
    tt_names TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY.

  DATA:
    name            TYPE sxco_srvb_service_name READ-ONLY,
    service_binding TYPE REF TO if_xco_service_binding READ-ONLY,
    versions        TYPE REF TO if_xco_srvb_service_versions_f READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvb_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    version
      IMPORTING
        iv_version        TYPE sxco_srvb_service_version
      RETURNING
        VALUE(ro_version) TYPE REF TO if_xco_srvb_service_version.
ENDINTERFACE.