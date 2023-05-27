INTERFACE if_xco_gen_bdef_s_fo_b_action PUBLIC.
  DATA:
    name      TYPE sxco_bdef_action_name READ-ONLY,
    parameter TYPE REF TO if_xco_gen_bdef_s_fo_b_a_param READ-ONLY,
    result    TYPE REF TO if_xco_gen_bdef_s_fo_b_a_rsult READ-ONLY.

  METHODS:
    set_static
      IMPORTING
        iv_static    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_factory
      IMPORTING
        iv_factory   TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_save
      IMPORTING
        iv_save      TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_draft
      IMPORTING
        iv_draft     TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_determine
      IMPORTING
        iv_determine TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_features_instance
      IMPORTING
        iv_features_instance TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_features_global
      IMPORTING
        iv_features_global TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)       TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_precheck
      IMPORTING
        iv_precheck  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_authorization_none
      IMPORTING
        iv_authorization_none TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_authorization_update
      IMPORTING
        iv_authorization_update TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)            TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_lock_none
      IMPORTING
        iv_lock_none TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_extensible
      IMPORTING
        iv_extensible TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_external_name
      IMPORTING
        iv_external_name TYPE string
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_action,
    add_determination_reference
      IMPORTING
        iv_determination_name   TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_determination) TYPE REF TO if_xco_gen_bdef_s_fo_b_a_de_rf,
    add_validation_reference
      IMPORTING
        iv_validation_name   TYPE sxco_bdef_evaluation_name
      RETURNING
        VALUE(ro_validation) TYPE REF TO if_xco_gen_bdef_s_fo_b_a_va_rf.
ENDINTERFACE.