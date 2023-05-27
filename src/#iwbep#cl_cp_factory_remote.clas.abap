CLASS /iwbep/cl_cp_factory_remote DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS create_v2_remote_proxy
      IMPORTING is_proxy_model_key       TYPE /iwbep/if_cp_runtime_types=>ty_s_proxy_model_key
                io_http_client           TYPE REF TO if_web_http_client
                iv_relative_service_root TYPE string
                iv_do_fetch_csrf_token   TYPE abap_bool DEFAULT abap_true
      RETURNING VALUE(ro_client_proxy)   TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   /iwbep/cx_gateway
                cx_web_http_client_error.
    CLASS-METHODS create_v4_remote_proxy
      IMPORTING is_proxy_model_key       TYPE /iwbep/if_cp_runtime_types=>ty_s_proxy_model_key
                io_http_client           TYPE REF TO if_web_http_client
                iv_relative_service_root TYPE string
                iv_do_fetch_csrf_token   TYPE abap_bool DEFAULT abap_true
      RETURNING VALUE(ro_client_proxy)   TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   /iwbep/cx_gateway
                cx_web_http_client_error.

ENDCLASS.

CLASS /iwbep/cl_cp_factory_remote IMPLEMENTATION.
ENDCLASS.