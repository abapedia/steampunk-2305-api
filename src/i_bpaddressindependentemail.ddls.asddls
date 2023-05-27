@AbapCatalog.sqlViewName: 'IBPADDRINDEMAIL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #REQUIRED
@EndUserText.label: 'Root View for Address Independent Email for BP app'

@VDM.viewType: #BASIC

@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE

define view I_BPAddressIndependentEmail
  as select from I_AddressEmailAddress_2
    association [1..1] to I_BusinessPartner as _BusinessPartner on $projection.AddressID = _BusinessPartner.IndependentAddressID

{
  key BusinessPartner,
  key AddressID,
  key Person,
  key OrdinalNumber,
      AddressIDForEdit,
      OrdinalNumberForEdit,
      IsDefaultEmailAddress,
      EmailAddress,
      SearchEmailAddress,
      IsHomeEmailAddress,
      CommNumberIsNotUsed,
      AuthorizationGroup,
      AddressCommunicationRemarkText
}