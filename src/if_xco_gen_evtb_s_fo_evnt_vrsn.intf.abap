INTERFACE if_xco_gen_evtb_s_fo_evnt_vrsn PUBLIC.
  DATA:
    major_version TYPE if_xco_eb_event_version=>tv_major_version READ-ONLY.

  METHODS:
    set_minor_version
      IMPORTING
        iv_minor_version TYPE if_xco_eb_event_version=>tv_minor_version
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn,
    set_patch_version
      IMPORTING
        iv_patch_version TYPE if_xco_eb_event_version=>tv_patch_version
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn,
    set_entity_name
      IMPORTING
        iv_entity_name TYPE if_xco_eb_event_version=>tv_entity_name
      RETURNING
        VALUE(ro_me)   TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn,
    set_entity_event_name
      IMPORTING
        iv_entity_event_name TYPE if_xco_eb_event_version=>tv_entity_event_name
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn.
ENDINTERFACE.