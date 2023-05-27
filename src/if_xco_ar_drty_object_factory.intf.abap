INTERFACE if_xco_ar_drty_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                       TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_cds_type_definition) TYPE REF TO if_xco_cds_type_definition.
ENDINTERFACE.