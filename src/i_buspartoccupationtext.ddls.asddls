@AbapCatalog.sqlViewName: 'IBPOCCTEXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel: {
  representativeKey: 'BusinessPartnerOccupation',
  dataCategory: #TEXT,
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  usageType.dataClass: #CUSTOMIZING,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Metadata.ignorePropagatedAnnotations: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Business Partner Occupation - Text'
define view I_BusPartOccupationText as select from tb028t {
  key Language,
  key BusinessPartnerOccupation,
      OccupationDescription
}