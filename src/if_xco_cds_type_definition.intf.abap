INTERFACE if_xco_cds_type_definition PUBLIC.
  INTERFACES:
    if_xco_ar_object,

    if_xco_gen_drty_std_type.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_cds_type_definition WITH DEFAULT KEY.

  DATA:
    name TYPE sxco_cds_object_name READ-ONLY.
ENDINTERFACE.