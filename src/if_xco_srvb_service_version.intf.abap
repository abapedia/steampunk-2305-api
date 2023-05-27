INTERFACE if_xco_srvb_service_version PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    tv_version  TYPE   sxco_srvb_service_version,
    tt_versions TYPE STANDARD TABLE OF tv_version WITH DEFAULT KEY.

  DATA:
    version TYPE sxco_srvb_service_version READ-ONLY,
    service TYPE REF TO if_xco_srvb_service READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvb_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    content
      IMPORTING
        io_version        TYPE REF TO cl_xco_srvb_version OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_srvb_service_version_co.
ENDINTERFACE.