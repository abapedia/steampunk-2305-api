@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressNonDeliverableReason'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.dataCategory: #TEXT
@Analytics.technicalName: 'IBPADNONDLRSNT'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@EndUserText.label: 'Address Non-Deliverable Reason - Text'
define view entity I_AddressNonDeliverableReasonT
  as select from tsad12t
{
  key Language,
  key AddressNonDeliverableReason,
      AddressNonDeliverableReasonTxt,
      AddrNonDeliverableReasonDesc
}