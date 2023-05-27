@AbapCatalog.sqlViewName: 'BUPA_TYPE_TEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  representativeKey: 'BusinessPartnerType',
  dataCategory: #TEXT,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #EXTRACTION_DATA_SOURCE,#LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Analytics.dataExtraction.enabled: true
@EndUserText.label: 'Business Partner Type - Text'
@Metadata.ignorePropagatedAnnotations: true
define view I_BusinessPartnerTypeText
  as select from tb004t
{
  key Language,
  key BusinessPartnerType,
      BusinessPartnerTypeDesc
}