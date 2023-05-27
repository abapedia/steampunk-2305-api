CLASS cl_mail_address DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_address_string TYPE string.

    INTERFACES:
      if_mail_address.

    ALIASES:
      validate FOR if_mail_address~validate.

    CLASS-METHODS:
      create_instance
        IMPORTING iv_address_string TYPE ty_address_string
        RETURNING
                  VALUE(ro_address) TYPE REF TO if_mail_address
        RAISING   cx_bcs_mail.

    METHODS constructor
      IMPORTING
        iv_address_string TYPE string.

ENDCLASS.

CLASS cl_mail_address IMPLEMENTATION.
ENDCLASS.