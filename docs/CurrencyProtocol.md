# OpenapiClient::CurrencyProtocol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the currency. | [optional] |
| **network** | **String** | The network of the currency. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CurrencyProtocol.new(
  code: ERC20,
  network: Ethereum
)
```

