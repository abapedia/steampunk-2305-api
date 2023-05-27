@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@Analytics.dataCategory: #DIMENSION
@AccessControl.privilegedAssociations: ['_AddrAdditionalRepresentation', '_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@EndUserText.label: 'Default Representation of an Org Address'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType:{
    serviceQuality: #C,
    sizeCategory: #XXL,
    dataClass: #MIXED
}
@VDM: {
  viewType: #COMPOSITE,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity I_OrgAddressDefaultRprstn
  as select from I_OrganizationAddress as OrganizationAddress
  association [0..*] to I_OrganizationAddress as _AddrAdditionalRepresentation on  $projection.AddressID                                   = _AddrAdditionalRepresentation.AddressID
                                                                               and $projection.AddressPersonID                             = _AddrAdditionalRepresentation.AddressPersonID
                                                                               and _AddrAdditionalRepresentation.AddressRepresentationCode is not initial
{
  key AddressID,
      AddressPersonID,
      AddressRepresentationCode,
      AddressObjectType,
      CorrespondenceLanguage,
      PrfrdCommMediumType,
      AddresseeFullName,
      CityNumber,
      CityName,
      DistrictName,
      VillageName,
      PostalCode,
      CompanyPostalCode,
      Street,
      StreetName,
      StreetAddrNonDeliverableReason,
      StreetPrefixName1,
      StreetPrefixName2,
      StreetSuffixName1,
      StreetSuffixName2,
      HouseNumber,
      HouseNumberSupplementText,
      Building,
      Floor,
      RoomNumber,
      Country,
      Region,
      FormOfAddress,
      AddresseeName1,
      AddresseeName2,
      AddresseeName3,
      AddresseeName4,
      AddressSearchTerm1,
      AddressSearchTerm2,
      TaxJurisdiction,
      TransportZone,
      POBox,
      POBoxAddrNonDeliverableReason,
      POBoxIsWithoutNumber,
      POBoxPostalCode,
      POBoxLobbyName,
      POBoxDeviatingCityName,
      POBoxDeviatingCityCode,
      POBoxDeviatingRegion,
      POBoxDeviatingCountry,
      CareOfName,
      DeliveryServiceTypeCode,
      DeliveryServiceNumber,
      AddressTimeZone,
      SecondaryRegion,
      SecondaryRegionName,
      TertiaryRegion,
      TertiaryRegionName,
      RegionalStructureCheckStatus,
      AddressGroup,
      _AddressGroup,
      _AddressObjectType,
      _AddressPersonName,
      _AddressRepresentationCode,
      _CorrespondenceLanguage,
      _Country,
      _CurrentDfltEmailAddress,
      _CurrentDfltFaxNumber,
      _CurrentDfltLandlinePhoneNmbr,
      _CurrentDfltMobilePhoneNumber,
      _DeliveryServiceTypeCode,
      _EmailAddress,
      _FaxNumber,
      _FormOfAddress,
      _MainWebsiteURL,
      _PhoneNumber,
      _POBoxAddrNonDeliverableReason,
      _POBoxDeviatingCityCode,
      _POBoxDeviatingCountry,
      _POBoxDeviatingRegion,
      _PostalCity,
      _PrfrdCommMediumType,
      _Region,
      _RegionalStructureCheckStatus,
      _SecondaryRegion,
      _Street,
      _StreetAddrNonDeliverableRsn,
      _TertiaryRegion,
      _TimeZone,
      _TransportationZone,
      _UniformResourceIdentifier
}