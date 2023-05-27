@AbapCatalog.sqlViewName: 'I_MD_FUNCTION'
@EndUserText.label: 'Value Help for Func of Contact Person'
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
//@Analytics : { dataCategory: #DIMENSION }
@ObjectModel.supportedCapabilities: [ #CDS_MODELING_ASSOCIATION_TARGET, #SQL_DATA_SOURCE, #CDS_MODELING_DATA_SOURCE ,
                           #EXTRACTION_DATA_SOURCE , #ANALYTICAL_DIMENSION ]
@ObjectModel.sapObjectNodeType.name: 'BPContactPersonFunction'
@ObjectModel.representativeKey: 'ContactPersonFunction'
@Search.searchable: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #M
@ObjectModel.usageType.dataClass: #MASTER

define view I_ContactPersonFunction
  as select from tb912
  association [0..*] to I_ContactPersonFunctionT as _Text on $projection.ContactPersonFunction = _Text.ContactPersonFunction
{
  key ContactPersonFunction
}