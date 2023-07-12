# OpenapiClient::CurrencyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The currency code. | [optional] |
| **deposit_fee** | **Float** | The % fee to deposit the currency. | [optional] |
| **fiat** | **Boolean** | Is a fiat currency. | [optional][default to false] |
| **icon** | **String** | The icon of the currency. | [optional] |
| **id** | **Integer** | The ID of the currency. | [optional] |
| **name** | **String** | The currency name. | [optional] |
| **options** | [**CurrencyOptions**](CurrencyOptions.md) |  | [optional] |
| **price_precision** | **Integer** | The precision of decimal points for the currency. | [optional][default to 5] |
| **protocols** | [**Array&lt;CurrencyProtocol&gt;**](CurrencyProtocol.md) | The alternative protocols array. | [optional] |
| **quantity_precision** | **Integer** | The precision of decimal points for the currency displayed. | [optional][default to 5] |
| **supports_deposits** | **Boolean** | Is deposits for this currency supported. | [optional][default to false] |
| **supports_withdrawals** | **Boolean** | Is withdrawals for this currency supported | [optional][default to false] |
| **withdrawal_fee** | **Float** | The % fee to withdraw this currency. | [optional] |
| **withdrawal_parameters** | [**Array&lt;ExternalCurrencyWithdrawalParameter&gt;**](ExternalCurrencyWithdrawalParameter.md) | The withdrawal parameter object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurrencyDto.new(
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

