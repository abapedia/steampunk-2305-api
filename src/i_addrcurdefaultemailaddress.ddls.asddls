@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@EndUserText.label: 'Current Default Email Address'
//@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
//@ObjectModel.representativeKey: 'AddressID'
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM: {
  viewType: #BASIC,
  lifecycle.contract.type: #PUBLIC_LOCAL_API
}

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity I_AddrCurDefaultEmailAddress
  as select from I_AddressEmailAddress_2
{
  key AddressID,
  key AddressPersonID,
      CommMediumSequenceNumber,
      EmailAddress,
      ValidityStartDate,
      ValidityEndDate,
      _AddressCommunicationRemark,
      _AddressCommunicationUsage
}