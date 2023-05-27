INTERFACE if_gsm_api_metric
  PUBLIC.

  METHODS add_attribute
    IMPORTING
      !iv_attribute_id TYPE if_gsm_api_types=>tv_attribute_id
      !iv_attribute_name TYPE if_gsm_api_types=>tv_name
    RAISING
      cx_gsm_api.
  METHODS add_target
    IMPORTING
      !iv_target_type TYPE if_gsm_api_types=>tv_target_type
      !iv_granularity TYPE if_gsm_api_types=>tv_period DEFAULT if_gsm_api_constants=>e_granularity-as_collected
    RAISING
      cx_gsm_api.
ENDINTERFACE.