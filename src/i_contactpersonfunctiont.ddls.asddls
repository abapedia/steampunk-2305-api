@AbapCatalog.sqlViewName: 'I_MD_FUNCTIONT'
@EndUserText.label: 'Function of Contact Person Textview'
//@VDM.private: false
@VDM.viewType: #BASIC
//@Analytics : { dataCategory: #TEXT }
@Analytics.dataExtraction.enabled: true
@ObjectModel.dataCategory: #TEXT
@VDM.dclSourceNotRequired:true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.representativeKey: 'ContactPersonFunction'
@ObjectModel.supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET,
                            #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]
@Search.searchable: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view I_ContactPersonFunctionT
  as select from tb913
  association [1..1] to I_Language as _Language on $projection.Language = _Language.Language
{
  key ContactPersonFunction,
  key Language,
      ContactPersonFunctionName
}