=begin
#BVNK API Endpoints

#The BVNK API is designed to facilitate seamless and secure transactions including payments, channels, and digital wallet transactions.

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/accepted_quote_dto'
require 'openapi_client/models/account_method_dto'
require 'openapi_client/models/alternative_address_dto'
require 'openapi_client/models/balance_dto'
require 'openapi_client/models/client_validation_error_dto'
require 'openapi_client/models/crypto_address_dto'
require 'openapi_client/models/currency_dto'
require 'openapi_client/models/currency_fiat_dto'
require 'openapi_client/models/currency_options'
require 'openapi_client/models/currency_protocol'
require 'openapi_client/models/direction_dto'
require 'openapi_client/models/exchange_rate_dto'
require 'openapi_client/models/external_currency_withdrawal_parameter'
require 'openapi_client/models/fee_dto'
require 'openapi_client/models/fees_dto'
require 'openapi_client/models/form_dto'
require 'openapi_client/models/gateway_transaction_dto'
require 'openapi_client/models/merchant_channel_dto'
require 'openapi_client/models/merchant_channel_payment_dto'
require 'openapi_client/models/merchant_channel_request_dto'
require 'openapi_client/models/merchant_dto'
require 'openapi_client/models/merchant_id_create_request'
require 'openapi_client/models/merchant_id_create_request_wallet'
require 'openapi_client/models/network_fee_dto'
require 'openapi_client/models/pay_amounts_dto'
require 'openapi_client/models/pay_in_detail_dto'
require 'openapi_client/models/pay_in_instruction_dto'
require 'openapi_client/models/pay_in_method_dto'
require 'openapi_client/models/pay_out_detail_dto'
require 'openapi_client/models/pay_out_instruction_dto'
require 'openapi_client/models/pay_out_method_dto'
require 'openapi_client/models/pay_request_dto'
require 'openapi_client/models/payment_leg_dto'
require 'openapi_client/models/payment_status_dto'
require 'openapi_client/models/quote_dto'
require 'openapi_client/models/quote_request_dto'
require 'openapi_client/models/server_error_dto'
require 'openapi_client/models/summary_payment_dto'
require 'openapi_client/models/transaction_report_dto'
require 'openapi_client/models/transaction_report_request_data_dto'
require 'openapi_client/models/validation_error_dto'
require 'openapi_client/models/wallet_dto'
require 'openapi_client/models/wallet_request_dto'

# APIs
require 'openapi_client/api/channels_api'
require 'openapi_client/api/currencies_api'
require 'openapi_client/api/merchant_ids_api'
require 'openapi_client/api/payments_api'
require 'openapi_client/api/trading_and_conversions_api'
require 'openapi_client/api/wallets_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
