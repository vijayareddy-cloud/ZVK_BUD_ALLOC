@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Consumption View'
@ObjectModel.modelingPattern: #ANALYTICAL_QUERY
@ObjectModel.supportedCapabilities: [#ANALYTICAL_QUERY]
@Metadata.allowExtensions: true
define root view entity ZVK_C_STATE
provider contract transactional_query
as projection on ZVK_I_STATE
{
    key StateUuid,
    StateId,
    StateCode,
    StateName,
    StateAllocDateTime,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalAllocatedFunds,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    AvailableFunds,
    CurrencyCode,
    BudgetAvailableStatus,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _District:redirected to composition child ZVK_C_DISTRICT
}
