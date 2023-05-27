@AbapCatalog.sqlViewName: 'BUPA_ID_TYPE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.sapObjectNodeType.name: 'BPIdentificationType'
@ObjectModel.representativeKey: 'BPIdentificationType'
@EndUserText.label: 'CDS View for BP Identification Types'
@VDM.viewType: #BASIC
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER

define view I_BuPaIdentificationType as select from tb039a {
  key BPIdentificationType,
      BPIdentificationCategory,
      IsBPPerson,
      IsBPOrganization,
      IsBPGroup
}