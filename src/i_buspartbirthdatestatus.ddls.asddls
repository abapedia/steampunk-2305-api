@AbapCatalog.sqlViewName: 'IBPBIRTHSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  resultSet.sizeCategory: #XS,
  representativeKey: 'BusinessPartnerBirthDateStatus',
  sapObjectNodeType.name: 'BusinessPartnerBirthDateStatus',
  modelingPattern: #NONE,
  supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ]
}
@ClientHandling.algorithm: #SESSION_VARIABLE
@Search.searchable: true
@EndUserText.label: 'Business Partner Birth Date status'
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartBirthDateStatus
  as select  from dd07l
  association [0..*] to I_BusPartBirthDateStatusText as _Text on $projection.BusinessPartnerBirthDateStatus = _Text.BusinessPartnerBirthDateStatus
{ 
  key BusinessPartnerBirthDateStatus
}