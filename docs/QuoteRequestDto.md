# OpenapiClient::QuoteRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The currency to convert from. | [default to &#39;EUR&#39;] |
| **to** | **String** | The currency to convert to. | [default to &#39;USDC&#39;] |
| **from_wallet** | **Float** | The ID of the wallet converted from. | [default to 3598236] |
| **use_minimum** | **Boolean** | Is converting the minimum allowed amount. | [default to false] |
| **use_maximum** | **Boolean** | Is converting the max amount of the wallet. | [default to false] |
| **to_wallet** | **Float** | The ID of the wallet converted to. | [default to 3598514] |
| **amount_in** | **Float** | The amount being converted. | [default to 10] |
| **pay_in_method** | **String** | The type of method in. | [default to &#39;wallet&#39;] |
| **pay_out_method** | **String** | The type of method out. | [default to &#39;wallet&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QuoteRequestDto.new(
  from: null,
  to: null,
  from_wallet: null,
  use_minimum: null,
  use_maximum: null,
  to_wallet: null,
  amount_in: null,
  pay_in_method: null,
  pay_out_method: null
)
```

