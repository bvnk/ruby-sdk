# OpenapiClient::SummaryPaymentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The unique identifier for the merchant payment. | [optional] |
| **merchant_display_name** | **String** | The display name for the merchant payment. | [optional] |
| **merchant_id** | **String** | The Merchant ID. You can find it on the Merchant Details page in your account. | [optional] |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps | [optional] |
| **quote_expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps | [optional] |
| **acceptance_expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps | [optional] |
| **quote_status** | **String** |  | [optional] |
| **reference** | **String** | The custom payment reference ID to tie the payment to your customer. | [optional] |
| **type** | [**DirectionDto**](DirectionDto.md) |  | [optional][default to &#39;IN&#39;] |
| **sub_type** | **String** | The payment sub type | [optional][default to &#39;merchantPayIn&#39;] |
| **status** | [**PaymentStatusDto**](PaymentStatusDto.md) |  | [optional] |
| **display_currency** | [**PayAmountsDto**](PayAmountsDto.md) |  | [optional] |
| **wallet_currency** | [**PayAmountsDto**](PayAmountsDto.md) |  | [optional] |
| **paid_currency** | [**PayAmountsDto**](PayAmountsDto.md) |  | [optional] |
| **fee_currency** | [**PayAmountsDto**](PayAmountsDto.md) |  | [optional] |
| **display_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **exchange_rate** | [**ExchangeRateDto**](ExchangeRateDto.md) |  | [optional] |
| **address** | [**CryptoAddressDto**](CryptoAddressDto.md) |  | [optional] |
| **return_url** | **String** | The URL that the customer will be redirected to if they click &#39;Back to Merchant&#39; button on the payment web page. | [optional] |
| **redirect_url** | **String** | The URL to the payment page that you redirect your customers to. | [optional] |
| **transactions** | [**Array&lt;GatewayTransactionDto&gt;**](GatewayTransactionDto.md) |  | [optional] |
| **refund** | **Object** | The payment this object is a refund of. This should reference the pay in that this refund was created for. | [optional] |
| **refunds** | **Array&lt;Object&gt;** | Refunds that have been requested for this payment. This should reference the refund payout for this pay in. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SummaryPaymentDto.new(
  uuid: 3A6FAFFA-F21D-416E-B17E-2529A9BC44A0,
  merchant_display_name: Test Merchant Name,
  merchant_id: 5C8D8D78-366A-4AFB-B658-A64CE543C5DB,
  date_created: 1566203005000,
  expiry_date: 1566203005000,
  quote_expiry_date: 1566203005000,
  acceptance_expiry_date: 1566203005000,
  quote_status: null,
  reference: myUniqueRef333,
  type: null,
  sub_type: null,
  status: null,
  display_currency: null,
  wallet_currency: null,
  paid_currency: null,
  fee_currency: null,
  display_rate: null,
  exchange_rate: null,
  address: null,
  return_url: https://my-shop.com/payment-complete?ref&#x3D;xyz,
  redirect_url: https://pay.bvnk.com/payin?uuid&#x3D;3A6FAFFA-F21D-416E-B17E-2529A9BC44A0,
  transactions: null,
  refund: null,
  refunds: null
)
```

