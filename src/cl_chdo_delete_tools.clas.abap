CLASS cl_chdo_delete_tools DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_chdo_enhancements.
    INTERFACES if_chdo_delete_tools.
    TYPES ty_count TYPE sy-dbcnt.
    TYPES ty_c_counter TYPE i.

    CLASS-DATA mo_instance TYPE REF TO cl_chdo_delete_tools.

    CLASS-METHODS get_instance
      RETURNING
      VALUE(ro_instance) TYPE REF TO cl_chdo_delete_tools.
ENDCLASS.

CLASS cl_chdo_delete_tools IMPLEMENTATION.
ENDCLASS.