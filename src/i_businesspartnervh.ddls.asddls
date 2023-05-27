@AbapCatalog.sqlViewName: 'IBPVH'
@AbapCatalog.compiler.compareFilter: true

@VDM.viewType: #BASIC

@ObjectModel.dataCategory: #VALUE_HELP
@ObjectModel.representativeKey: 'BusinessPartner' 

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@AccessControl.authorizationCheck: #CHECK
//<TODO> Please double-check personal data blocking
@AccessControl.personalData.blocking: #REQUIRED

@ClientHandling.algorithm: #SESSION_VARIABLE

@Search.searchable: true

@Metadata.ignorePropagatedAnnotations: true

@EndUserText.label: 'Business Partner'
@Consumption.ranked: true
define view I_BusinessPartnerVH as select from I_BusinessPartner as BusinessPartner 
   association[1..1] to I_FormOfAddressText as _FormOfAddressText on $projection.FormOfAddress = _FormOfAddressText.FormOfAddress and
                                                                          _FormOfAddressText.Language = $session.system_language                                                                        
{ 
  key BusinessPartner,
      FormOfAddress,
      FormOfAddressName,
      BusinessPartnerName,
      BusinessPartnerCategory,
      BusinessPartnerIDByExtSystem,
      FirstName,
      LastName,
      OrganizationBPName1,
      GroupBusinessPartnerName1,
      BirthDate,
      AuthorizationGroup,
      IsBusinessPurposeCompleted,
      DataControllerSet,
      DataController1,
      DataController2,
      DataController3,
      DataController4,
      DataController5,
      DataController6,
      DataController7,
      DataController8,
      DataController9,
      DataController10
}