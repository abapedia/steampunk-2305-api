INTERFACE if_swf_cpwf_capi_wf_insts
  PUBLIC.

  TYPES: cpwf_handle TYPE swf_cpwf_handle.
  TYPES: tt_workflow_instance TYPE STANDARD TABLE OF if_swf_cpwf_capi_entity=>ty_workflow_instance WITH DEFAULT KEY.
  TYPES: ty__orderby TYPE string.
  CONSTANTS: BEGIN OF cs__orderby,
               id_asc TYPE ty__orderby VALUE 'id asc' ##no_text,
               id_desc TYPE ty__orderby VALUE 'id desc' ##no_text,
               definitionid_asc TYPE ty__orderby VALUE 'definitionId asc' ##no_text,
               definitionid_desc TYPE ty__orderby VALUE 'definitionId desc' ##no_text,
               definitionversion_asc TYPE ty__orderby VALUE 'definitionVersion asc' ##no_text,
               definitionversion_desc TYPE ty__orderby VALUE 'definitionVersion desc' ##no_text,
               startedat_asc TYPE ty__orderby VALUE 'startedAt asc' ##no_text,
               startedat_desc TYPE ty__orderby VALUE 'startedAt desc' ##no_text,
               completedat_asc TYPE ty__orderby VALUE 'completedAt asc' ##no_text,
               completedat_desc TYPE ty__orderby VALUE 'completedAt desc' ##no_text,
               startedby_asc TYPE ty__orderby VALUE 'startedBy asc' ##no_text,
               startedby_desc TYPE ty__orderby VALUE 'startedBy desc' ##no_text,
               subject_asc TYPE ty__orderby VALUE 'subject asc' ##no_text,
               subject_desc TYPE ty__orderby VALUE 'subject desc' ##no_text,
               businesskey_asc TYPE ty__orderby VALUE 'businessKey asc' ##no_text,
               businesskey_desc TYPE ty__orderby VALUE 'businessKey desc' ##no_text,
             END OF cs__orderby.
  TYPES: ty__inlinecount TYPE string.
  CONSTANTS: BEGIN OF cs__inlinecount,
               allpages TYPE ty__inlinecount VALUE 'allpages' ##no_text,
               none TYPE ty__inlinecount VALUE 'none' ##no_text,
             END OF cs__inlinecount.
  TYPES: ty__expand TYPE string.
  CONSTANTS: BEGIN OF cs__expand,
               attributes TYPE ty__expand VALUE 'attributes' ##no_text,
             END OF cs__expand.
  TYPES: ty_status TYPE string.
  CONSTANTS: BEGIN OF cs_status,
               running TYPE ty_status VALUE 'RUNNING',
               erroneous TYPE ty_status VALUE 'ERRONEOUS',
               suspended TYPE ty_status VALUE 'SUSPENDED',
               canceled TYPE ty_status VALUE 'CANCELED',
               completed TYPE ty_status VALUE 'COMPLETED',
             END OF cs_status.

  METHODS query_instances
    IMPORTING
      iv__orderby TYPE ty__orderby OPTIONAL
      iv__skip TYPE string OPTIONAL
      iv__top TYPE string OPTIONAL
      iv__inlinecount TYPE ty__inlinecount OPTIONAL
      iv__expand TYPE ty__expand OPTIONAL
      iv_cpwf_handle TYPE cpwf_handle OPTIONAL
      iv_definition_id TYPE string OPTIONAL
      iv_definition_version TYPE string OPTIONAL
      iv_status TYPE ty_status OPTIONAL
      iv_started_at TYPE string OPTIONAL
      iv_started_from TYPE string OPTIONAL
      iv_started_up_to TYPE string OPTIONAL
      iv_completed_at TYPE string OPTIONAL
      iv_completed_from TYPE string OPTIONAL
      iv_completed_up_to TYPE string OPTIONAL
      iv_started_by TYPE string OPTIONAL
      iv_subject TYPE string OPTIONAL
      iv_contains_text TYPE string OPTIONAL
      iv_business_key TYPE string OPTIONAL
      iv_root_instance_id TYPE string OPTIONAL
      iv_parent_instance_id TYPE string OPTIONAL
    RETURNING
      VALUE(result) TYPE tt_workflow_instance
    RAISING
      cx_swf_cpwf_api.
ENDINTERFACE.