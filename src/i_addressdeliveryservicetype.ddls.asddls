@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Service Types'
@ObjectModel.representativeKey: 'DeliveryServiceTypeCode'
@Analytics.technicalName: 'IADDELIVSRVCTYPE'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_AddressDeliveryServiceType
  as select from addrc_deli_serv
  association [0..*] to I_AddrDeliveryServiceTypeText as _Text on $projection.DeliveryServiceTypeCode = _Text.DeliveryServiceTypeCode {
  key DeliveryServiceTypeCode,
      DeliveryServiceTypeName
}