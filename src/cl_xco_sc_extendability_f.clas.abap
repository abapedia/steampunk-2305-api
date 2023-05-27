CLASS cl_xco_sc_extendability_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      list           TYPE cl_xco_sc_extendability=>list READ-ONLY,
      extendable     TYPE REF TO cl_xco_sc_extendability READ-ONLY,

      " Non extendable.
      non_extendable TYPE REF TO cl_xco_sc_extendability READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_value                TYPE cl_xco_sc_extendability=>tv_value
        RETURNING
          VALUE(ro_extendability) TYPE REF TO cl_xco_sc_extendability.

ENDCLASS.

CLASS cl_xco_sc_extendability_f IMPLEMENTATION.
ENDCLASS.