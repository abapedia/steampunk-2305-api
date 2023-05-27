CLASS cl_xco_cp_dbt_load_unit_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      column_preferred TYPE REF TO cl_xco_dbt_load_unit READ-ONLY,
      page_preferred   TYPE REF TO cl_xco_dbt_load_unit READ-ONLY,
      column_enforced  TYPE REF TO cl_xco_dbt_load_unit READ-ONLY,
      page_enforced    TYPE REF TO cl_xco_dbt_load_unit READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_load_unit        TYPE cl_xco_dbt_load_unit=>tv_value
        RETURNING
          VALUE(ro_load_unit) TYPE REF TO cl_xco_dbt_load_unit.

ENDCLASS.

CLASS cl_xco_cp_dbt_load_unit_f IMPLEMENTATION.
ENDCLASS.