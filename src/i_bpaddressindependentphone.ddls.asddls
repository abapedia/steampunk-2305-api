@AbapCatalog.sqlViewName: 'IBPADDRINDPHONE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #REQUIRED

@EndUserText.label: 'Core view for address independent phone'
@ObjectModel.representativeKey: 'AddressID'
@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE

define view I_BPAddressIndependentPhone  as select from I_AddressPhoneNumber_2 as BPAddressIndependentPhone
 association [1..1] to I_BusinessPartner as _BusinessPartner on $projection.AddressID = _BusinessPartner.IndependentAddressID
{
  key BusinessPartner,
  key AddressID,
  key Person,
  key OrdinalNumber,
      DestinationLocationCountry,
      IsDefaultPhoneNumber,
      OrdinalNumberForEdit,
      AddressIDForEdit,
      CommNumberIsNotUsed,
      PhoneNumber,
      PhoneNumberExtension,
      InternationalPhoneNumber,
      PhoneIsSMSEnabled,
      PhoneNumberType,
      AuthorizationGroup,
      AddressCommunicationRemarkText
}