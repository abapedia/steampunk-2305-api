@EndUserText.label: 'Holiday Calendar'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel.representativeKey: 'PublicHolidayCalendarID'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE ]
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory:  #S


define view entity I_PublicHolidayCalendarBasic 
  as select from fhc_c_hcal
  
  association [0..*] to I_PublHolidayCalendarBasicText as _Text on $projection.PublicHolidayCalendarID = _Text.PublicHolidayCalendarID
  association [0..*] to I_PublHldayCalendarAssignment as _Assgn on $projection.PublicHolidayCalendarID = _Assgn.PublicHolidayCalendarID

{
  key PublicHolidayCalendarID,
      PublicHolidayCalendarLegacyID,
      PublHldayCalValidityStartDate,
      PublHldayCalValidityEndDate
}