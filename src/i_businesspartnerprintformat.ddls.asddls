@AbapCatalog.sqlViewName: 'IBPPRNTFRMT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@Search.searchable: true
@EndUserText.label: 'Business Partner Print Format'
@ClientHandling.algorithm: #SESSION_VARIABLE

@ObjectModel: {
  representativeKey: 'BusinessPartnerPrintFormat',
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  resultSet.sizeCategory: #XS,
  usageType.dataClass: #CUSTOMIZING,
  sapObjectNodeType.name: 'BusinessPartnerPrintFormat',
  modelingPattern: #NONE,
  supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Metadata.ignorePropagatedAnnotations: true

define view I_BusinessPartnerPrintFormat
  as select from dd07l
  association [0..*] to I_BusinessPartnerPrintFormatT as _Text on $projection.BusinessPartnerPrintFormat = _Text.BusinessPartnerPrintFormat
{
  key BusinessPartnerPrintFormat,
      DomainValue
}