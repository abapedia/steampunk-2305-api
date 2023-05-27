@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_AddrAdditionalRepresentation', '_OrganizationAddress', '_PersonAddress', '_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@Analytics.dataCategory: #DIMENSION
@Analytics.technicalName: 'I_AddressDefaultRprstn'
@EndUserText.label: 'Dflt Addr Rprstn of an Org or a Person'
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
define view entity I_AddressDefaultRepresentation
  as select from I_Address_2 as Address
  association [0..*] to I_Address_2 as _AddrAdditionalRepresentation on  $projection.AddressID                                   = _AddrAdditionalRepresentation.AddressID
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
      PersonGivenName,
      PersonFamilyName,
      OrganizationName1,
      OrganizationName2,
      OrganizationName3,
      OrganizationName4,
      AddressSearchTerm1,
      AddressSearchTerm2,
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
      _OrganizationAddress,
      _PersonAddress,
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