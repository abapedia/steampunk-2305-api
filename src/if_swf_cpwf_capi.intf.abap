INTERFACE if_swf_cpwf_capi
  PUBLIC.
  METHODS get_wf_instance_context_api
    RETURNING
      VALUE(result) TYPE REF TO if_swf_cpwf_capi_wf_inst_ctxt.
  METHODS get_workflow_instances_api DEFAULT IGNORE
    RETURNING
      VALUE(result) TYPE REF TO if_swf_cpwf_capi_wf_insts.
ENDINTERFACE.