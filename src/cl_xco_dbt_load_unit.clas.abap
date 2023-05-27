CLASS cl_xco_dbt_load_unit DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list     TYPE STANDARD TABLE OF REF TO cl_xco_dbt_load_unit WITH DEFAULT KEY,
      tv_value TYPE c.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_dbt_load_unit IMPLEMENTATION.
ENDCLASS.