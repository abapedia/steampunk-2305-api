INTERFACE if_xco_cp_srvb_api_lse_odv2 PUBLIC.
  DATA:
    operation TYPE REF TO if_xco_cp_srvb_api_lse_odv2_op READ-ONLY.

  METHODS:
    is_published
      IMPORTING
        io_service_version     TYPE REF TO if_xco_srvb_service_version
      RETURNING
        VALUE(rv_is_published) TYPE abap_bool.
ENDINTERFACE.