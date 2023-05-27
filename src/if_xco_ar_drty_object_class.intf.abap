INTERFACE if_xco_ar_drty_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                      TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_cds_type_definitions) TYPE REF TO if_xco_cds_type_definitions.
ENDINTERFACE.