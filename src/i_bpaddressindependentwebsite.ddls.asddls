@AbapCatalog.sqlViewName: 'P_BPADDINDURI'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE
@Metadata.allowExtensions: true
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #MANDATORY 
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.privilegedAssociations:  [ '_AddressCommunicationRemark' ]
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'AddressID' // Need to check
@EndUserText.label: 'BP Address independent Website'
define view I_BPAddressIndependentWebsite
  as select from I_AddressURI //P_AddressHomepageURL
  association [1..1] to I_BusinessPartner       as _BusinessPartner       on $projection.AddressID = _BusinessPartner.IndependentAddressID
 // association [0..*] to I_BPDataControllerUsage as _BPDataControllerUsage on $projection.BusinessPartner = _BPDataControllerUsage.BusinessPartner

{
  key BusinessPartner,
  key AddressID,
  key Person,
  key OrdinalNumber,
      ValidityStartDate,
      IsDefaultURLAddress,
      CommNumberIsNotUsed,
      UniformResourceIdentifierType,
      SearchURLAddress,
      URLFieldLength,
      WebsiteURL,
      _AddressCommunicationRemark,
      _AddressManagementURIType
}