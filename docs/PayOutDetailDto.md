# OpenapiClient::PayOutDetailDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The gateway to be used, &#39;crypto&#39; or &#39;wallet&#39;. |  |
| **currency** | **String** | The currency acronym payout needs to be made in. |  |
| **address** | **String** | The address to withdrawal funds to. |  |
| **tag** | **String** | This is a payment destination tag. This fields isn&#39;t null when the paidCurrency currency value is XRP. | [optional] |
| **protocol** | **String** | The protocol behind a currency, &#39;ERC20&#39; or &#39;TRC20&#39;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PayOutDetailDto.new(
  code: crypto,
  currency: ETH,
  address: 0xb794f5ea0ba39494ce839613fffba74279579268,
  tag: ,
  protocol: ERC20
)
```

