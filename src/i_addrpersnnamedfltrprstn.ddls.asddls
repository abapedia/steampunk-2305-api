@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@EndUserText.label: 'Default Representation for Person Name'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@ObjectModel.representativeKey: 'AddressPersonID'
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity I_AddrPersnNameDfltRprstn 
   as select from I_AddressPersonName as Person
   association [0..*] to I_AddressPersonName as _DfltRprstnPerson on $projection.AddressPersonID = _DfltRprstnPerson.AddressPersonID
                                                                   and _DfltRprstnPerson.AddressRepresentationCode is not initial
{
  key AddressPersonID,
      AddressRepresentationCode,
      FormOfAddress,
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
      CorrespondenceLanguage,
      AddressPersonSearchTerm1,
      AddressPersonSearchTerm2,
      _AcademicTitle,
      _AcademicTitle2,
      _AddressRepresentationCode,
      _FamilyNamePrefix,
      _FamilyNameSecondPrefix,
      _FormOfAddress,
      _NameSupplement
}