@AccessControl.authorizationCheck: #PRIVILEGED_ONLY
@AccessControl.privilegedAssociations: ['_AddressCommunicationRemark', '_AddressCommunicationUsage']
@EndUserText.label: 'Website'
//@Metadata.allowExtensions: true
//@ObjectModel.representativeKey: 'AddressID'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE, #SQL_DATA_SOURCE]
@ObjectModel.usageType.serviceQuality: #C
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MIXED
@VDM.viewType: #COMPOSITE

define view entity I_AddressMainWebsiteURL
  as select from AddressMainWebsiteURL_TF( P_SAPClient : $session.client ) as AddresssMainWebsiteURL

  association [0..*] to I_AddressCommunicationRemark_2 as _AddressCommunicationRemark on  $projection.AddressID                               = _AddressCommunicationRemark.AddressID
                                                                                      and $projection.AddressPersonID                         = _AddressCommunicationRemark.AddressPersonID
                                                                                      and $projection.CommMediumSequenceNumber                = _AddressCommunicationRemark.CommMediumSequenceNumber
                                                                                      and _AddressCommunicationRemark.CommunicationMediumType = 'URI'

  association [0..*] to I_AddressCommunicationUsage    as _AddressCommunicationUsage  on  $projection.AddressID                              = _AddressCommunicationUsage.AddressID
                                                                                      and $projection.AddressPersonID                        = _AddressCommunicationUsage.AddressPersonID
                                                                                      and $projection.CommMediumSequenceNumber               = _AddressCommunicationUsage.CommMediumSequenceNumber
                                                                                      and _AddressCommunicationUsage.CommunicationMediumType = 'URI'
{
  key AddressID,
  key AddressPersonID,
      CommMediumSequenceNumber,
      UniformResourceIdentifier
}