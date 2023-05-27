INTERFACE if_gsm_api_provider
  PUBLIC.

  METHODS initialize
    RAISING
      cx_gsm_api.
  METHODS define_model
    IMPORTING
      !io_model TYPE REF TO if_gsm_api_model
    RAISING
      cx_gsm_api.
  METHODS get_metric_values
    IMPORTING
      !iv_timestamp_start TYPE timestamp OPTIONAL
      !iv_timestamp_end TYPE timestamp OPTIONAL
      !it_metrics TYPE if_gsm_api_types=>tt_metrics
    EXPORTING
      !et_metric_values TYPE if_gsm_api_types=>tt_metric_values
      !et_messages TYPE if_gsm_api_types=>tt_messages
    RAISING
      cx_gsm_api.
ENDINTERFACE.