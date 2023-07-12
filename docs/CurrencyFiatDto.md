# OpenapiClient::CurrencyFiatDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The currency code. | [optional] |
| **deposit_fee** | **Float** | The % fee to deposit the currency. | [optional] |
| **fiat** | **Boolean** | Is a fiat currency. | [optional][default to true] |
| **icon** | **String** | The icon of the currency. | [optional] |
| **id** | **Integer** | The ID of the currency. | [optional] |
| **name** | **String** | The currency name. | [optional] |
| **options** | **Object** | The currency options. | [optional] |
| **price_precision** | **Integer** | The precision of decimal points for the currency. | [optional][default to 2] |
| **protocols** | **Array&lt;Object&gt;** | The alternative protocols array. | [optional] |
| **quantity_precision** | **Integer** | The precision of decimal points for the currency displayed. | [optional][default to 2] |
| **supports_deposits** | **Boolean** | Is deposits for this currency supported. | [optional][default to true] |
| **supports_withdrawals** | **Boolean** | Is withdrawals for this currency supported | [optional][default to true] |
| **withdrawal_fee** | **Float** | The % fee to withdraw this currency. | [optional] |
| **withdrawal_parameters** | **Array&lt;Object&gt;** | The withdrawal parameter object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurrencyFiatDto.new(
  code: EUR,
  deposit_fee: 0.0,
  fiat: null,
  icon: null,
  id: 1773,
  name: Euro,
  options: null,
  price_precision: null,
  protocols: [],
  quantity_precision: null,
  supports_deposits: null,
  supports_withdrawals: null,
  withdrawal_fee: 0.4,
  withdrawal_parameters: []
)
```

