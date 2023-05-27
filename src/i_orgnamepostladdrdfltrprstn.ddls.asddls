@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_Region', '_Country', '_FormOfAddress', '_TransportationZone']
@Analytics.dataCategory: #DIMENSION
@EndUserText.label: 'Dflt Addr Rprstn for Org and Postal'
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
define view entity I_OrgNamePostlAddrDfltRprstn 
     as select from I_AddrOrgNamePostalAddress as PostalAddress
     association [0..*] to I_AddrOrgNamePostalAddress as _DfltRprstnPostalAddress on $projection.AddressID = _DfltRprstnPostalAddress.AddressID
                                                                                  and _DfltRprstnPostalAddress.AddressRepresentationCode is not initial
{
  key AddressID,
      AddressRepresentationCode,
      AddressIsPersonAddress,
      CorrespondenceLanguage,
      PrfrdCommMediumType,
      CityNumber,
      CityName,
      DistrictName,
      VillageName,
      PostalCode,
      CompanyPostalCode,
      POBox,
      POBoxAddrNonDeliverableReason,
      POBoxIsWithoutNumber,
      POBoxPostalCode,
      POBoxLobbyName,
      POBoxDeviatingCityName,
      POBoxDeviatingCityCode,
      POBoxDeviatingRegion,
      POBoxDeviatingCountry,
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
      CareOfName,
      FormOfAddress,
      AddresseeName1,
      AddresseeName2,
      AddresseeName3,
      AddresseeName4,
      TaxJurisdiction,
      TransportZone,
      DeliveryServiceTypeCode,
      DeliveryServiceNumber,
      AddressTimeZone,
      SecondaryRegion,
      SecondaryRegionName,
      TertiaryRegion,
      TertiaryRegionName,
      AddressSearchTerm1,
      AddressSearchTerm2,
      RegionalStructureCheckStatus,
      AddressGroup,
      _Country,
      _FormOfAddress,
      _Region,
      _TransportationZone
}