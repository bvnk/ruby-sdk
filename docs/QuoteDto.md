# OpenapiClient::QuoteDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the quote. | [optional] |
| **from** | **String** | The currency to convert from. | [optional] |
| **to** | **String** | The currency to convert to. | [optional] |
| **amount_in** | **Float** | The amount converted to. | [optional] |
| **amount_due** | **Float** | The amount due to be converted. | [optional] |
| **amount_out** | **Float** | The amount being converted out. | [optional] |
| **price** | **Float** | The price quoted. | [optional] |
| **quote_status** | **String** | The status of the quote. | [optional] |
| **payment_status** | **String** | The payment status. | [optional] |
| **acceptance_expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **acceptance_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **payment_expiry_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **payment_receipt_date** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **pay_in_legs** | [**Array&lt;PaymentLegDto&gt;**](PaymentLegDto.md) |  | [optional] |
| **pay_in_method** | [**PayInMethodDto**](PayInMethodDto.md) |  | [optional] |
| **pay_out_method** | [**PayOutMethodDto**](PayOutMethodDto.md) |  | [optional] |
| **uuid** | **String** | The UUID of the quote. | [optional] |
| **pay_out_instruction** | [**PayOutInstructionDto**](PayOutInstructionDto.md) |  | [optional] |
| **pay_in_instruction** | [**PayInInstructionDto**](PayInInstructionDto.md) |  | [optional] |
| **use_pay_in_method** | [**AccountMethodDto**](AccountMethodDto.md) |  | [optional] |
| **use_pay_out_method** | [**AccountMethodDto**](AccountMethodDto.md) |  | [optional] |
| **fee** | **Float** | The fee for the quote. | [optional] |
| **processing_fee** | **Float** | The processing fee. | [optional] |
| **type** | **String** | The type of quote. | [optional] |
| **net_price** | **Float** | The net price fo the quote. | [optional] |
| **gross_price** | **Float** | The gross price of the quote. | [optional] |
| **amount_in_gross** | **Float** | The price of the quote in gross. | [optional] |
| **amount_in_net** | **Float** | The price of the quote in net. | [optional] |
| **fees** | [**FeesDto**](FeesDto.md) |  | [optional] |
| **date_created** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |
| **last_updated** | **Integer** | The date and time, encoded into UNIX epoch timestamps. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::QuoteDto.new(
  id: 1432,
  from: EUR,
  to: ETH,
  amount_in: 500.0,
  amount_due: 500.0,
  amount_out: 1.12,
  price: 446.43,
  quote_status: null,
  payment_status: null,
  acceptance_expiry_date: 1566198657000,
  acceptance_date: 1566198657000,
  payment_expiry_date: 1566198657000,
  payment_receipt_date: 1566198657000,
  pay_in_legs: null,
  pay_in_method: null,
  pay_out_method: null,
  uuid: B6670497-D139-47E8-9F4A-F97A5D977057,
  pay_out_instruction: null,
  pay_in_instruction: null,
  use_pay_in_method: null,
  use_pay_out_method: null,
  fee: 1.02,
  processing_fee: 1.02,
  type: null,
  net_price: 1234.02,
  gross_price: 1134.02,
  amount_in_gross: 102.0,
  amount_in_net: 104.0,
  fees: null,
  date_created: 1566198657000,
  last_updated: 1566198657000
)
```

