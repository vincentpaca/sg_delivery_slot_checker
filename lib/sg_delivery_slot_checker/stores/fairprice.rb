require 'httparty'

module SgDeliverySlotChecker
  module Stores
    class Fairprice

      def initialize(postal_code:)
        @postal_code = postal_code
      end

      def available?
        if store_id
          get_availability(store: store_id)
        else
          false
        end
      end

      private

      attr_reader :postal_code

      def store_id
        response = HTTParty.get("https://website-api.omni.fairprice.com.sg/api/serviceable-area?city=Singapore&pincode=\"#{postal_code}\"")
        response.parsed_response&.dig("data", "store", "id")
      end

      def get_availability(store:)
        response = HTTParty.get("https://website-api.omni.fairprice.com.sg/api/slot-availability?address[pincode]=\"#{postal_code}\"&storeId=#{store}")
        response.parsed_response&.dig("data", "available")
      end

    end
  end
end
