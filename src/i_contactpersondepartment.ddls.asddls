@AbapCatalog.sqlViewName: 'I_MD_DEPARTMENT'
@EndUserText.label: 'Value Help for Dept of Contact Person'
@VDM.viewType: #BASIC
@Analytics: {
 dataCategory: #DIMENSION,
 dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      automatic: true
      }
    }
  }
@ObjectModel.supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ,
                           #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]  
//@Analytics : { dataCategory: #DIMENSION }
@ObjectModel.sapObjectNodeType.name: 'BPContactPersonDepartment'
@ObjectModel.representativeKey:'ContactPersonDepartment'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@Search.searchable: true
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER

define view I_ContactPersondepartment
  as select from tb910
  association [1..*] to I_ContactPersonDepartmentT as _Text on $projection.ContactPersonDepartment = _Text.ContactPersonDepartment
{
  key ContactPersonDepartment
}