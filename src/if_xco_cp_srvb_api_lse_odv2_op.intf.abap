INTERFACE if_xco_cp_srvb_api_lse_odv2_op PUBLIC.
  METHODS:
    publish
      IMPORTING
        io_service_version TYPE REF TO if_xco_srvb_service_version
      RETURNING
        VALUE(ro_publish)  TYPE REF TO if_xco_srvb_operation,
    unpublish
      IMPORTING
        io_service_version  TYPE REF TO if_xco_srvb_service_version
      RETURNING
        VALUE(ro_unpublish) TYPE REF TO if_xco_srvb_operation.
ENDINTERFACE.