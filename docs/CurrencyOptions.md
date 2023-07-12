# OpenapiClient::CurrencyOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction** | **String** | View onchain transactions. | [optional] |
| **explorer** | **String** | The explorer to view crypto network | [optional] |
| **address** | **String** | View wallet address | [optional] |
| **confirmations** | **Integer** | Number of confirmations needed. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurrencyOptions.new(
  transaction: https://etherscan.io/tx/{{hash}},
  explorer: https://etherscan.io/,
  address: https://etherscan.io/address/{{address}},
  confirmations: 12
)
```

