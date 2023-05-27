INTERFACE if_satc_api_factory
  PUBLIC.
  TYPES ty_transport_id TYPE c LENGTH 20.
  TYPES ty_check_variant_name TYPE c LENGTH 30.
  METHODS create_run_configuration
    IMPORTING object_set TYPE REF TO if_satc_object_set
    RETURNING VALUE(run_configuration) TYPE REF TO if_satc_api_run_configuration.
  METHODS create_run
    IMPORTING run_configuration TYPE REF TO if_satc_api_run_configuration
    RETURNING VALUE(run) TYPE REF TO if_satc_api_run.
  METHODS create_object_set_fr_transport
    IMPORTING transport TYPE ty_transport_id
    RETURNING VALUE(object_set) TYPE REF TO if_satc_object_set
    RAISING cx_satc_api.
  METHODS create_object_set_for_list
    IMPORTING object_keys TYPE if_satc_object_set=>ty_object_keys
    RETURNING VALUE(object_set) TYPE REF TO if_satc_object_set
    RAISING cx_satc_api.
  METHODS get_result_by_id
    IMPORTING result_id TYPE if_satc_api_result=>ty_result_id
    RETURNING VALUE(atc_result) TYPE REF TO if_satc_api_result
    RAISING cx_satc_api.
  METHODS get_check_variant_by_name
    IMPORTING name TYPE ty_check_variant_name
    RETURNING VALUE(check_variant) TYPE REF TO cl_satc_api_check_variant
    RAISING cx_satc_api.

ENDINTERFACE.