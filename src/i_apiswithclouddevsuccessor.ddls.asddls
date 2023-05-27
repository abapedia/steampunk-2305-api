@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.ignorePropagatedAnnotations: true
@EndUserText.label: 'APIs with Cloud Development Successors'
define view entity I_APIsWithCloudDevSuccessor
  // Option 1: Predecessor has one or more successors for cloud development
  as select from ars_w_api_state               as predecessor
    inner join   ARS_API_SUCCESSORS_FOR_C1_SCP as successor           on  predecessor.object_type     = successor.tadir_object
                                                                      and predecessor.object_name     = successor.tadir_obj_name
                                                                      and predecessor.sub_object_type = successor.object_type
                                                                      and predecessor.sub_object_name = successor.object_key
    inner join   ARS_RUNTIME_API_STATE         as cloud_dev_successor on  cloud_dev_successor.object_type               = successor.successor_tadir_object
                                                                      and cloud_dev_successor.object_name               = successor.successor_tadir_obj_name
                                                                      and cloud_dev_successor.sub_object_type           = successor.successor_object_type
                                                                      and cloud_dev_successor.sub_object_name           = successor.successor_object_key
                                                                      and cloud_dev_successor.compatibility_contract    = 'C1' // System-internal use
                                                                      and cloud_dev_successor.use_in_sap_cloud_platform = 'X'  // Use in cloud development
                                                                      and cloud_dev_successor.release_state             = 'RELEASED'
  association [0..1] to v_ars_release_state as _text on _text.state = predecessor.release_state
{
  key PredecessorObjectType,
  key PredecessorObjectName,
  key PredecessorObjectDirectoryType,
  key PredecessorObjectDirectoryName,
  key SuccessorObjectType,
  key SuccessorObjectName,
  key SuccessorObjectDirectoryType,
  key SuccessorObjectDirectoryName,
      SuccessorConceptName,
      SuccessorCategory,
      PredecessorReleaseState,
      PredecessorReleaseStateDescr
}