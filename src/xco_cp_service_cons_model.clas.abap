CLASS xco_cp_service_cons_model DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      consumption_type TYPE REF TO cl_xco_cp_srvc_consumpn_type_f READ-ONLY,
      version          TYPE REF TO cl_xco_cp_srvc_version_f READ-ONLY,
      origin           TYPE REF TO cl_xco_cp_srvc_origin_factory READ-ONLY.

ENDCLASS.

CLASS xco_cp_service_cons_model IMPLEMENTATION.
ENDCLASS.