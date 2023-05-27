CLASS cl_xco_cp_srvc_consumpn_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list        TYPE cl_xco_srvc_consumption_type=>list READ-ONLY,
      odata       TYPE REF TO cl_xco_srvc_consumption_type READ-ONLY,
      web_service TYPE REF TO cl_xco_srvc_consumption_type  READ-ONLY,
      rfc         TYPE REF TO cl_xco_srvc_consumption_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                   TYPE  cl_xco_srvc_consumption_type=>tv_value
        RETURNING
          VALUE(ro_consumption_type) TYPE REF TO cl_xco_srvc_consumption_type.

ENDCLASS.

CLASS cl_xco_cp_srvc_consumpn_type_f IMPLEMENTATION.
ENDCLASS.