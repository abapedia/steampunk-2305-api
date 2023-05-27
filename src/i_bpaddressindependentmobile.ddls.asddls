@AbapCatalog.sqlViewName: 'IBPADDRINDMOB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #REQUIRED

@EndUserText.label: 'Root view for AddrIndMob'

@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressID' // Need to check

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.allowExtensions: true
define view I_BPAddressIndependentMobile
  as select from I_AddressPhoneNumber_2 as BPAddressIndependentMobile
   
    association [1..1] to I_BusinessPartner as _BusinessPartner on $projection.AddressID = _BusinessPartner.IndependentAddressID

{
  key BusinessPartner,
  key AddressID,
  key Person,
  key OrdinalNumber,
      OrdinalNumberForEdit,
      AddressIDForEdit,
      MobilePhoneCountry,
      CommNumberIsNotUsed,
      MobilePhoneNumber,
      PhoneNumberExtension,
      CompleteTelephoneNumber,
      IsDefaultPhoneNumber,
      PhoneIsSMSEnabled,
      PhoneNumberType,
      AuthorizationGroup,
      AddressCommunicationRemarkText
}