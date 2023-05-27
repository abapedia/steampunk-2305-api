INTERFACE if_gsm_api_metric_group
  PUBLIC.

  METHODS add_metric
    IMPORTING
      !iv_metric_id TYPE if_gsm_api_types=>tv_metric_id
      !iv_metric_type TYPE if_gsm_api_types=>tv_metric_type DEFAULT if_gsm_api_constants=>e_metric_type-gauge
      VALUE(iv_metric_name) TYPE if_gsm_api_types=>tv_name OPTIONAL
      !iv_unit TYPE if_gsm_api_types=>tv_unit
      !iv_data_type TYPE if_gsm_api_types=>tv_data_type DEFAULT if_gsm_api_constants=>e_data_type-float
      !iv_description TYPE if_gsm_api_types=>tv_description OPTIONAL
      !iv_period TYPE if_gsm_api_types=>tv_period DEFAULT if_gsm_api_constants=>e_period-hourly
      !iv_retention_time TYPE if_gsm_api_types=>tv_retention_time DEFAULT if_gsm_api_constants=>e_retention_time-_14_days
    RETURNING
      VALUE(ro_metric) TYPE REF TO if_gsm_api_metric
    RAISING
      cx_gsm_api.
  METHODS add_target
    IMPORTING
      !iv_target_type TYPE if_gsm_api_types=>tv_target_type
    RAISING
      cx_gsm_api.
ENDINTERFACE.