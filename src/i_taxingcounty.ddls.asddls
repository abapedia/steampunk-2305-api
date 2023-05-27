@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Taxing County'
@ObjectModel.representativeKey: 'TaxingCounty'
@Analytics.technicalName: 'ITAXINGCOUNTY'
@ObjectModel.sapObjectNodeType.name: 'TaxingCounty'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@VDM.viewType: #BASIC
define view entity I_TaxingCounty
  as select from t005e
  association [1..1] to I_Country          as _Country on  $projection.Country = _Country.Country

  association [1..1] to I_Region           as _Region  on  $projection.Region  = _Region.Region
                                                       and $projection.Country = _Region.Country

  association [0..*] to I_TaxingCountyText as _Text    on  $projection.Country      = _Text.Country
                                                       and $projection.Region       = _Text.Region
                                                       and $projection.TaxingCounty = _Text.TaxingCounty
{
  key Country,
  key Region,
  key TaxingCounty
}