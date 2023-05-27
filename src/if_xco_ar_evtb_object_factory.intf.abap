INTERFACE if_xco_ar_evtb_object_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_name                 TYPE if_xco_event_binding=>tv_name
      RETURNING
        VALUE(ro_event_binding) TYPE REF TO if_xco_event_binding.
ENDINTERFACE.