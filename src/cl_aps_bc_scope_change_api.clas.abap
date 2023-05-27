CLASS cl_aps_bc_scope_change_api DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_aps_bc_scope_change_api.

    CLASS-METHODS create_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO if_aps_bc_scope_change_api.
ENDCLASS.

CLASS cl_aps_bc_scope_change_api IMPLEMENTATION.
ENDCLASS.