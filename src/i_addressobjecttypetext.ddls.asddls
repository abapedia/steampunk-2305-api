@AccessControl.authorizationCheck:#NOT_REQUIRED
@EndUserText.label: 'Address Object Type - Text'
@ObjectModel.dataCategory:         #TEXT
@Analytics.technicalName: 'IADDROBJTYPETXT'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@Search.searchable:                true
@VDM.viewType: #BASIC
define view entity I_AddressObjectTypeText
  as select from dd07t
{
  key AddressObjectType,
  key Language,
      AddressObjectTypeText
}