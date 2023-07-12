# OpenapiClient::QuoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  | [default to &#39;EUR&#39;] |
| **to** | **String** |  | [default to &#39;USDC&#39;] |
| **from_wallet** | **Float** |  | [default to 3598236] |
| **use_minimum** | **Boolean** |  | [default to false] |
| **use_maximum** | **Boolean** |  | [default to false] |
| **to_wallet** | **Float** |  | [default to 3598514] |
| **amount_in** | **Float** |  | [default to 10] |
| **pay_in_method** | **String** |  | [default to &#39;wallet&#39;] |
| **pay_out_method** | **String** |  | [default to &#39;wallet&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QuoteRequest.new(
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

