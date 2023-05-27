@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_AddressCommunicationRemark', '_AddressCommunicationUsage']
@EndUserText.label: 'URI Address'
//@Metadata.allowExtensions: true
//@ObjectModel.representativeKey: 'AddressID'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM.viewType: #COMPOSITE

define view entity I_AddressURI
  as select from AddressURI_TF( P_SAPClient : $session.client )
  association [0..*] to I_AddressCommunicationRemark_2 as _AddressCommunicationRemark on  $projection.AddressID                               = _AddressCommunicationRemark.AddressID
                                                                                      and $projection.AddressPersonID                         = _AddressCommunicationRemark.AddressPersonID
                                                                                      and $projection.CommMediumSequenceNumber                = _AddressCommunicationRemark.CommMediumSequenceNumber
                                                                                      and _AddressCommunicationRemark.CommunicationMediumType = 'URI'

  association [0..*] to I_AddressCommunicationUsage    as _AddressCommunicationUsage  on  $projection.AddressID                              = _AddressCommunicationUsage.AddressID
                                                                                      and $projection.AddressPersonID                        = _AddressCommunicationUsage.AddressPersonID
                                                                                      and $projection.CommMediumSequenceNumber               = _AddressCommunicationUsage.CommMediumSequenceNumber
                                                                                      and _AddressCommunicationUsage.CommunicationMediumType = 'URI'

  association [0..1] to I_AddressManagementURIType     as _AddressManagementURIType   on  $projection.AddressManagementURIType = _AddressManagementURIType.AddressManagementURIType
{
  key AddressID,
  key AddressPersonID,
  key CommMediumSequenceNumber,
      AddressManagementURIType,
      URLIsCurrentDefault,
      UniformResourceIdentifier
}