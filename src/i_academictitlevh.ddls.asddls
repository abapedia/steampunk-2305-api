@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Academic Title'
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY]
@Search.searchable: true
@VDM.viewType: #BASIC

define view entity I_AcademicTitleVH
  as select from I_AcademicTitle
{
  key AcademicTitle,
      AcademicTitleName,
      _Text
}