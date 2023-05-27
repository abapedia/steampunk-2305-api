@AbapCatalog.sqlViewName: 'IBPSTDUSAGETXT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'BusinessPartnerStandardUsage'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.serviceQuality: #X
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.dataCategory: #TEXT
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Texts for I_Businesspartnerstandardusage'
define view I_BusPartStandardUsageText as select from dd07t 
{
  key Language,
  key BusinessPartnerStandardUsage,
      BusPartStandardUsageText
}