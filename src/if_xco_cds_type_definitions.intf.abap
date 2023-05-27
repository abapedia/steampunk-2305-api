INTERFACE if_xco_cds_type_definitions PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_cds_type_definitions) TYPE if_xco_cds_type_definition=>list.
ENDINTERFACE.