@EndUserText.label: 'Business Partner Identification' //same as DDL description
@VDM.viewType: #BASIC
@AccessControl.authorizationCheck:#CHECK
@AccessControl.personalData.blocking: #REQUIRED
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET,
                                     #EXTRACTION_DATA_SOURCE,
                                     #ANALYTICAL_DIMENSION]
@ObjectModel.modelingPattern: #ANALYTICAL_DIMENSION 
@ObjectModel.representativeKey: 'BPIdentificationNumber'
@Analytics.technicalName: 'IBUPAID'
@Metadata.ignorePropagatedAnnotations: true
@Analytics: {
  dataCategory: #DIMENSION,
  dataExtraction: {
    enabled: true,
    delta.changeDataCapture: {
      mapping:[
                {
                    table: 'BUT0ID', role: #MAIN,
                    viewElement: ['BusinessPartner','BPIdentificationType' , 'BPIdentificationNumber'],
                    tableElement: ['partner','type','idnumber']
                },
                {
                    table: 'BUT000', role: #LEFT_OUTER_TO_ONE_JOIN,
                    viewElement: ['BusinessPartner'],
                    tableElement: ['partner']
                }
                
           ]
    }
  }
}
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'IDT',
  allowNewDatasources: false,
  dataSources: ['_BusinessPartner'],
  quota: {
    maximumFields: 250,
    maximumBytes: 2500
  }
}
define view entity I_BuPaIdentification
  as select from but0id 
  association [1..1] to I_BusinessPartner     as _BusinessPartner     on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  
  association [0..1] to I_BuPaIdentificationType     as _BuPaIdentificationType on $projection.BPIdentificationType = _BuPaIdentificationType.BPIdentificationType
{
  key BusinessPartner,
  key BPIdentificationType,
  key BPIdentificationNumber,
      BPIdnNmbrIssuingInstitute,
      BPIdentificationEntryDate,
      Country,
      Region,
      ValidityStartDate,
      ValidityEndDate,
      AuthorizationGroup
}