@AbapCatalog.sqlViewName: 'IBPLEGALFORM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Legal Form'
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.sapObjectNodeType.name: 'BusinessPartnerLegalForm'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: {
  representativeKey: 'LegalForm',
  usageType.serviceQuality: #X,
  usageType.sizeCategory : #S,
  usageType.dataClass: #CUSTOMIZING,
  modelingPattern: #NONE,
  supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}


define view I_BusinessPartnerLegalForm
  as select from tb019
  association [0..*] to I_BusinessPartnerLegalFormText as _Text on $projection.LegalForm = _Text.LegalForm
{
  key LegalForm
}