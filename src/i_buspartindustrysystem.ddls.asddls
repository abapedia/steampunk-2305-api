@AbapCatalog.sqlViewName: 'IBPINDSYST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC

@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  sapObjectNodeType.name: 'BPIndustrySystemType',
  modelingPattern: #NONE,
  supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ]
}
@EndUserText.label: 'Business Partner Industry System'
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartIndustrySystem
  as select from tb038
  association [0..*] to I_BusPartIndustrySystemText as _Text on $projection.IndustrySystemType = _Text.IndustrySystemType
{
  key IndustrySystemType
}