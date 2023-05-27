CLASS cl_xco_cp_dbt_storage_type_f DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    DATA:
      column_store TYPE REF TO cl_xco_dbt_storage_type READ-ONLY,
      row_store    TYPE REF TO cl_xco_dbt_storage_type READ-ONLY,
      undefined    TYPE REF TO cl_xco_dbt_storage_type READ-ONLY.

    METHODS:
      for
        IMPORTING
          iv_storage_type        TYPE cl_xco_dbt_storage_type=>tv_value
        RETURNING
          VALUE(ro_storage_type) TYPE REF TO cl_xco_dbt_storage_type.

ENDCLASS.

CLASS cl_xco_cp_dbt_storage_type_f IMPLEMENTATION.
ENDCLASS.