INTERFACE if_satc_api_run
  PUBLIC.

  METHODS run
    RETURNING VALUE(atc_result) TYPE REF TO if_satc_api_result
    RAISING cx_satc_api.

ENDINTERFACE.