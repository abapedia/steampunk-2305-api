@AbapCatalog.sqlViewName: 'IBPADDRTYPE'
@ClientHandling.algorithm: #SESSION_VARIABLE
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.sapObjectNodeType.name: 'BusinessPartnerAddressUsage'
@Search.searchable: true
@VDM.viewType: #BASIC
@EndUserText.label: 'Business Partner Address Types'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel: {
  representativeKey: 'AddressType',
  usageType.serviceQuality: #A,
  usageType.sizeCategory : #M,
  usageType.dataClass: #MASTER,
  modelingPattern: #NONE,
  supportedCapabilities: [#CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
                                     
define view I_BusinessPartnerAddressType
  as select from tb009
  association [0..*] to I_BusinessPartnerAddressTypeT as _Text on $projection.AddressType = _Text.AddressType   
{
  key AddressType
}