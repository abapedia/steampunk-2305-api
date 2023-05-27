@EndUserText.label: 'Factory Calendar - Text'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations:true
@Consumption.ranked: true
@Search.searchable: true
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'FactoryCalendarID'
@ObjectModel.supportedCapabilities:  [ #LANGUAGE_DEPENDENT_TEXT ]
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory:  #M


define view entity I_FactoryCalendarBasicText 
  as select from fhc_c_fcal_t

{
  key FactoryCalendarLanguage,
  key FactoryCalendarID,
      FactoryCalendarDescription
}