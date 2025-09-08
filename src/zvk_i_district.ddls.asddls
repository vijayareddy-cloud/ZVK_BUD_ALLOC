@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Entity for child'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZVK_I_DISTRICT
  as select from ZVK_DISTR_BU_ALL
  association to parent ZVK_I_STATE as _State on $projection.ParentUuid = _State.StateUuid
{
  key district_uuid         as DistrictUuid,
      parent_uuid           as ParentUuid,
      district_code         as DistrictCode,
      district_name         as DistrictName,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_used_funds      as TotalUsedFunds,
      currency_code         as CurrencyCode,
      local_last_changed_at as LocalLastChangedAt,
      _State // Make association public
}
