@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business Role Price Category'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity I_IAMBusinessRolePriceCategory
  as select from    I_IAMBusinessRole             as br
    inner join      aps_iam_br_price_tag_text_ddl as pc  on pc.BusinessRoleUUID = br.BusinessRoleUUID
    left outer join aps_iam_d_brcres              as res on  res.brole_uuid         = br.BusinessRoleUUID
                                                         and (
                                                            res.restriction_type    = ''
                                                            or res.restriction_type is null
                                                          )
                                                         and res.access_category    = 'W'
{
  key BusinessRoleUUID,
      BusinessRole,
      BusinessRolePriceCategory
}