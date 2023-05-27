@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Role Price Category Text'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.supportedCapabilities: [#CDS_MODELING_ASSOCIATION_TARGET, #CDS_MODELING_DATA_SOURCE]
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity I_IAMBusinessRolePriceCatText
  as select from I_IAMBusinessRolePriceCategory as pc
    inner join   aps_iam_w_usrprt               as pct on pct.usrprc_id = pc.BusinessRolePriceCategory
  association to I_IAMBusinessRolePriceCategory as _BusinessRolePriceCategory on  $projection.BusinessRolePriceCategory = _BusinessRolePriceCategory.BusinessRolePriceCategory
                                                                              and $projection.BusinessRoleUUID          = _BusinessRolePriceCategory.BusinessRoleUUID
  association to I_Language                     as _Language                  on  $projection.Language = _Language.Language

{
  key Language,
  key BusinessRoleUUID,
  key BusinessRolePriceCategory,
      BusinessRole,
      BusinessRolePriceCategoryName
}