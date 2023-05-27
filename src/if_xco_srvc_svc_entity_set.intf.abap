INTERFACE if_xco_srvc_svc_entity_set PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list            TYPE STANDARD TABLE OF REF TO if_xco_srvc_svc_entity_set WITH DEFAULT KEY,
    tv_name         TYPE string,
    tv_etag_support TYPE abap_bool,
    tt_names        TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY.

  DATA:
    service_consumption_model TYPE REF TO if_xco_service_consumption_mdl READ-ONLY,
    name                      TYPE tv_name READ-ONLY.

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
        VALUE(ro_content) TYPE REF TO if_xco_srvc_svc_entity_set_co.
ENDINTERFACE.