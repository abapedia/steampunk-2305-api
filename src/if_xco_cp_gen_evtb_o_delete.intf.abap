INTERFACE if_xco_cp_gen_evtb_o_delete PUBLIC.
  INTERFACES:
    if_xco_cp_gen_o_delete.

  ALIASES:
    execute FOR if_xco_cp_gen_o_delete~execute.

  METHODS:
    add_object
      IMPORTING
        iv_name TYPE if_xco_event_binding=>tv_name,
    remove_object
      IMPORTING
        iv_name TYPE if_xco_event_binding=>tv_name.
ENDINTERFACE.