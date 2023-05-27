@VDM: {lifecycle.contract.type: #PUBLIC_LOCAL_API,
       viewType: #BASIC 
}
@AbapCatalog: { buffering: {status: #ACTIVE,         
                            type: #FULL,
                            numberOfKeyFields: 2},
                compiler.compareFilter: true,
                sqlViewName: 'IFIFISCYEARVAR',
                preserveKey: true
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {dataCategory: #DIMENSION, dataExtraction.enabled: true}
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Fiscal Year Variant'
@ObjectModel: {usageType: { serviceQuality: #A,
                            sizeCategory: #S,
                            dataClass: #CUSTOMIZING },
               modelingPattern: #ANALYTICAL_DIMENSION,
               supportedCapabilities: [#ANALYTICAL_DIMENSION, 
                                     #CDS_MODELING_ASSOCIATION_TARGET, 
                                     #CDS_MODELING_DATA_SOURCE,
                                     #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE],
               representativeKey: 'FiscalYearVariant',
               sapObjectNodeType.name: 'FiscalYearVariant'                       
}  
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Consumption.ranked: true
                                    
define view I_FiscalYearVariant as select from t009

association[0..*] to I_FiscalYearVariantText  as _Text on  $projection.FiscalYearVariant = _Text.FiscalYearVariant
{ 
  key FiscalYearVariant,
      FiscalPeriodIsEqualMonth,
      IsYearDependent,
      PostingPeriodsNumberVal,
      NumberOfSpecialPeriods,
      FsclWeekStartIsFsclYearStart,
      FiscalCalendarIsWeekBased
}