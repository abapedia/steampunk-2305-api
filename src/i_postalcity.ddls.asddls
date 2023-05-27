@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Postal City'
@ObjectModel.representativeKey: 'CityNumber'
@Analytics.technicalName: 'IPOSTALCITY'
@ObjectModel.sapObjectNodeType.name: 'CityNumber'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity I_PostalCity
  as select from adrcity
  association [1..1] to I_Country        as _Country on $projection.Country = _Country.Country
  
  association [1..1] to I_Region         as _Region  on  $projection.Region  = _Region.Region
                                                     and $projection.Country = _Region.Country

  association [0..*] to I_PostalCityText as _Text    on $projection.CityNumber = _Text.CityNumber
{
  key Country,
  key CityNumber,
      Region
}