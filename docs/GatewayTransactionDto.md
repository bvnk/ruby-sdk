# OpenapiClient::GatewayTransactionDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **date_confirmed** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **hash** | **String** | Transaction hash. | [optional] |
| **amount** | **Float** | The payment amount. | [optional] |
| **risk** | **Object** |  | [optional] |
| **network_fee_currency** | **String** | The currency acronym. | [optional] |
| **network_fee_amount** | **Float** | The network fee amount. | [optional] |
| **sources** | **Array&lt;String&gt;** | The list of source addresses, only applicable if payment in. | [optional] |
| **display_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **exchange_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GatewayTransactionDto.new(
  date_created: 1566203005000,
  date_confirmed: 1566203005000,
  hash: null,
  amount: 100.0,
  risk: null,
  network_fee_currency: BTC,
  network_fee_amount: 1.05,
  sources: null,
  display_rate: null,
  exchange_rate: null
)
```

