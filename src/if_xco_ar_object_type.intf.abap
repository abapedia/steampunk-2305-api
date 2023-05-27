INTERFACE if_xco_ar_object_type PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_ar_object_type WITH DEFAULT KEY.

  DATA:
    value TYPE sxco_ar_object_type READ-ONLY.

  METHODS:
    get_filter
      RETURNING
        VALUE(ro_filter) TYPE REF TO if_xco_ar_filter.
ENDINTERFACE.