@VDM: {
//  private: false,
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  representativeKey: 'TransportZone',
  dataCategory: #TEXT,
  modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
  supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET ]
}
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@Analytics.dataExtraction.enabled: true
@Analytics.technicalName: 'ITRANSPZONETXT' 
@EndUserText.label: 'Transportation Zone - Text'

define view entity I_TransportationZoneText as select from tzont
{
  key TransportZone,
  key CountryCode,
  key Language,
      TransportZoneDescription
}