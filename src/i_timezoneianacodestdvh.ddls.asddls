@EndUserText.label: 'Time Zone Code According to IANA Time Zone Database'
@VDM:{
  viewType: #COMPOSITE,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}  
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel: {
  dataCategory:           #VALUE_HELP,
  sapObjectNodeType.name: 'TimeZoneIANACode',
  representativeKey:      'TimeZoneIANACode',
  usageType: {
    dataClass:      #CUSTOMIZING,
    serviceQuality: #A,
    sizeCategory:   #S
  },
  supportedCapabilities:  [ #VALUE_HELP_PROVIDER ],
  modelingPattern:          #VALUE_HELP_PROVIDER
}
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Consumption.ranked: true

define view entity I_TimeZoneIANACodeStdVH
  as select from I_TimeZoneIANACodeMap

  association [0..*] to I_TimeZoneText as _TimeZoneText on $projection.TimeZoneID = _TimeZoneText.TimeZoneID

{
  key TimeZoneIANACode,
      TimeZoneID
}