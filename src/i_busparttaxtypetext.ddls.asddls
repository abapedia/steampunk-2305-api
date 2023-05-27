@AbapCatalog.sqlViewName: 'IBPTAXTYPETEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Tax Type - Text'
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel: {
  representativeKey: 'BPTaxType',
  dataCategory: #TEXT,
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  usageType.dataClass: #CUSTOMIZING,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartTaxTypeText
  as select from tfktaxnumtype_t
{
  key Language,
  key BPTaxType,
      TaxTypeName
}