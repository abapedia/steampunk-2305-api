@EndUserText.label: 'Exchange Rate Type'
@Analytics: {dataCategory: #DIMENSION, dataExtraction.enabled: true}
@VDM.viewType: #BASIC
@AbapCatalog.sqlViewName: 'IFIEXCHRATETYPE'
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@AbapCatalog.buffering.status: #ACTIVE         
@AbapCatalog.buffering.type: #FULL
@AbapCatalog.buffering.numberOfKeyFields: 1
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.ignorePropagatedAnnotations: true  

@ObjectModel: {representativeKey: 'ExchangeRateType', 
               sapObjectNodeType.name: 'ExchangeRateType', 
               supportedCapabilities: [ #EXTRACTION_DATA_SOURCE, #ANALYTICAL_DIMENSION, #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ],
               modelingPattern: #ANALYTICAL_DIMENSION,
               usageType: {
                            dataClass: #MASTER,
                            serviceQuality: #A,
                            sizeCategory: #M
                           }
              }

@Search.searchable: true

define view I_ExchangeRateType as select from tcurv
association [0..*] to I_ExchangeRateTypeText as _Text
on tcurv.kurst = _Text.ExchangeRateType
{
  key ExchangeRateType,
      ReferenceCurrency,
      BuyingRateAvgExchangeRateType,
      InvertedExchangeRateIsAllowed,
      SellingRateAvgExchangeRateType,
      FixedExchangeRateIsUsed,
      SpecialConversionIsUsed,
      SourceCurrencyIsBaseCurrency
}