CLASS cl_xco_cp_srvb_origin_factory DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      default TYPE REF TO cl_xco_srvb_origin READ-ONLY.

    METHODS:
      local
        RETURNING
          VALUE(ro_local) TYPE REF TO cl_xco_srvb_o_local.

ENDCLASS.

CLASS cl_xco_cp_srvb_origin_factory IMPLEMENTATION.
ENDCLASS.