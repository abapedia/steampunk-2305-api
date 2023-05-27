@EndUserText.label: 'Holiday Calendar - Text'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Consumption.ranked: true
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'PublicHolidayCalendarID'
@ObjectModel.supportedCapabilities:  [ #LANGUAGE_DEPENDENT_TEXT ]
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory:  #M


define view entity I_PublHolidayCalendarBasicText 
  as select from fhc_c_hcal_t

{
  key PublicHolidayCalendarLanguage,
  key PublicHolidayCalendarID,
      PublHolidayCalendarDescription
}