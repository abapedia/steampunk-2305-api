@AbapCatalog.sqlViewName: 'IBPGROUPING'
@Search.searchable: true
@EndUserText.label: 'Business Partner Grouping'
@ClientHandling.algorithm: #SESSION_VARIABLE
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel: {
  representativeKey: 'BusinessPartnerGrouping',
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  resultSet.sizeCategory: #XS,
  usageType.dataClass: #CUSTOMIZING,
  sapObjectNodeType.name: 'BusinessPartnerGrouping',
  modelingPattern: #NONE,
  supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}

@Metadata.ignorePropagatedAnnotations: true

define view I_BusinessPartnerGrouping 
  as select distinct from tb001
  association [0..*] to I_BusinessPartnerGroupingText as _Text on $projection.BusinessPartnerGrouping = _Text.BusinessPartnerGrouping 
{
  key BusinessPartnerGrouping
}