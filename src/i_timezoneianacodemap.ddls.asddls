@EndUserText.label: 'Time Zone Code According to IANA Time Zone Database'
@VDM:{
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}  
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {
  dataCategory: #DIMENSION,
  dataExtraction.enabled: true
}
@ObjectModel: {
  sapObjectNodeType.name: 'TimeZoneIANACode',
  representativeKey:      'TimeZoneIANACode',
  usageType: {
    dataClass:      #CUSTOMIZING,
    serviceQuality: #A,
    sizeCategory:   #S
  },
  supportedCapabilities:  [ #CDS_MODELING_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET, 
                            #SQL_DATA_SOURCE, #ANALYTICAL_DIMENSION ],
  modelingPattern: #ANALYTICAL_DIMENSION
}
@Metadata.ignorePropagatedAnnotations: true

define view entity I_TimeZoneIANACodeMap
  as select from tzonemap

  association [0..1] to I_TimeZone as _TimeZone on $projection.TimeZoneID = _TimeZone.TimeZoneID

{
  key TimeZoneIANACode,
      TimeZoneID,
      IANACodeIsCustDefinedDefault,
      IANACodeIsSAPDefinedDefault
}