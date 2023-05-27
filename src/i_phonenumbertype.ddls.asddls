@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Phone Number Type'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.representativeKey: 'PhoneNumberType'
@Analytics.technicalName: 'IPHONENMBRTYPE'
@ObjectModel.sapObjectNodeType.name: 'PhoneNumberType'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_PhoneNumberType
  as select from dd07l
  association [0..*] to I_PhoneNumberTypeText as _Text on $projection.PhoneNumberType = _Text.PhoneNumberType
{
  key PhoneNumberType
}