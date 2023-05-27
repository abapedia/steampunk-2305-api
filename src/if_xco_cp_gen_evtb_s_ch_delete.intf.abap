INTERFACE if_xco_cp_gen_evtb_s_ch_delete PUBLIC.
  METHODS:
    add_event_version
      IMPORTING
        iv_major_version TYPE if_xco_eb_event_version=>tv_major_version,
    remove_event_version
      IMPORTING
        iv_major_version TYPE if_xco_eb_event_version=>tv_major_version.
ENDINTERFACE.