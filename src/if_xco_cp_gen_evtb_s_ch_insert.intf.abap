INTERFACE if_xco_cp_gen_evtb_s_ch_insert PUBLIC.
  METHODS:
    add_event_version
      IMPORTING
        iv_major_version        TYPE if_xco_eb_event_version=>tv_major_version
      RETURNING
        VALUE(ro_event_version) TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn,
    get_event_version
      IMPORTING
        iv_major_version        TYPE if_xco_eb_event_version=>tv_major_version
      RETURNING
        VALUE(ro_event_version) TYPE REF TO if_xco_gen_evtb_s_fo_evnt_vrsn,
    remove_event_version
      IMPORTING
        iv_major_version TYPE if_xco_eb_event_version=>tv_major_version.
ENDINTERFACE.