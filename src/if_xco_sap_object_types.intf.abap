INTERFACE if_xco_sap_object_types PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_sap_object_types) TYPE if_xco_sap_object_type=>list.
ENDINTERFACE.