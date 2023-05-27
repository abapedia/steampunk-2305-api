INTERFACE if_xco_cts_change_carrier PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_cts_change_carrier WITH DEFAULT KEY.

  METHODS:
    get_change
      RETURNING
        VALUE(ro_change) TYPE REF TO cl_xco_cts_change.
ENDINTERFACE.