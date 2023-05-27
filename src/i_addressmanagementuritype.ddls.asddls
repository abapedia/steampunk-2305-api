@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Address Management URI Type'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'AddressManagementURIType'
@Analytics.technicalName: 'IADMANAGEURITYPE'
@ObjectModel.sapObjectNodeType.name: 'AddressManagementURIType'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_AddressManagementURIType
  as select from dd07l
  association [0..*] to I_AddressManagementURITypeText as _Text on $projection.AddressManagementURIType = _Text.AddressManagementURIType
{
  key AddressManagementURIType,
      DomainValue
}