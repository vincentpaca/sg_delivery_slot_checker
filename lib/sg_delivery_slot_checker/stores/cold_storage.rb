require 'httparty'
require 'hashie'

module SgDeliverySlotChecker
  module Stores
    class ColdStorage

      def initialize(postal_code:)
        @postal_code = postal_code
      end

      def available?
        get_availability
      end

      private

      attr_reader :postal_code

      def get_availability
        response = HTTParty.post('https://coldstorage.com.sg/checkout/cart/checkdelivery',
          body: {
            'postal_code': postal_code
          }
        )
        slots = response.parsed_response
        slots.extend Hashie::Extensions::DeepFind
        slots.deep_find_all("available").any?(true)
      end

    end
  end
end
