@AbapCatalog.sqlViewName: 'IBPBIRTHSTATETXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Birth Date Status - Text'
@ObjectModel: {
  representativeKey: 'BusinessPartnerBirthDateStatus',
  dataCategory: #TEXT,
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  usageType.dataClass: #CUSTOMIZING,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@Metadata.ignorePropagatedAnnotations: true
define view I_BusPartBirthDateStatusText
  as select from dd07t
{
  key Language,
  key BusinessPartnerBirthDateStatus,
      BusPartBirthDateStatusText
}