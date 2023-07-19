# OpenapiClient::MerchantChannelPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **merchant_display_name** | **String** |  | [optional] |
| **reference** | **String** |  | [optional] |
| **date_created** | **Integer** |  | [optional][default to 0] |
| **last_updated** | **Integer** |  | [optional][default to 0] |
| **status** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **hash** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |
| **paid_currency** | **String** |  | [optional] |
| **display_currency** | **String** |  | [optional] |
| **wallet_currency** | **String** |  | [optional] |
| **fee_currency** | **String** |  | [optional] |
| **paid_amount** | **Float** |  | [optional][default to 0] |
| **display_amount** | **Float** |  | [optional][default to 0] |
| **wallet_amount** | **Float** |  | [optional][default to 0] |
| **fee_amount** | **Float** |  | [optional][default to 0] |
| **exchange_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **display_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **risk** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **sources** | **Array&lt;String&gt;** |  | [optional] |
| **network_fee** | [**NetworkFee**](NetworkFee.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantChannelPayment.new(
  channel_id: 9d1f67f2-a647-404b-9b02-247c77be81d0,
  merchant_id: 0a12a214-1619-43fa-9be1-0029f6a440a0,
  merchant_display_name: Merchant A,
  reference: c1b933d5-3354-4f83-a05f-0b53f1be85f2,
  date_created: 1631619489000,
  last_updated: 1631619562000,
  status: null,
  uuid: c0dc9c14-0312-4a6b-a1a3-a6dcebdcc8a4,
  hash: 0x152f2b3a3650a3e2e132abca0f81421c552ae14bc8466fac16889e8d32b3fd6a,
  address: 0xb4e8bb9918248007dc9d0dc12ae1142f0d62ef0e,
  tag: null,
  paid_currency: ETH,
  display_currency: JPY,
  wallet_currency: EUR,
  fee_currency: EUR,
  paid_amount: 0.01,
  display_amount: 3592.27,
  wallet_amount: 27.62,
  fee_amount: 0.27,
  exchange_rate: null,
  display_rate: null,
  risk: null,
  sources: null,
  network_fee: null
)
```

