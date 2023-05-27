CLASS cl_xco_cp_amdp_option_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      read_only                  TYPE REF TO if_xco_amdp_option READ-ONLY,
      cds_session_client_current TYPE REF TO if_xco_amdp_option READ-ONLY,
      client_independent         TYPE REF TO if_xco_amdp_option READ-ONLY.

    METHODS:
      cds_session_client
        IMPORTING
          iv_client        TYPE sxco_ao_subcomponent_name
        RETURNING
          VALUE(ro_option) TYPE REF TO if_xco_amdp_option.

ENDCLASS.

CLASS cl_xco_cp_amdp_option_f IMPLEMENTATION.
ENDCLASS.