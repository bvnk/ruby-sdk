# OpenapiClient::MerchantChannelDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The UUID of the channel. | [optional][default to 0] |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional][default to 0] |
| **last_updated** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional][default to 0] |
| **merchant_id** | **String** | The merchant ID linked to the channel. | [optional] |
| **wallet_currency** | **String** | The wallet currency of the channel. | [optional] |
| **display_currency** | **String** | The display currency of the channel. | [optional] |
| **pay_currency** | **String** | The payed currency of the channel. | [optional] |
| **address** | **String** | The address of the channel | [optional] |
| **tag** | **String** | The tag for payments | [optional] |
| **protocol** | **String** | The protocol of the channel. | [optional] |
| **reference** | **String** | The custom reference for the channel payment. | [optional] |
| **status** | **String** | The status of the channel. | [optional] |
| **uuid** | **String** | The UUID of the channel. | [optional] |
| **redirect_url** | **String** | The redirect URL to the channel payment page. | [optional] |
| **uri** | **String** | The URI of the address for QR code | [optional] |
| **alternatives** | [**Array&lt;AlternativeAddressDto&gt;**](AlternativeAddressDto.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantChannelDto.new(
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

