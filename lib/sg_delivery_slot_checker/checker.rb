require "sg_delivery_slot_checker/stores/fairprice"
require "sg_delivery_slot_checker/stores/giant"

module SgDeliverySlotChecker
  class Checker

    def initialize(postal_code:)
      @postal_code = postal_code.to_s
    end

    def check_availability
      {}.tap do |hash|
        stores.each do |k, v|
          hash[k] = v.new(postal_code: postal_code).available?
        end
      end
    end

    private

    attr_reader :postal_code

    def stores
      {
        fairprice: SgDeliverySlotChecker::Stores::Fairprice,
        giant: SgDeliverySlotChecker::Stores::Giant
      }
    end

  end
end
