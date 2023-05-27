INTERFACE if_xco_gen_bdef_s_fo_behavior
  PUBLIC.
  DATA name TYPE sxco_cds_object_name READ-ONLY.
  DATA characteristics TYPE REF TO if_xco_gen_bdef_s_fo_b_chara READ-ONLY.
  METHODS add_field
    IMPORTING
      !iv_name TYPE sxco_cds_field_name
    RETURNING
      VALUE(ro_field) TYPE REF TO if_xco_gen_bdef_s_fo_b_field.
  METHODS get_field
    IMPORTING
      !iv_name TYPE sxco_cds_field_name
    RETURNING
      VALUE(ro_field) TYPE REF TO if_xco_gen_bdef_s_fo_b_field.
  METHODS remove_field
    IMPORTING
      !iv_name TYPE sxco_cds_field_name.
  METHODS add_standard_operation
    IMPORTING
      !io_standard_operation TYPE REF TO cl_xco_bdef_standard_operation
    RETURNING
      VALUE(ro_standard_operation) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op.
  METHODS get_standard_operation
    IMPORTING
      !io_standard_operation TYPE REF TO cl_xco_bdef_standard_operation
    RETURNING
      VALUE(ro_standard_operation) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op.
  METHODS remove_standard_operation
    IMPORTING
      !io_standard_operation TYPE REF TO cl_xco_bdef_standard_operation.
  METHODS add_action
    IMPORTING
      !iv_name TYPE sxco_bdef_action_name
    RETURNING
      VALUE(ro_action) TYPE REF TO if_xco_gen_bdef_s_fo_b_action.
  METHODS get_action
    IMPORTING
      !iv_name TYPE sxco_bdef_action_name
    RETURNING
      VALUE(ro_action) TYPE REF TO if_xco_gen_bdef_s_fo_b_action.
  METHODS remove_action
    IMPORTING
      !iv_name TYPE sxco_bdef_action_name.
  METHODS add_association
    IMPORTING
      !iv_name TYPE sxco_cds_association_name
    RETURNING
      VALUE(ro_association) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn.
  METHODS add_event
    IMPORTING
      !iv_name TYPE if_xco_gen_bdef_s_fo_b_event=>tv_name
    RETURNING
      VALUE(ro_event) TYPE REF TO if_xco_gen_bdef_s_fo_b_event.
  METHODS get_association
    IMPORTING
      !iv_name TYPE sxco_cds_association_name
    RETURNING
      VALUE(ro_association) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn.
  METHODS get_event
    IMPORTING
      !iv_name TYPE if_xco_gen_bdef_s_fo_b_event=>tv_name
    RETURNING
      VALUE(ro_event) TYPE REF TO if_xco_gen_bdef_s_fo_b_event.
  METHODS remove_association
    IMPORTING
      !iv_name TYPE sxco_cds_association_name.
  METHODS remove_event
    IMPORTING
      !iv_name TYPE if_xco_gen_bdef_s_fo_b_event=>tv_name.
  METHODS add_mapping_for
    IMPORTING
      !iv_database_table TYPE clike
    RETURNING
      VALUE(ro_mapping) TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping.
  METHODS get_mapping_for
    IMPORTING
      !iv_database_table TYPE clike
    RETURNING
      VALUE(ro_mapping) TYPE REF TO if_xco_gen_bdef_s_fo_b_mapping.
  METHODS remove_mapping_for
    IMPORTING
      !iv_database_table TYPE clike.
  METHODS add_validation
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name
    RETURNING
      VALUE(ro_validation) TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn.
  METHODS get_validation
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name
    RETURNING
      VALUE(ro_validation) TYPE REF TO if_xco_gen_bdef_s_fo_b_validtn.
  METHODS remove_validation
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name.
  METHODS add_determination
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name
    RETURNING
      VALUE(ro_determination) TYPE REF TO if_xco_gen_bdef_s_fo_b_detrmtn.
  METHODS get_determination
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name
    RETURNING
      VALUE(ro_determination) TYPE REF TO if_xco_gen_bdef_s_fo_b_detrmtn.
  METHODS remove_determination
    IMPORTING
      !iv_name TYPE sxco_bdef_evaluation_name.
ENDINTERFACE.