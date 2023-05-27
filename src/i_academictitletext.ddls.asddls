@EndUserText.label: 'Text for Academic Title'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.usageType.dataClass: #CUSTOMIZING 
@ObjectModel.usageType.serviceQuality: #A 
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.dataCategory: #TEXT
//@Analytics.technicalName: 'IACADEMICTITLET'
@ObjectModel.representativeKey: 'AcademicTitle'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@VDM.viewType: #BASIC
define view entity I_AcademicTitleText   
as select from tsad2t
 association[0..1] to I_Language as _Language 
  on   tsad2t.langu = _Language.Language
 
{
  key AcademicTitle,
  key Language,
      AcademicTitleName
}