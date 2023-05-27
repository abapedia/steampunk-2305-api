CLASS cx_rs_vcube_read_error DEFINITION
  PUBLIC INHERITING FROM cx_static_check FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES nt_infoprov TYPE c LENGTH 30.

    CONSTANTS:
    BEGIN OF cx_rs_vcube_read_error,
      msgid TYPE symsgid VALUE 'DBMAN',
      msgno TYPE symsgno VALUE '305',
      attr1 TYPE scx_attrname VALUE 'INFOPROV',
      attr2 TYPE scx_attrname VALUE '',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_rs_vcube_read_error.
    DATA infoprov TYPE nt_infoprov.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !infoprov TYPE nt_infoprov OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_rs_vcube_read_error IMPLEMENTATION.
ENDCLASS.