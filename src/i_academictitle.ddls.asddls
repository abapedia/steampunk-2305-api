@EndUserText.label: 'Academic Titles'
@VDM.viewType: #BASIC
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'AcademicTitle'
@Analytics.technicalName: 'IACADEMICTITLE'
@ObjectModel.sapObjectNodeType.name: 'AcademicTitle' 
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A 
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]


define view entity I_AcademicTitle as
    select distinct from tsad2 
association[0..*] to I_AcademicTitleText as _Text
  on $projection.AcademicTitle = _Text.AcademicTitle  
{
  key AcademicTitle,
      AcademicTitleName
}