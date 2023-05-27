CLASS cl_xco_tab_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PROTECTED SECTION.
    METHODS:
      get_read_access ABSTRACT
        IMPORTING
          io_object             TYPE REF TO if_xco_ar_object
          io_context            TYPE REF TO not_released
          io_read_state         TYPE REF TO cl_xco_ad_object_read_state
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_tab_origin IMPLEMENTATION.
ENDCLASS.