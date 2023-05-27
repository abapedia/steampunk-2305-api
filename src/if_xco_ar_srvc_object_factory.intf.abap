INTERFACE if_xco_ar_srvc_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                             TYPE if_xco_service_consumption_mdl=>tv_name
      RETURNING
        VALUE(ro_service_consumption_model) TYPE REF TO if_xco_service_consumption_mdl.
ENDINTERFACE.