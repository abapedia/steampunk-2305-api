INTERFACE if_xco_cp_gen_evtb_s_form PUBLIC.
  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE if_xco_event_binding=>tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_evtb_s_form,
    set_type_namespace
      IMPORTING
        iv_type_namespace TYPE if_xco_event_binding=>tv_type_namespace
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_cp_gen_evtb_s_form,
    set_sap_object_type
      IMPORTING
        iv_sap_object_type TYPE if_xco_sap_object_type=>tv_name
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_cp_gen_evtb_s_form,
    set_operation
      IMPORTING
        iv_operation TYPE if_xco_event_binding=>tv_operation
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_evtb_s_form,
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