INTERFACE if_xco_amdp_option PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_amdp_option WITH DEFAULT KEY.

  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO object.
ENDINTERFACE.