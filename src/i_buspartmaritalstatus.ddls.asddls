@AbapCatalog.sqlViewName: 'IPBMARITALST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck:#NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel: {
  usageType.sizeCategory: #S,
  usageType.serviceQuality: #X,
  usageType.dataClass: #CUSTOMIZING,
  representativeKey: 'MaritalStatus',
  sapObjectNodeType.name: 'BusinessPartnerMaritalStatus',
  modelingPattern: #NONE,
  supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ]
}
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'BUPA Marital Status'
@Metadata.ignorePropagatedAnnotations: true

define view I_BusPartMaritalStatus as select from tb027
association [0..*] to I_BusPartMaritalStatusText as _Text on $projection.MaritalStatus = _Text.MaritalStatus


 {
  key MaritalStatus
}