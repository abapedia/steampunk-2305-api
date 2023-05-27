@AbapCatalog.sqlViewName: 'IBPINDKEY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      automatic: true
      }
    }
  }
@ObjectModel.representativeKey:'IndustrySector'    
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Industry Key'
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  sapObjectNodeType.name: 'BusinessPartnerIndustrySector',
  modelingPattern: #NONE,
  supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ,
                           #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]
}
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartIndustryKey
  as select from tb038a
  association [0..*] to I_BusPartIndustryKeyText as _Text on  $projection.IndustrySector     = _Text.IndustrySector
                                                           and $projection.IndustrySystemType = _Text.IndustrySystemType
  association [0..1] to I_BusPartIndustrySystem  as _BusPartIndustrySystem on  $projection.IndustrySystemType = _BusPartIndustrySystem.IndustrySystemType                                                         
{
  key IndustrySystemType,
  key IndustrySector
}