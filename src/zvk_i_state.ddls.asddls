@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZVK_I_STATE
  as select from ZVK_STATE_BU_ALL
  composition [0..*] of ZVK_I_DISTRICT as _District
{
  key state_uuid              as StateUuid,
      state_id                as StateId,
      state_code              as StateCode,
      state_name              as StateName,
      state_alloc_date_time   as StateAllocDateTime,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_allocated_funds   as TotalAllocatedFunds,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      available_funds         as AvailableFunds,
      currency_code           as CurrencyCode,
      budget_available_status as BudgetAvailableStatus,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at   as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at         as LastChangedAt,
      _District // Make association public
}
