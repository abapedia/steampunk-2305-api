CLASS cl_xco_ad_object_read_state DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list     TYPE STANDARD TABLE OF REF TO cl_xco_ad_object_read_state WITH DEFAULT KEY,
      tv_value TYPE c.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_ad_object_read_state IMPLEMENTATION.
ENDCLASS.