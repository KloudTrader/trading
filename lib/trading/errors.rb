module Trading
  module Errors
    class TradingException < Exception
      include Virtus.value_object

      values do
        attribute :type, Symbol
        attribute :code, Integer
        attribute :description, String
        attribute :messages, Array[String]
      end

      def initialize(*args)
        super
        log
      end

      def log
        Trading.logger.error to_h
      end
    end

    class LoginException < TradingException
    end

    class ConfigException < TradingException
    end

    class ConfigException < TradingException
    end

    class PositionException < TradingException
    end

    class OrderException < TradingException
    end
  end
end
