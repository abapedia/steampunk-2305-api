@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Name Supplement - Text'
@ObjectModel.dataCategory: #TEXT
@Analytics.technicalName: 'INAMESUPPLEMENTT'
@ObjectModel.representativeKey: 'PersonNameSupplementCode'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity I_NameSupplementText
  as select from tsad5t
{
  key Language,
  key PersonNameSupplementCode,
      NameSupplementDescription
}