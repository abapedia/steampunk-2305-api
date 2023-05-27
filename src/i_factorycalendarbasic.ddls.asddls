@EndUserText.label: 'Factory Calendar'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.representativeKey: 'FactoryCalendarID'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE ]
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory:  #S


define view entity I_FactoryCalendarBasic
  as select from fhc_c_fcal
  
  association [0..*] to I_FactoryCalendarBasicText as _Text on $projection.FactoryCalendarID = _Text.FactoryCalendarID
  
{
  key FactoryCalendarID,
      FactoryCalendarLegacyID,
      PublicHolidayCalendarID,
      FctryCalMondayIsWorkingDay,
      FctryCalTuesdayIsWorkingDay,
      FctryCalWednesdayIsWorkingDay,
      FctryCalThursdayIsWorkingDay,
      FctryCalFridayIsWorkingDay,
      FctryCalSaturdayIsWorkingDay,
      FctryCalSundayIsWorkingDay,
      FctryCalHolidayIsWorkingDay,
      FctryCalendarValidityStartDate,
      FactoryCalendarValidityEndDate,
      FactoryCalendarStartDateValue
}