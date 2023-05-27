CLASS cl_xco_srvc_consumption_type DEFINITION PUBLIC FINAL
     CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES:
      list     TYPE STANDARD TABLE OF REF TO cl_xco_srvc_consumption_type WITH DEFAULT KEY,
      tv_value TYPE c LENGTH 2.

    DATA:
      value TYPE tv_value READ-ONLY.

ENDCLASS.

CLASS cl_xco_srvc_consumption_type IMPLEMENTATION.
ENDCLASS.