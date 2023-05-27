INTERFACE if_xco_ar_ront_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                  TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_sap_object_types) TYPE REF TO if_xco_sap_object_types.
ENDINTERFACE.