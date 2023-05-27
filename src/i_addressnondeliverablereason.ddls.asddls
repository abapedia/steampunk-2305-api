@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.representativeKey: 'AddressNonDeliverableReason'
@Analytics.technicalName: 'IBPADNONDLRSN'
@ObjectModel.sapObjectNodeType.name: 'AddressNonDeliverableReason'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@EndUserText.label: 'View for undeliverable address reasons'
define view entity I_AddressNonDeliverableReason
  as select from tsad12
  association [0..*] to I_AddressNonDeliverableReasonT as _Text on $projection.AddressNonDeliverableReason = _Text.AddressNonDeliverableReason
{
  key AddressNonDeliverableReason
}