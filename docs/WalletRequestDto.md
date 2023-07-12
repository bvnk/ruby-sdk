# OpenapiClient::WalletRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The currency of the wallet. | [default to &#39;ETH&#39;] |
| **description** | **String** | The name of the wallet. | [default to &#39;My 2nd EUR Wallet&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WalletRequestDto.new(
  currency: null,
  description: null
)
```

