# OpenapiClient::PayInDetailDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | Crypto currency that customer must pay in, will return that address in redirectURL. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayInDetailDto.new(
  currency: ETH
)
```

