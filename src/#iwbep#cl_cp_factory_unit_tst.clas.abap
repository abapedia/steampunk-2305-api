CLASS /iwbep/cl_cp_factory_unit_tst DEFINITION FOR TESTING
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS create_v4_local_proxy
      IMPORTING is_service_key         TYPE /iwbep/if_cp_client_proxy=>ty_s_service_key_v4
                iv_do_write_traces     TYPE abap_bool DEFAULT abap_false
      RETURNING VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   /iwbep/cx_gateway.
    CLASS-METHODS create_v2_local_proxy
      IMPORTING is_service_key         TYPE /iwbep/if_cp_client_proxy=>ty_s_service_key_v2
                iv_do_write_traces     TYPE abap_bool DEFAULT abap_false
      RETURNING VALUE(ro_client_proxy) TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING   /iwbep/cx_gateway.

ENDCLASS.

CLASS /iwbep/cl_cp_factory_unit_tst IMPLEMENTATION.
ENDCLASS.