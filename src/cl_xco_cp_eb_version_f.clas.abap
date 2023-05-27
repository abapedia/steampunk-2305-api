CLASS cl_xco_cp_eb_version_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list     TYPE cl_xco_eb_version=>list READ-ONLY,
      active   TYPE REF TO cl_xco_eb_version READ-ONLY,
      inactive TYPE REF TO cl_xco_eb_version READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value          TYPE cl_xco_eb_version=>tv_value
        RETURNING
          VALUE(ro_version) TYPE REF TO cl_xco_eb_version.

ENDCLASS.

CLASS cl_xco_cp_eb_version_f IMPLEMENTATION.
ENDCLASS.