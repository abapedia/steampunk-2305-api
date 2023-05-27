@AbapCatalog.sqlViewName: 'I_MD_DEPARTMENTT'
@EndUserText.label: 'Department of Contact Person Textview'
//@VDM.private: false
@VDM.viewType: #BASIC
@ObjectModel.dataCategory: #TEXT
@Analytics.dataExtraction.enabled: true
//@Analytics : { dataCategory: #TEXT }
@VDM.dclSourceNotRequired:true 
@ObjectModel.representativeKey: 'ContactPersonDepartment'
@ClientHandling.algorithm: #SESSION_VARIABLE
@Search.searchable: true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.supportedCapabilities: [ #LANGUAGE_DEPENDENT_TEXT, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE, #CDS_MODELING_ASSOCIATION_TARGET,
                            #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view I_ContactPersonDepartmentT as select from tb911
association [1..1] to I_Language as _Language on $projection.Language = _Language.Language {
  key ContactPersonDepartment,
  key Language,
      ContactPersonDepartmentName
}