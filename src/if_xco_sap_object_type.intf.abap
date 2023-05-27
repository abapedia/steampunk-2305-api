INTERFACE if_xco_sap_object_type PUBLIC.
  INTERFACES:
    if_xco_ar_object.

  TYPES:
    list     TYPE STANDARD TABLE OF REF TO if_xco_sap_object_type WITH DEFAULT KEY,
    tv_name  TYPE c LENGTH 30,
    tt_names TYPE STANDARD TABLE OF tv_name WITH DEFAULT KEY.

  DATA:
    name TYPE tv_name READ-ONLY.
ENDINTERFACE.