INTERFACE if_xco_cp_srvb_api_lse_odv4 PUBLIC.
  DATA:
    operation TYPE REF TO if_xco_cp_srvb_api_lse_odv4_op READ-ONLY.

  METHODS:
    is_published
      IMPORTING
        io_service_binding     TYPE REF TO if_xco_service_binding
      RETURNING
        VALUE(rv_is_published) TYPE abap_bool.
ENDINTERFACE.