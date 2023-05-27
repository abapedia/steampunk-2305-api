@AbapCatalog.sqlViewName: 'BUPA_TYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  resultSet.sizeCategory: #XS,
  representativeKey: 'BusinessPartnerType',
  modelingPattern: #ANALYTICAL_DIMENSION,
  supportedCapabilities: [ #EXTRACTION_DATA_SOURCE, #ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ]
}
@Analytics: {
  dataExtraction.enabled: true,
  dataCategory: #DIMENSION,
  internalName: #LOCAL
} 
@EndUserText.label: 'Business Partner Types'
@ObjectModel.sapObjectNodeType.name: 'BusinessPartnerType'
@Metadata.ignorePropagatedAnnotations: true
define view I_BusinessPartnerType
  as select from tb004
  association [0..*] to I_BusinessPartnerTypeText as _Text on $projection.BusinessPartnerType = _Text.BusinessPartnerType
{
  key BusinessPartnerType
}