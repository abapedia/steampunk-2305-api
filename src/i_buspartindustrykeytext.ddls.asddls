@AbapCatalog.sqlViewName: 'IBPINDKEYTEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Industry Key Text'
@ClientHandling.algorithm: #SESSION_VARIABLE
@Analytics.dataExtraction.enabled: true
@ObjectModel: {
  representativeKey: 'IndustrySector',
  dataCategory: #TEXT,
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  usageType.dataClass: #CUSTOMIZING,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET,
                            #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]
}
@Metadata.ignorePropagatedAnnotations: true

define view I_BusPartIndustryKeyText
  as select from tb038b
  association [0..1] to I_BusPartIndustryKey as _BusPartIndustryKey on $projection.IndustrySystemType = _BusPartIndustryKey.IndustrySystemType
                                                                    and $projection.IndustrySector = _BusPartIndustryKey.IndustrySector
                                                                
{
  key Language,
  key IndustrySystemType,
  key IndustrySector,
      IndustryKeyDescription
}