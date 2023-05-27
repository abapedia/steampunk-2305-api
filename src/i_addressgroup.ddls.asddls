@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Address Group'
@ObjectModel.representativeKey: 'AddressGroup'
@Analytics.technicalName: 'IADDRESSGROUP'
@ObjectModel.sapObjectNodeType.name: 'AddressGroup'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_AddressGroup 
  as select from tsad7 
  association [0..*] to I_AddressGroupText as _Text on $projection.AddressGroup = _Text.AddressGroup
{ 
  key AddressGroup
}