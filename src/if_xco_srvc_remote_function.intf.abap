INTERFACE if_xco_srvc_remote_function PUBLIC.
  INTERFACES:
    if_xco_printable.

  TYPES:
    list    TYPE STANDARD TABLE OF REF TO if_xco_srvc_remote_function WITH DEFAULT KEY,
    tv_name TYPE string.

  DATA:
    service_consumption_model TYPE REF TO if_xco_service_consumption_mdl READ-ONLY,
    name                      TYPE tv_name READ-ONLY.

  METHODS:
    exists
      IMPORTING
        io_version       TYPE REF TO cl_xco_srvc_version OPTIONAL
        io_origin        TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rv_exists) TYPE abap_bool.
ENDINTERFACE.