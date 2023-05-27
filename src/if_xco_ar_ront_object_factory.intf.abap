INTERFACE if_xco_ar_ront_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                   TYPE if_xco_sap_object_type=>tv_name
      RETURNING
        VALUE(ro_sap_object_type) TYPE REF TO if_xco_sap_object_type.
ENDINTERFACE.