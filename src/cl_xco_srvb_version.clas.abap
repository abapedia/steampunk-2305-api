CLASS cl_xco_srvb_version DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list     TYPE STANDARD TABLE OF REF TO cl_xco_srvb_version WITH DEFAULT KEY,
      tv_value TYPE c.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_srvb_version IMPLEMENTATION.
ENDCLASS.