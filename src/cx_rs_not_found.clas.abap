CLASS cx_rs_not_found DEFINITION
  PUBLIC INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS:
    BEGIN OF cx_rs_not_found,
      msgid TYPE symsgid VALUE 'RS_EXCEPTION',
      msgno TYPE symsgno VALUE '111',
      attr1 TYPE scx_attrname VALUE 'OBJECT',
      attr2 TYPE scx_attrname VALUE 'KEY',
      attr3 TYPE scx_attrname VALUE '',
      attr4 TYPE scx_attrname VALUE '',
    END OF cx_rs_not_found.

    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !object TYPE string OPTIONAL
      !key TYPE string OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_rs_not_found IMPLEMENTATION.
ENDCLASS.