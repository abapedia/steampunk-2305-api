CLASS cl_gsm_api_test DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_gsm_api_test.

    CLASS-METHODS get_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO if_gsm_api_test
      RAISING
      cx_gsm_api.
ENDCLASS.

CLASS cl_gsm_api_test IMPLEMENTATION.
ENDCLASS.