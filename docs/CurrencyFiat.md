# OpenapiClient::CurrencyFiat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **deposit_fee** | **Float** |  | [optional] |
| **fiat** | **Boolean** |  | [optional][default to true] |
| **icon** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **options** | **Object** |  | [optional] |
| **price_precision** | **Integer** |  | [optional][default to 2] |
| **protocols** | **Array&lt;Object&gt;** |  | [optional] |
| **quantity_precision** | **Integer** |  | [optional][default to 2] |
| **supports_deposits** | **Boolean** |  | [optional][default to true] |
| **supports_withdrawals** | **Boolean** |  | [optional][default to true] |
| **withdrawal_fee** | **Float** |  | [optional] |
| **withdrawal_parameters** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurrencyFiat.new(
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

