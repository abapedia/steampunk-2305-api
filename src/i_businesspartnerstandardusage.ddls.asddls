@AbapCatalog.sqlViewName: 'IBPSTDUSAGE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.sapObjectNodeType.name: 'BusinessPartnerStandardUsage'
@ObjectModel.representativeKey: 'BusinessPartnerStandardUsage'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ClientHandling.algorithm: #SESSION_VARIABLE
@Search.searchable: true
@EndUserText.label: 'Basic View for BP Standard Usage'
define view I_Businesspartnerstandardusage 
as select from dd07l 
association [0..*] to I_BusPartStandardUsageText as _Text on $projection.BusinessPartnerStandardUsage = _Text.BusinessPartnerStandardUsage
{
  key BusinessPartnerStandardUsage
}