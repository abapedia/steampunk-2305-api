@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Description of Communication Method'
@ObjectModel.dataCategory: #TEXT
@Analytics.technicalName: 'IADCOMMMETHODTXT'
@ObjectModel.usageType.dataClass: #CUSTOMIZING
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,#CDS_MODELING_DATA_SOURCE,#CDS_MODELING_ASSOCIATION_TARGET,#LANGUAGE_DEPENDENT_TEXT]
 
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity I_AddrCommunicationMethodText 
  as select from tsact {
  key Language,
  key CommunicationMediumType,
      CommunicationMediumTypeName
}