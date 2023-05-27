INTERFACE if_xco_cp_srvb_api_lse_odv4_op PUBLIC.
  METHODS:
    publish
      IMPORTING
        io_service_binding TYPE REF TO if_xco_service_binding
      RETURNING
        VALUE(ro_publish)  TYPE REF TO if_xco_srvb_operation,
    unpublish
      IMPORTING
        io_service_binding  TYPE REF TO if_xco_service_binding
      RETURNING
        VALUE(ro_unpublish) TYPE REF TO if_xco_srvb_operation.
ENDINTERFACE.