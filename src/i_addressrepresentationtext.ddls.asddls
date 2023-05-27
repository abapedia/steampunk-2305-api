@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressRepresentationCode'
@ObjectModel.dataCategory: #TEXT
@Analytics.technicalName: 'IADDRSCRPTTXT'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@EndUserText.label: 'Description of language scripts'
define view entity I_AddressRepresentationText
  as select from tsadvt
{
  key Language,
  key AddressRepresentationCode,
      AddressRepresentationDesc
}