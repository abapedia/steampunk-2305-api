@VDM: {lifecycle.contract.type: #PUBLIC_LOCAL_API,
       viewType: #BASIC 
}
@AbapCatalog: { buffering: {status: #ACTIVE,         
                            type: #FULL,
                            numberOfKeyFields: 2},
                compiler.compareFilter: true,
                sqlViewName: 'IFIFYEARVARTXT',

                preserveKey: true
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics: {dataExtraction.enabled: true}
@ClientHandling.algorithm: #SESSION_VARIABLE
@EndUserText.label: 'Fiscal Year Variant Text'
@ObjectModel: {dataCategory: #TEXT, 
               usageType: { serviceQuality: #A,
                            sizeCategory: #S,
                            dataClass: #CUSTOMIZING },
               modelingPattern: #LANGUAGE_DEPENDENT_TEXT,
               supportedCapabilities: [#LANGUAGE_DEPENDENT_TEXT,
                                     #CDS_MODELING_ASSOCIATION_TARGET, 
                                     #CDS_MODELING_DATA_SOURCE,
                                     #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE,
                                     #SEARCHABLE_ENTITY],
               representativeKey: 'FiscalYearVariant'                                     
}      
@Metadata.ignorePropagatedAnnotations: true                               
@Search.searchable: true
                                     
define view I_FiscalYearVariantText as select from t009t 

association [0..1] to I_Language as _Language on $projection.Language = _Language.Language

{ 
  key Language,
  key FiscalYearVariant,
      FiscalYearVariantDescription
}