INTERFACE if_gsm_api_test
  PUBLIC.

  METHODS assert_equals_values
    IMPORTING
      VALUE(it_metric_values_act) TYPE if_gsm_api_types=>tt_metric_values
      VALUE(it_metric_values_exp) TYPE if_gsm_api_types=>tt_metric_values
    RAISING
      cx_gsm_api.
  METHODS assert_metrics_exist
    IMPORTING
      VALUE(it_metric_values_act) TYPE if_gsm_api_types=>tt_metric_values
      VALUE(it_metrics) TYPE if_gsm_api_types=>tt_metrics
      !iv_context TYPE string OPTIONAL
    RAISING
      cx_gsm_api.
  METHODS get_metrics
    IMPORTING
      !io_provider TYPE REF TO if_gsm_api_provider
    EXPORTING
      !et_metrics TYPE if_gsm_api_types=>tt_metrics
    RAISING
      cx_gsm_api.
  METHODS get_metric_provider
    IMPORTING
      !iv_provider_id TYPE if_gsm_api_types=>tv_provider_id
    RETURNING
      VALUE(ro_provider) TYPE REF TO if_gsm_api_provider
    RAISING
      cx_gsm_api.
  METHODS get_metric_values
    IMPORTING
      !io_provider TYPE REF TO if_gsm_api_provider
    EXPORTING
      !et_metric_values TYPE if_gsm_api_types=>tt_metric_values
      !et_messages TYPE if_gsm_api_types=>tt_messages
    RAISING
      cx_gsm_api.
ENDINTERFACE.