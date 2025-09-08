@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child Consumption View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZVK_C_DISTRICT as projection on ZVK_I_DISTRICT
{
    key DistrictUuid,
    ParentUuid,
    DistrictCode,
    DistrictName,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalUsedFunds,
    CurrencyCode,
    LocalLastChangedAt,
    /* Associations */
    _State:redirected to parent zvk_c_state
}
