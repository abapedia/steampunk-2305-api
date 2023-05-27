@AccessControl.authorizationCheck:#NOT_REQUIRED
@EndUserText.label: 'Address Management URI Type - Text'
@ObjectModel.dataCategory:         #TEXT
@Analytics.technicalName: 'IADMNGURITYPETXT'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]

@Search.searchable:                true
@VDM.viewType: #BASIC
define view entity I_AddressManagementURITypeText
  as select from dd07t
{
  key AddressManagementURIType,
  key Language,
      AddressManagementURITypeText
}