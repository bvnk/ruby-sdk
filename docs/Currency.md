# OpenapiClient::Currency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **deposit_fee** | **Float** |  | [optional] |
| **fiat** | **Boolean** |  | [optional][default to false] |
| **icon** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **options** | [**CurrencyOptions**](CurrencyOptions.md) |  | [optional] |
| **price_precision** | **Integer** |  | [optional][default to 5] |
| **protocols** | [**Array&lt;CurrencyProtocol&gt;**](CurrencyProtocol.md) |  | [optional] |
| **quantity_precision** | **Integer** |  | [optional][default to 5] |
| **supports_deposits** | **Boolean** |  | [optional][default to false] |
| **supports_withdrawals** | **Boolean** |  | [optional][default to false] |
| **withdrawal_fee** | **Float** |  | [optional] |
| **withdrawal_parameters** | [**Array&lt;ExternalCurrencyWithdrawalParameter&gt;**](ExternalCurrencyWithdrawalParameter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Currency.new(
  code: ETH,
  deposit_fee: 0.0,
  fiat: null,
  icon: https://cdn.com/eth-icon.png,
  id: 1432,
  name: Ethereum,
  options: null,
  price_precision: null,
  protocols: null,
  quantity_precision: null,
  supports_deposits: null,
  supports_withdrawals: null,
  withdrawal_fee: 0.01,
  withdrawal_parameters: null
)
```

