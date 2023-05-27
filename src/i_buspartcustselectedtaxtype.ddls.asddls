@AbapCatalog.sqlViewName: 'IBPCUSTTAXTYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Tax Number Categories'
@ClientHandling.algorithm: #SESSION_VARIABLE

@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  resultSet.sizeCategory: #XS,
  representativeKey: 'BPTaxType',
  modelingPattern: #NONE,
  sapObjectNodeType.name: 'BusinessPartnerTaxType',
  supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ]
}

@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartCustSelectedTaxType
  as select from tfktaxnumtype_c
  association [0..*] to I_BusPartTaxTypeText as _Text on $projection.BPTaxType = _Text.BPTaxType
{
  key BPTaxType
}