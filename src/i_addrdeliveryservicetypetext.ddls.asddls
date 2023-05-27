@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Description of Delivery Service Types'
@ObjectModel.dataCategory: #TEXT
@Analytics.technicalName: 'IADDELIVSRVCTYPT'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S 
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity I_AddrDeliveryServiceTypeText 
  as select from addrc_deli_servt {
  key Language,
  key DeliveryServiceTypeCode,
      DeliveryServiceTypeDescription
}