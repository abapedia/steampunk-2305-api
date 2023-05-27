@EndUserText.label: 'Holiday Calendar'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Consumption.ranked: true
@Metadata.ignorePropagatedAnnotations:true
@Search.searchable: true
@VDM.viewType: #COMPOSITE
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.representativeKey: 'PublicHolidayCalendarID'
@ObjectModel.supportedCapabilities:  [ #VALUE_HELP_PROVIDER ]
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory:  #S


define view entity I_PublicHolidayCalendarVH 
  as select from I_PublicHolidayCalendarBasic
  
{
  key PublicHolidayCalendarID,
      PublicHolidayCalendarLegacyID,
      _Text
}