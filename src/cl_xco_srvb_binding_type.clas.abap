CLASS cl_xco_srvb_binding_type DEFINITION PUBLIC ABSTRACT
     CREATE PRIVATE.
  PUBLIC SECTION.

    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_srvb_binding_type WITH DEFAULT KEY,
      BEGIN OF ts_value,
        bind_type          TYPE c LENGTH 30,
        bind_type_category TYPE n LENGTH 1,
        bind_type_version  TYPE c LENGTH 30,
      END OF ts_value.

    DATA:
      value TYPE ts_value READ-ONLY.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          is_value TYPE ts_value.
ENDCLASS.

CLASS cl_xco_srvb_binding_type IMPLEMENTATION.
ENDCLASS.