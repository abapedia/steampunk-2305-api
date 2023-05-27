CLASS xco_cp_service_binding DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      version                TYPE REF TO cl_xco_cp_srvb_version_f READ-ONLY,
      binding_type           TYPE REF TO cl_xco_cp_srvb_binding_type_f READ-ONLY,
      origin                 TYPE REF TO cl_xco_cp_srvb_origin_factory READ-ONLY,
      local_service_endpoint TYPE REF TO if_xco_cp_srvb_api_lcl_srvc_ep READ-ONLY.

ENDCLASS.

CLASS xco_cp_service_binding IMPLEMENTATION.
ENDCLASS.