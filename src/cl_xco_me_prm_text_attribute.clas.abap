CLASS cl_xco_me_prm_text_attribute DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_me_prm_text_attribute WITH DEFAULT KEY.

    METHODS:
      create_text
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_me_prm_text.
ENDCLASS.

CLASS cl_xco_me_prm_text_attribute IMPLEMENTATION.
ENDCLASS.