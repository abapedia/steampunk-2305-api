@AbapCatalog.viewEnhancementCategory: [#NONE]
//@AbapCatalog.entityBuffer.definitionAllowed: true // not supported. Basic view I_ExchangeRateType already buffered as V1 CDS view

@VDM.viewType: #BASIC

@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'ExchangeRateType',
                usageType.sizeCategory: #M,
                usageType.dataClass: #MASTER,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER }
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Metadata.ignorePropagatedAnnotations: true  

@Search.searchable: true
@Consumption.ranked: true

define view entity I_ExchangeRateTypeStdVH as select from I_ExchangeRateType {
  key ExchangeRateType,
      _Text
}