INTERFACE if_xco_cp_gen_evtb_o_patch_sct PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE if_xco_event_binding=>tv_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_evtb_o_patch_obj,
    get_object
      IMPORTING
        iv_name          TYPE if_xco_event_binding=>tv_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_evtb_o_patch_obj,
    remove_object
      IMPORTING
        iv_name TYPE if_xco_event_binding=>tv_name.
ENDINTERFACE.