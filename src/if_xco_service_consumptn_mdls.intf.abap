INTERFACE if_xco_service_consumptn_mdls PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_service_consumption_models) TYPE if_xco_service_consumption_mdl=>list.
ENDINTERFACE.