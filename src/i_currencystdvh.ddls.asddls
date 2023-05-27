@AbapCatalog.sqlViewName: 'ICURRSTDVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey:true
@ClientHandling.algorithm: #SESSION_VARIABLE
@VDM.viewType: #COMPOSITE
@VDM.lifecycle.contract.type: #PUBLIC_LOCAL_API
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'Currency',
                usageType.sizeCategory: #S,
                usageType.dataClass: #CUSTOMIZING,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true 
@EndUserText.label: 'Currency'
@Search.searchable: true
@Consumption.ranked: true
define view I_CurrencyStdVH as select from I_Currency {
  key Currency,
      _Text
}