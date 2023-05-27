INTERFACE if_xco_cp_gen_evtb_o_patch_obj PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_cp_gen_evtb_o_patch_obj WITH DEFAULT KEY.

  DATA:
    name TYPE if_xco_event_binding=>tv_name READ-ONLY.

  METHODS:
    create_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_evtb_s_change,
    get_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_evtb_s_change,
    delete_change_specification.
ENDINTERFACE.