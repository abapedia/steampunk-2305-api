@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@EndUserText.label: 'Address Object Type'
@ObjectModel.representativeKey: 'AddressObjectType'
@Analytics.technicalName: 'IADDROBJTYPE'
@ObjectModel.sapObjectNodeType.name: 'AddressObjectType'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_AddressObjectType
  as select from dd07l
  association [0..*] to I_AddressObjectTypeText as _Text on $projection.AddressObjectType = _Text.AddressObjectType
{
  key AddressObjectType
}