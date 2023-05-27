@AbapCatalog.sqlViewName: 'IFICOUNTRYVH'
@EndUserText.label: 'Country/Region'
@Analytics.dataCategory: #DIMENSION 
@VDM.viewType: #BASIC 
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@AccessControl.authorizationCheck: #NOT_REQUIRED   // #CHECK
@ObjectModel.representativeKey: 'Country'
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass:  #MASTER
@ObjectModel.usageType.serviceQuality: #A
@Search.searchable: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@Consumption.ranked: true 
//@Metadata.ignorePropagatedAnnotations: true
define view I_CountryVH as select from I_Country {
  key Country,
      Description,
      CountryThreeLetterISOCode,
      CountryThreeDigitISOCode,
      _Text
}