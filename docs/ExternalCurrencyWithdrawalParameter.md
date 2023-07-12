# OpenapiClient::ExternalCurrencyWithdrawalParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the external currency. | [optional] |
| **code** | **String** | The code of the external currency. | [optional] |
| **name** | **String** | The name of the external currency. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExternalCurrencyWithdrawalParameter.new(
  id: 1432,
  code: BTC,
  name: Bitcoin
)
```

