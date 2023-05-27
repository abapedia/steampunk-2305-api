CLASS cl_xco_aplo_subobj_text_attrbt DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_aplo_subobj_text_attrbt WITH DEFAULT KEY.

    METHODS:
      create_text FINAL
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_aplo_subobj_text.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value     TYPE sxco_i18n_text_attribute
          io_text_kind TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_aplo_subobj_text_attrbt IMPLEMENTATION.
ENDCLASS.