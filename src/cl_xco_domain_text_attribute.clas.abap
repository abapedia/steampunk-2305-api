CLASS cl_xco_domain_text_attribute DEFINITION PUBLIC ABSTRACT
     CREATE PRIVATE.
  PUBLIC SECTION.
    ALIASES:
      value FOR if_xco_i18n_text_attribute~value.

    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_domain_text_attribute WITH DEFAULT KEY.

    METHODS:
      create_text FINAL
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_domain_text.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value     TYPE sxco_i18n_text_attribute
          io_text_kind TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_domain_text_attribute IMPLEMENTATION.
ENDCLASS.