INTERFACE if_xco_ar_srvc_object_class PUBLIC.
  INTERFACES:
    if_xco_ar_object_class.

  METHODS:
    in
      IMPORTING
        io_source                            TYPE REF TO if_xco_ar_object_source
      RETURNING
        VALUE(ro_service_consumption_models) TYPE REF TO if_xco_service_consumptn_mdls.
ENDINTERFACE.