@AbapCatalog.sqlViewName: 'IPAYCARDTYPE'
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Core View for table CCARD'
@VDM.viewType: #BASIC
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.authorizationCheck: #MANDATORY
@ClientHandling.algorithm: #SESSION_VARIABLE
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #L
@ObjectModel.usageType.dataClass: #MASTER
define view I_Paymentcardtype
  as select from ccard
{
  key PaymentCardType,
  key PaymentCardNumber,
      ValidityDate,
      ValidityEndDate,
      CardHolder,
      PaymentCardCategory,
      CardIssuingBank,
      CardIssueDate,
      PaymentCardLock,
      MaskedCardNumber
}