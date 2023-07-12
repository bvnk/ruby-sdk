# OpenapiClient::MerchantChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional][default to 0] |
| **date_created** | **Integer** |  | [optional][default to 0] |
| **last_updated** | **Integer** |  | [optional][default to 0] |
| **merchant_id** | **String** |  | [optional] |
| **wallet_currency** | **String** |  | [optional] |
| **display_currency** | **String** |  | [optional] |
| **pay_currency** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |
| **protocol** | **String** |  | [optional] |
| **reference** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **redirect_url** | **String** |  | [optional] |
| **uri** | **String** |  | [optional] |
| **alternatives** | [**Array&lt;AlternativeAddress&gt;**](AlternativeAddress.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantChannel.new(
  id: 65,
  date_created: 1631619193321,
  last_updated: 1631619193321,
  merchant_id: 0a12a214-1619-43fa-9be1-0029f6a440a0,
  wallet_currency: EUR,
  display_currency: JPY,
  pay_currency: ETH,
  address: 0xb4e8bb9918248007dc9d0dc12ae1142f0d62ef0e,
  tag: null,
  protocol: ETH,
  reference: c1b933d5-3354-4f83-a05f-0b53f1be85f2,
  status: null,
  uuid: 9d1f67f2-a647-404b-9b02-247c77be81d0,
  redirect_url: https://pay.sandbox.bvnk.com/channel?uuid&#x3D;9d1f67f2-a647-404b-9b02-247c77be81d0,
  uri: ethereum:0xb4e8bb9918248007dc9d0dc12ae1142f0d62ef0e,
  alternatives: null
)
```

