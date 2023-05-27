@Analytics : {
          dataCategory: #DIMENSION,
          dataExtraction: {
           enabled: true }
           } 
@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_EmailAddress', '_CurrentDfltEmailAddress', '_PhoneNumber', '_CurrentDfltLandlinePhoneNmbr', '_CurrentDfltMobilePhoneNumber', '_FaxNumber', '_CurrentDfltFaxNumber', '_UniformResourceIdentifier', '_MainWebsiteURL']
@EndUserText.label: 'Dflt Represention of a Person Address'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE,
                                     #EXTRACTION_DATA_SOURCE ]
@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #COMPOSITE,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity I_PersonAddressDefaultRprstn 
       as select from I_PersonAddress as Person
       association [0..*] to I_PersonAddress as _DfltPersonAddress on $projection.AddressID = _DfltPersonAddress.AddressID
                                                                   and $projection.AddressPersonID = _DfltPersonAddress.AddressPersonID
                                                                   and _DfltPersonAddress.AddressRepresentationCode is not initial
{
  key AddressID,
  key AddressPersonID,
      AddressRepresentationCode,
      AddressObjectType,
      CorrespondenceLanguage,
      GivenName,
      FamilyName,
      PersonBirthName,
      PersonMiddleName,
      SecondFamilyName,
      AcademicTitle,
      AcademicTitle2,
      FamilyNamePrefix,
      FamilyNameSecondPrefix,
      PersonNameSupplementCode,
      PersonNickname,
      NameInitials,
      PersonFullName,
      FormOfAddress,
      AddressPersonSearchTerm1,
      AddressPersonSearchTerm2,
      PrfrdCommMediumType,
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
      _AcademicTitle,
      _AcademicTitle2,
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
      _FamilyNamePrefix,
      _FamilyNameSecondPrefix,
      _FaxNumber,
      _FormOfAddress,
      _MainWebsiteURL,
      _NameSupplement,
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