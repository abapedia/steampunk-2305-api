@AbapCatalog.sqlViewName: 'IBPOCCUPATION'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Business Partner Occupation'

@ObjectModel: {
  representativeKey: 'BusinessPartnerOccupation',
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  resultSet.sizeCategory: #XS,
  usageType.dataClass: #CUSTOMIZING,
  sapObjectNodeType.name: 'BusinessPartnerOccupation',
  modelingPattern: #NONE,
  supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}

@Metadata.ignorePropagatedAnnotations: true

define view I_BusinessPartnerOccupation as select  from tb028
association [0..*]to I_BusPartOccupationText as _Text on $projection.BusinessPartnerOccupation = _Text.BusinessPartnerOccupation
 {
  key BusinessPartnerOccupation
}