@AbapCatalog.sqlViewName: 'I_BPADDINDFAX'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
//@Metadata.allowExtensions: true
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #MANDATORY
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.privilegedAssociations:  [ '_AddressCommunicationRemark','_AddressCommunicationUsage' ]
@AbapCatalog.preserveKey: true
@VDM.viewType: #BASIC 
@EndUserText.label: 'BP Address independent Fax'
define view I_BPAddressIndependentFax as select from I_AddressFaxNumber_2 
 association [1..1] to I_BusinessPartner as _BusinessPartner on  $projection.AddressID = _BusinessPartner.IndependentAddressID 
// association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on  $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner 
{ 
  key BusinessPartner,
  key AddressID,
  key AddressPersonID,
  key CommMediumSequenceNumber,
      FaxNumberCountry,
      FaxAreaCodeSubscriberNumber,
      FaxExtensionNumber,
      InternationalFaxNumber,
      FaxNumberIsCurrentDefault,
      ValidityStartDate,
      ValidityEndDate,
      _AddressCommunicationRemark,
      _AddressCommunicationUsage,
      _FaxNumberCountry
}