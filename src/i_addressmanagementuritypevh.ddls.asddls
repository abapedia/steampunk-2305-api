@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Address Management URI Type'
@ObjectModel.dataCategory: #VALUE_HELP
@Analytics.technicalName: 'IADMNGURITYPEVH'
@ObjectModel.representativeKey: 'AddressManagementURIType'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity I_AddressManagementURITypeVH
  as select from I_AddressManagementURIType
{
  key AddressManagementURIType,
      DomainValue,
      _Text
}