INTERFACE if_swf_cpwf_capi_entity
  PUBLIC.

  TYPES: BEGIN OF ty_workflow_instance,
         " The ID of the workflow definition for which the instance was started. The ID is at most 64 characters long.
         definition_id TYPE string,
         " The version of the workflow definition for which the instance was started.
         definition_version TYPE string,
         " The workflow instance ID. The ID is at least 36 characters long.
         id TYPE string,
         " The time when the workflow instance started.
         started_at TYPE string,
         " The user who started the workflow instance. The user ID is at most 255 characters long.
         started_by TYPE string,
         " The time when the workflow instance status changed to COMPLETED.
         completed_at TYPE string,
         " The status of the workflow instance.
         status TYPE string,
         " The business key of the workflow instance. The business key of a workflow instance is limited to 255 characters.
         business_key TYPE string,
         " The subject of the workflow instance. The subject of a workflow instance is limited to 255 characters.
         subject TYPE string,
         " The workflow root instance ID. The root ID is at least 36 characters long.
         root_instance_id TYPE string,
         " The workflow parent instance ID. The parent ID can be null or at least 36 characters long.
         parent_instance_id TYPE string,
         " The scope to which the workflow instance belongs. Either "own", "shared", or a named scope.
         application_scope TYPE string,
         " Attributes of the workflow instance. Present only if the $expand parameter in the query has the value "attributes".
         attributes TYPE string,
       END OF ty_workflow_instance.

ENDINTERFACE.