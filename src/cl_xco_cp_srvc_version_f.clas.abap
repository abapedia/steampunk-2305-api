CLASS cl_xco_cp_srvc_version_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list     TYPE cl_xco_srvc_version=>list READ-ONLY,
      active   TYPE REF TO cl_xco_srvc_version READ-ONLY,
      inactive TYPE REF TO cl_xco_srvc_version READ-ONLY.

ENDCLASS.

CLASS cl_xco_cp_srvc_version_f IMPLEMENTATION.
ENDCLASS.