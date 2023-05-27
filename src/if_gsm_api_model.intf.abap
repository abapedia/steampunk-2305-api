INTERFACE if_gsm_api_model
  PUBLIC.

  METHODS add_metric_group
    IMPORTING
      !iv_metric_group_id TYPE if_gsm_api_types=>tv_metric_group_id
      VALUE(iv_metric_group_name) TYPE if_gsm_api_types=>tv_name OPTIONAL
      !iv_category TYPE if_gsm_api_types=>tv_category
      !iv_severity TYPE if_gsm_api_types=>tv_severity DEFAULT if_gsm_api_constants=>e_severity-none
    RETURNING
      VALUE(ro_metric_group) TYPE REF TO if_gsm_api_metric_group
    RAISING
      cx_gsm_api.
ENDINTERFACE.