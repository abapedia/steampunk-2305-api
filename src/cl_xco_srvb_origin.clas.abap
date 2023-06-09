CLASS cl_xco_srvb_origin DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list TYPE STANDARD TABLE OF REF TO cl_xco_srvb_origin WITH DEFAULT KEY.

  PROTECTED SECTION.
    METHODS:
      get_read_access ABSTRACT
        IMPORTING
          io_service_binding    TYPE REF TO if_xco_service_binding
          io_version            TYPE REF TO cl_xco_srvb_version
          io_tool_set           TYPE REF TO not_released
        RETURNING
          VALUE(ro_read_access) TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_srvb_origin IMPLEMENTATION.
ENDCLASS.