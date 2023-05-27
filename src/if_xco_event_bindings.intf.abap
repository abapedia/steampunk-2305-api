INTERFACE if_xco_event_bindings PUBLIC.
  INTERFACES:
    if_xco_ar_objects.

  METHODS:
    get
      RETURNING
        VALUE(rt_event_bindings) TYPE if_xco_event_binding=>list.
ENDINTERFACE.